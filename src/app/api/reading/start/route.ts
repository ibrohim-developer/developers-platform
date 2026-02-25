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

  // Fetch reading passages for this test
  const { data: passages, error: passagesError } = await supabase
    .from("reading_passages")
    .select("id, passage_number, title, content, word_count, time_limit")
    .eq("test_id", testId)
    .order("passage_number");

  if (passagesError || !passages?.length) {
    return NextResponse.json(
      { error: "No passages found for this test" },
      { status: 404 }
    );
  }

  // Fetch questions for all passages (section_id references passage id)
  const passageIds = passages.map((p: any) => p.id);
  const { data: questions, error: questionsError } = await supabase
    .from("questions")
    .select(
      "id, section_id, question_number, question_type, question_text, options, metadata"
    )
    .eq("module_type", "reading")
    .in("section_id", passageIds)
    .order("question_number");

  if (questionsError) {
    return NextResponse.json(
      { error: "Failed to fetch questions" },
      { status: 500 }
    );
  }

  // Group questions by passage and build response
  const passagesWithQuestions = passages.map((passage: any) => ({
    id: passage.id,
    passageNumber: passage.passage_number,
    title: passage.title,
    content: passage.content,
    wordCount: passage.word_count,
    timeLimit: passage.time_limit,
    questions: (questions ?? [])
      .filter((q: any) => q.section_id === passage.id)
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
  const totalTimeLimit = passages.reduce((sum: number, p: any) => sum + (p.time_limit || 0), 0);

  return NextResponse.json({
    totalTimeLimit, // Total time in seconds for all passages
    passages: passagesWithQuestions,
  });
}
