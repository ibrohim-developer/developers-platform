import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

/* eslint-disable @typescript-eslint/no-explicit-any */
export async function POST(request: NextRequest) {
  const supabase = await createClient();

  const [{ data: { session } }, { testId }] = await Promise.all([
    supabase.auth.getSession(),
    request.json(),
  ]);

  if (!session?.user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  if (!testId) {
    return NextResponse.json(
      { error: "testId is required" },
      { status: 400 }
    );
  }

  // Fetch writing tasks for this test
  const { data: tasks, error: tasksError } = await supabase
    .from("writing_tasks")
    .select("id, task_number, task_type, prompt, image_url, min_words, time_limit")
    .eq("test_id", testId)
    .order("task_number");

  if (tasksError || !tasks?.length) {
    return NextResponse.json(
      { error: "No writing tasks found for this test" },
      { status: 404 }
    );
  }

  // Calculate total time limit for the test
  const totalTimeLimit = tasks.reduce((sum: number, t: any) => sum + (t.time_limit || 0), 0);

  return NextResponse.json({
    totalTimeLimit, // Total time in seconds for all tasks
    tasks: tasks.map((t: any) => ({
      id: t.id,
      taskNumber: t.task_number,
      taskType: t.task_type,
      prompt: t.prompt,
      imageUrl: t.image_url,
      minWords: t.min_words,
      timeLimit: t.time_limit,
    })),
  });
}
