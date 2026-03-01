"use server";

import { unstable_cache } from "next/cache";
import { createClient as createSupabaseClient } from "@supabase/supabase-js";
import { createClient } from "@/lib/supabase/server";

const PAGE_SIZE = 20;

interface WritingTest {
  id: string;
  title: string;
  description: string;
  difficulty: string;
  duration: number;
  tasks: number;
}

/* eslint-disable @typescript-eslint/no-explicit-any */
const getWritingTests = unstable_cache(
  async (): Promise<WritingTest[]> => {
    const supabase = createSupabaseClient(
      process.env.NEXT_PUBLIC_SUPABASE_URL!,
      process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    );

    const { data: tasks } = await supabase
      .from("writing_tasks")
      .select(
        `
        id,
        test_id,
        tests!inner (
          id,
          title,
          description,
          difficulty_level,
          is_published
        )
      `,
      )
      .eq("tests.is_published", true);

    if (!tasks || tasks.length === 0) {
      return [];
    }

    const testMap = new Map<string, any>();
    tasks.forEach((task: any) => {
      const test = task.tests;
      if (!testMap.has(test.id)) {
        testMap.set(test.id, {
          id: test.id,
          title: test.title,
          description: test.description ?? "",
          difficulty: test.difficulty_level ?? "medium",
          duration: 60,
          tasks: 0,
        });
      }
      const testData = testMap.get(test.id);
      testData.tasks += 1;
    });

    return Array.from(testMap.values());
  },
  ["writing-tests"],
  { revalidate: 300 },
);

export async function fetchWritingTests(
  params: Record<string, string | undefined>,
  page: number,
) {
  const allTests = await getWritingTests();

  const completedTestIds = new Set<string>();
  const supabase = await createClient();
  const {
    data: { session },
  } = await supabase.auth.getSession();
  if (session?.user) {
    const { data: attempts } = await supabase
      .from("test_attempts")
      .select("test_id")
      .eq("user_id", session.user.id)
      .eq("module_type", "writing")
      .in("status", ["completed", "evaluating"] as any);
    attempts?.forEach((a) => completedTestIds.add(a.test_id));
  }

  const filtered = allTests
    .map((test) => ({ ...test, isCompleted: completedTestIds.has(test.id) }))
    .filter((test) => {
      if (
        params.q &&
        !test.title.toLowerCase().includes(params.q.toLowerCase())
      ) {
        return false;
      }
      if (
        params.difficulty &&
        params.difficulty !== "all" &&
        test.difficulty !== params.difficulty
      ) {
        return false;
      }
      if (params.task && params.task !== "all") {
        const taskNum = Number(params.task.replace("task", ""));
        if (test.tasks !== taskNum) return false;
      }
      if (params.status && params.status !== "all") {
        if (params.status === "completed" && !test.isCompleted) return false;
        if (params.status === "new" && test.isCompleted) return false;
      }
      return true;
    });

  const start = page * PAGE_SIZE;
  const items = filtered.slice(start, start + PAGE_SIZE);

  return {
    items,
    totalCount: filtered.length,
    hasMore: start + PAGE_SIZE < filtered.length,
  };
}
