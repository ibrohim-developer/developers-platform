import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";
import { evaluateEssay } from "@/lib/evaluate-essay";

export const maxDuration = 120;

/* eslint-disable @typescript-eslint/no-explicit-any */
export async function POST(request: NextRequest) {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const { attemptId, submissions, timeSpentSeconds } = (await request.json()) as {
    attemptId: string;
    submissions: Array<{ taskId: string; content: string }>;
    timeSpentSeconds: number;
  };

  if (!attemptId || !submissions?.length) {
    return NextResponse.json(
      { error: "attemptId and submissions are required" },
      { status: 400 }
    );
  }

  // Verify attempt belongs to user and is in progress
  const { data: attempt, error: attemptError } = await supabase
    .from("test_attempts")
    .select("id, user_id, status")
    .eq("id", attemptId)
    .eq("user_id", user.id)
    .single();

  if (attemptError || !attempt) {
    return NextResponse.json(
      { error: "Test attempt not found" },
      { status: 404 }
    );
  }

  if ((attempt as any).status !== "in_progress") {
    return NextResponse.json(
      { error: "Test attempt already completed" },
      { status: 400 }
    );
  }

  // Fetch writing tasks to get prompts and min_words for evaluation
  const taskIds = submissions.map((s) => s.taskId);
  const { data: tasks, error: tasksError } = await supabase
    .from("writing_tasks")
    .select("id, task_number, task_type, prompt, min_words")
    .in("id", taskIds);

  if (tasksError || !tasks?.length) {
    return NextResponse.json(
      { error: "Writing tasks not found" },
      { status: 404 }
    );
  }

  const taskMap = new Map(tasks.map((t: any) => [t.id, t]));

  // Evaluate all essays in parallel
  const evaluationPromises = submissions.map(async (sub) => {
    const task = taskMap.get(sub.taskId);
    if (!task) return { submission: sub, evaluation: null, task: null };

    const wordCount = sub.content
      .trim()
      .split(/\s+/)
      .filter((w: string) => w).length;

    const evaluation = await evaluateEssay(
      (task as any).prompt,
      (task as any).task_type,
      sub.content,
      (task as any).min_words
    );

    return { submission: sub, evaluation, task, wordCount };
  });

  const results = await Promise.all(evaluationPromises);

  // Build writing_submissions rows
  const submissionRows = results.map((r) => ({
    attempt_id: attemptId,
    task_id: r.submission.taskId,
    content: r.submission.content,
    word_count: r.wordCount || 0,
    task_achievement_score: r.evaluation?.taskAchievementScore ?? null,
    coherence_score: r.evaluation?.coherenceScore ?? null,
    lexical_score: r.evaluation?.lexicalScore ?? null,
    grammar_score: r.evaluation?.grammarScore ?? null,
    overall_band_score: r.evaluation?.overallBandScore ?? null,
    feedback: r.evaluation?.feedback ?? null,
  }));

  // Insert all writing submissions
  const { error: insertError } = await supabase
    .from("writing_submissions")
    .insert(submissionRows as any);

  if (insertError) {
    return NextResponse.json(
      { error: "Failed to save submissions" },
      { status: 500 }
    );
  }

  // Calculate overall band score
  // IELTS writing: Task 2 counts double => (task1 + task2*2) / 3
  const scoredResults = results.filter((r) => r.evaluation !== null);
  let bandScore: number | null = null;

  if (scoredResults.length > 0) {
    if (scoredResults.length === 1) {
      bandScore = scoredResults[0].evaluation!.overallBandScore;
    } else {
      // Sort by task number to identify task1 and task2
      const sorted = scoredResults.sort(
        (a, b) =>
          ((a.task as any)?.task_number ?? 0) -
          ((b.task as any)?.task_number ?? 0)
      );
      const task1Band = sorted[0].evaluation!.overallBandScore;
      const task2Band = sorted[1].evaluation!.overallBandScore;
      const weighted = (task1Band + task2Band * 2) / 3;
      bandScore = Math.round(weighted * 2) / 2;
    }
  }

  // Update the test attempt
  const { error: updateError } = await (supabase as any)
    .from("test_attempts")
    .update({
      status: "completed",
      band_score: bandScore,
      completed_at: new Date().toISOString(),
      time_spent_seconds: timeSpentSeconds,
    })
    .eq("id", attemptId);

  if (updateError) {
    return NextResponse.json(
      { error: "Failed to update test attempt" },
      { status: 500 }
    );
  }

  return NextResponse.json({
    attemptId,
    bandScore,
    submissions: results.map((r) => ({
      taskId: r.submission.taskId,
      overallBandScore: r.evaluation?.overallBandScore ?? null,
      feedback: r.evaluation?.feedback ?? null,
    })),
  });
}
