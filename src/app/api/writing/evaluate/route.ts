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

  const { attemptId } = (await request.json()) as { attemptId: string };

  if (!attemptId) {
    return NextResponse.json(
      { error: "attemptId is required" },
      { status: 400 }
    );
  }

  // Verify the attempt belongs to this user and is in "evaluating" status
  const { data: attempt, error: attemptError } = await supabase
    .from("test_attempts")
    .select("id, test_id, status, user_id")
    .eq("id", attemptId)
    .single();

  if (attemptError || !attempt) {
    return NextResponse.json(
      { error: "Test attempt not found" },
      { status: 404 }
    );
  }

  if ((attempt as any).user_id !== user.id) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 403 });
  }

  if ((attempt as any).status !== "evaluating") {
    return NextResponse.json({ error: "Already evaluated" }, { status: 400 });
  }

  // Fetch writing submissions for this attempt
  const { data: submissions } = await supabase
    .from("writing_submissions")
    .select("id, task_id, content")
    .eq("attempt_id", attemptId);

  if (!submissions?.length) {
    return NextResponse.json(
      { error: "No submissions found" },
      { status: 404 }
    );
  }

  // Fetch writing tasks for prompts and metadata
  const taskIds = submissions.map((s: any) => s.task_id);
  const { data: tasks } = await supabase
    .from("writing_tasks")
    .select("id, task_number, task_type, prompt, min_words")
    .in("id", taskIds);

  if (!tasks?.length) {
    return NextResponse.json(
      { error: "Writing tasks not found" },
      { status: 404 }
    );
  }

  const taskMap = new Map(tasks.map((t: any) => [t.id, t]));

  // Evaluate all essays in parallel
  const evaluationPromises = submissions.map(async (sub: any) => {
    const task = taskMap.get(sub.task_id);
    if (!task) return { submissionId: sub.id, evaluation: null, task: null };

    const evaluation = await evaluateEssay(
      (task as any).prompt,
      (task as any).task_type,
      sub.content,
      (task as any).min_words
    );

    return { submissionId: sub.id, evaluation, task };
  });

  const results = await Promise.all(evaluationPromises);

  // Update each writing submission with scores
  for (const r of results) {
    if (!r.evaluation) continue;

    await supabase
      .from("writing_submissions")
      .update({
        task_achievement_score: r.evaluation.taskAchievementScore,
        coherence_score: r.evaluation.coherenceScore,
        lexical_score: r.evaluation.lexicalScore,
        grammar_score: r.evaluation.grammarScore,
        overall_band_score: r.evaluation.overallBandScore,
        feedback: r.evaluation.feedback,
      } as any)
      .eq("id", r.submissionId);
  }

  // Calculate overall band score
  const scoredResults = results.filter((r) => r.evaluation !== null);
  let bandScore: number | null = null;

  if (scoredResults.length > 0) {
    if (scoredResults.length === 1) {
      bandScore = scoredResults[0].evaluation!.overallBandScore;
    } else {
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

  // Update attempt to completed with band score
  await supabase
    .from("test_attempts")
    .update({
      status: "completed",
      band_score: bandScore,
    } as any)
    .eq("id", attemptId);

  return NextResponse.json({ success: true, bandScore });
}
