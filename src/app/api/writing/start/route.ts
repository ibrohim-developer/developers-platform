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
    return NextResponse.json(
      { error: "testId is required" },
      { status: 400 }
    );
  }

  // Create a new test attempt
  const { data: attempt, error: attemptError } = await supabase
    .from("test_attempts")
    .insert({
      user_id: user.id,
      test_id: testId,
      module_type: "writing",
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

  // Fetch writing tasks for this test
  const { data: tasks, error: tasksError } = await supabase
    .from("writing_tasks")
    .select("id, task_number, task_type, prompt, image_url, min_words")
    .eq("test_id", testId)
    .order("task_number");

  if (tasksError || !tasks?.length) {
    return NextResponse.json(
      { error: "No writing tasks found for this test" },
      { status: 404 }
    );
  }

  return NextResponse.json({
    attemptId: (attempt as any).id,
    tasks: tasks.map((t: any) => ({
      id: t.id,
      taskNumber: t.task_number,
      taskType: t.task_type,
      prompt: t.prompt,
      imageUrl: t.image_url,
      minWords: t.min_words,
    })),
  });
}
