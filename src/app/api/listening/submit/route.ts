import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";
import { calculateBandScore } from "@/lib/constants/test-config";

/* eslint-disable @typescript-eslint/no-explicit-any */
export async function POST(request: NextRequest) {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const { attemptId, answers, timeSpentSeconds } = (await request.json()) as {
    attemptId: string;
    answers: Record<string, string>;
    timeSpentSeconds: number;
  };

  if (!attemptId || !answers) {
    return NextResponse.json(
      { error: "attemptId and answers are required" },
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

  // Fetch correct answers for all answered questions
  const questionIds = Object.keys(answers);
  const { data: questions, error: questionsError } = await supabase
    .from("questions")
    .select("id, correct_answer")
    .in("id", questionIds);

  if (questionsError || !questions) {
    return NextResponse.json(
      { error: "Failed to fetch questions" },
      { status: 500 }
    );
  }

  // Build a map of correct answers
  const correctAnswerMap = new Map(
    questions.map((q: any) => [q.id, q.correct_answer])
  );

  // Score each answer and prepare user_answers rows
  let rawScore = 0;
  const userAnswerRows = questionIds.map((questionId) => {
    const userAnswer = answers[questionId];
    const correctAnswer = correctAnswerMap.get(questionId);
    const isCorrect =
      correctAnswer !== undefined &&
      userAnswer.trim().toLowerCase() === correctAnswer.trim().toLowerCase();

    if (isCorrect) rawScore++;

    return {
      attempt_id: attemptId,
      question_id: questionId,
      user_answer: userAnswer,
      is_correct: isCorrect,
      points_earned: isCorrect ? 1 : 0,
    };
  });

  // Insert all user answers
  const { error: insertError } = await supabase
    .from("user_answers")
    .insert(userAnswerRows as any);

  if (insertError) {
    return NextResponse.json(
      { error: "Failed to save answers" },
      { status: 500 }
    );
  }

  // Calculate band score
  const bandScore = calculateBandScore(rawScore);

  // Update the test attempt
  const updatePayload: any = {
    status: "completed",
    raw_score: rawScore,
    band_score: bandScore,
    completed_at: new Date().toISOString(),
    time_spent_seconds: timeSpentSeconds,
  };
  const { error: updateError } = await (supabase as any)
    .from("test_attempts")
    .update(updatePayload)
    .eq("id", attemptId);

  if (updateError) {
    return NextResponse.json(
      { error: "Failed to update test attempt" },
      { status: 500 }
    );
  }

  return NextResponse.json({
    attemptId,
    rawScore,
    bandScore,
    totalQuestions: questionIds.length,
  });
}
