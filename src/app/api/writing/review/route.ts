import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

/* eslint-disable @typescript-eslint/no-explicit-any */
export async function GET(request: NextRequest) {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const { searchParams } = new URL(request.url);
  const attemptId = searchParams.get("attemptId");

  if (!attemptId) {
    return NextResponse.json(
      { error: "attemptId is required" },
      { status: 400 }
    );
  }

  // Fetch the test attempt
  const { data: attempt, error: attemptError } = await supabase
    .from("test_attempts")
    .select("*")
    .eq("id", attemptId)
    .eq("user_id", user.id)
    .single();

  if (attemptError || !attempt) {
    return NextResponse.json(
      { error: "Test attempt not found" },
      { status: 404 }
    );
  }

  // Fetch writing tasks for this test
  const { data: tasks, error: tasksError } = await supabase
    .from("writing_tasks")
    .select("id, task_number, task_type, prompt, image_url, min_words, sample_answer")
    .eq("test_id", (attempt as any).test_id)
    .order("task_number");

  if (tasksError) {
    return NextResponse.json(
      { error: "Failed to fetch writing tasks" },
      { status: 500 }
    );
  }

  // Fetch writing submissions for this attempt
  const { data: submissions, error: submissionsError } = await supabase
    .from("writing_submissions")
    .select("*")
    .eq("attempt_id", attemptId);

  if (submissionsError) {
    return NextResponse.json(
      { error: "Failed to fetch submissions" },
      { status: 500 }
    );
  }

  return NextResponse.json({
    attempt: {
      id: (attempt as any).id,
      testId: (attempt as any).test_id,
      moduleType: (attempt as any).module_type,
      status: (attempt as any).status,
      bandScore: (attempt as any).band_score,
      timeSpentSeconds: (attempt as any).time_spent_seconds,
      completedAt: (attempt as any).completed_at,
    },
    tasks: (tasks ?? []).map((t: any) => ({
      id: t.id,
      taskNumber: t.task_number,
      taskType: t.task_type,
      prompt: t.prompt,
      imageUrl: t.image_url,
      minWords: t.min_words,
      sampleAnswer: t.sample_answer,
    })),
    submissions: (submissions ?? []).map((s: any) => ({
      id: s.id,
      taskId: s.task_id,
      content: s.content,
      wordCount: s.word_count,
      taskAchievementScore: s.task_achievement_score,
      coherenceScore: s.coherence_score,
      lexicalScore: s.lexical_score,
      grammarScore: s.grammar_score,
      overallBandScore: s.overall_band_score,
      feedback: s.feedback,
    })),
  });
}
