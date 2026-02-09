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

  // Fetch the test attempt (includes test_id)
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

  // Fetch ALL listening sections for this test
  const { data: sections, error: sectionsError } = await supabase
    .from("listening_sections")
    .select("id, section_number, audio_url, audio_duration_seconds, transcript")
    .eq("test_id", attempt.test_id)
    .order("section_number");

  if (sectionsError) {
    return NextResponse.json(
      { error: "Failed to fetch sections" },
      { status: 500 }
    );
  }

  // Fetch ALL questions for all sections
  const sectionIds = (sections ?? []).map((s: any) => s.id);
  const { data: questions, error: questionsError } = await supabase
    .from("questions")
    .select(
      "id, section_id, question_number, question_type, question_text, options, metadata, correct_answer"
    )
    .eq("module_type", "listening")
    .in("section_id", sectionIds)
    .order("question_number");

  if (questionsError) {
    return NextResponse.json(
      { error: "Failed to fetch questions" },
      { status: 500 }
    );
  }

  // Fetch user answers for this attempt
  const { data: userAnswers, error: answersError } = await supabase
    .from("user_answers")
    .select("id, question_id, user_answer, is_correct")
    .eq("attempt_id", attemptId);

  if (answersError) {
    return NextResponse.json(
      { error: "Failed to fetch user answers" },
      { status: 500 }
    );
  }

  // Build a map of user answers by question_id
  const userAnswersMap = new Map(
    (userAnswers ?? []).map((ua: any) => [ua.question_id, ua])
  );

  // Build enriched user answers for ALL questions (answered + unanswered)
  const enrichedUserAnswers = (questions ?? []).map((q: any) => {
    const ua = userAnswersMap.get(q.id);
    return {
      question_id: q.id,
      user_answer: ua?.user_answer || "",
      is_correct: ua?.is_correct ?? false,
      correct_answer: q.correct_answer || "",
    };
  });

  // Group questions by section
  const sectionsWithQuestions = (sections ?? []).map((section: any) => ({
    id: section.id,
    sectionNumber: section.section_number,
    audioUrl: section.audio_url,
    audioDurationSeconds: section.audio_duration_seconds,
    transcript: section.transcript,
    questions: (questions ?? [])
      .filter((q: any) => q.section_id === section.id)
      .map((q: any) => ({
        id: q.id,
        questionNumber: q.question_number,
        type: q.question_type,
        text: q.question_text,
        options: q.options,
        metadata: q.metadata,
      })),
  }));

  return NextResponse.json({
    sections: sectionsWithQuestions,
    userAnswers: enrichedUserAnswers,
  });
}
