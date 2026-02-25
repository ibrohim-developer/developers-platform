import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

/* eslint-disable @typescript-eslint/no-explicit-any */
export async function POST(request: NextRequest) {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const { testId, submissions, timeSpentSeconds } = (await request.json()) as {
    testId: string;
    submissions: Array<{ taskId: string; content: string }>;
    timeSpentSeconds: number;
  };

  if (!testId || !submissions?.length) {
    return NextResponse.json(
      { error: "testId and submissions are required" },
      { status: 400 }
    );
  }

  // Create the test attempt with "evaluating" status
  const { data: attempt, error: attemptError } = await supabase
    .from("test_attempts")
    .insert({
      user_id: user.id,
      test_id: testId,
      module_type: "writing",
      status: "evaluating",
      band_score: null,
      completed_at: new Date().toISOString(),
      time_spent_seconds: timeSpentSeconds,
    } as any)
    .select("id")
    .single();

  if (attemptError || !attempt) {
    return NextResponse.json(
      { error: "Failed to create test attempt" },
      { status: 500 }
    );
  }

  const attemptId = (attempt as any).id;

  // Save writing submissions with null scores (evaluation happens async)
  const submissionRows = submissions.map((sub) => {
    const wordCount = sub.content
      .trim()
      .split(/\s+/)
      .filter((w: string) => w).length;

    return {
      attempt_id: attemptId,
      task_id: sub.taskId,
      content: sub.content,
      word_count: wordCount,
      task_achievement_score: null,
      coherence_score: null,
      lexical_score: null,
      grammar_score: null,
      overall_band_score: null,
      feedback: null,
    };
  });

  const { error: insertError } = await supabase
    .from("writing_submissions")
    .insert(submissionRows as any);

  if (insertError) {
    return NextResponse.json(
      { error: "Failed to save submissions" },
      { status: 500 }
    );
  }

  return NextResponse.json({ attemptId });
}
