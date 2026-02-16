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

  const { testId } = await request.json();

  if (!testId) {
    return NextResponse.json({ error: "testId is required" }, { status: 400 });
  }

  // Create a new test attempt
  const { data: attempt, error: attemptError } = await supabase
    .from("test_attempts")
    .insert({
      user_id: user.id,
      test_id: testId,
      module_type: "listening",
      status: "in_progress",
    } as any)
    .select("id")
    .single();

  if (attemptError || !attempt) {
    return NextResponse.json(
      { error: "Failed to create test attempt" },
      { status: 500 }
    );
  }

  // Fetch listening sections for this test
  const { data: sections, error: sectionsError } = await supabase
    .from("listening_sections")
    .select("id, section_number, audio_url, audio_duration_seconds, transcript, time_limit")
    .eq("test_id", testId)
    .order("section_number");

  if (sectionsError || !sections?.length) {
    return NextResponse.json(
      { error: "No sections found for this test" },
      { status: 404 }
    );
  }

  // Fetch questions for all sections (section_id references listening_sections id)
  const sectionIds = sections.map((s: any) => s.id);
  const { data: questions, error: questionsError } = await supabase
    .from("questions")
    .select(
      "id, section_id, question_number, question_type, question_text, options, metadata"
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

  // Group questions by section and build response
  const sectionsWithQuestions = sections.map((section: any) => ({
    id: section.id,
    sectionNumber: section.section_number,
    audioUrl: section.audio_url,
    audioDurationSeconds: section.audio_duration_seconds,
    transcript: section.transcript,
    timeLimit: section.time_limit,
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

  // Calculate total time limit for the test
  const totalTimeLimit = sections.reduce((sum: number, s: any) => sum + (s.time_limit || 0), 0);

  return NextResponse.json({
    attemptId: (attempt as any).id,
    totalTimeLimit, // Total time in seconds for all sections
    sections: sectionsWithQuestions,
  });
}
