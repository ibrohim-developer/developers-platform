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

  const { testId, answers, timeSpentSeconds } = (await request.json()) as {
    testId: string;
    answers: Record<string, string>;
    timeSpentSeconds: number;
  };

  if (!testId || !answers) {
    return NextResponse.json(
      { error: "testId and answers are required" },
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

  // Normalize answer for comparison (handles comma-separated multi-answers)
  const normalizeAnswer = (answer: string) =>
    answer.split(',').map((s) => s.trim().toLowerCase()).sort().join(',');

  // Score each answer
  let rawScore = 0;
  const scoredAnswers = questionIds.map((questionId) => {
    const userAnswer = answers[questionId];
    const correctAnswer = correctAnswerMap.get(questionId);
    const isCorrect =
      correctAnswer !== undefined &&
      normalizeAnswer(userAnswer) === normalizeAnswer(correctAnswer);

    if (isCorrect) rawScore++;

    return { questionId, userAnswer, isCorrect };
  });

  // Calculate band score
  const bandScore = calculateBandScore(rawScore);

  // Create the test attempt as completed
  const { data: attempt, error: attemptError } = await supabase
    .from("test_attempts")
    .insert({
      user_id: user.id,
      test_id: testId,
      module_type: "listening",
      status: "completed",
      raw_score: rawScore,
      band_score: bandScore,
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

  // Insert all user answers
  const userAnswerRows = scoredAnswers.map((sa) => ({
    attempt_id: attemptId,
    question_id: sa.questionId,
    user_answer: sa.userAnswer,
    is_correct: sa.isCorrect,
    points_earned: sa.isCorrect ? 1 : 0,
  }));

  const { error: insertError } = await supabase
    .from("user_answers")
    .insert(userAnswerRows as any);

  if (insertError) {
    return NextResponse.json(
      { error: "Failed to save answers" },
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
