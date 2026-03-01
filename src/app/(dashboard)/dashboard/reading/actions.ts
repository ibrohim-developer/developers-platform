"use server";

import { unstable_cache } from "next/cache";
import { createClient as createSupabaseClient } from "@supabase/supabase-js";
import { createClient } from "@/lib/supabase/server";

const PAGE_SIZE = 20;

interface ReadingTest {
  id: string;
  title: string;
  description: string;
  difficulty: string;
  duration: number;
  questions: number;
  passages: number;
  part: number;
  type: string;
}

/* eslint-disable @typescript-eslint/no-explicit-any */
const getReadingTests = unstable_cache(
  async (): Promise<ReadingTest[]> => {
    const supabase = createSupabaseClient(
      process.env.NEXT_PUBLIC_SUPABASE_URL!,
      process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    );

    const [{ data: passages }, { data: questionCounts }] = await Promise.all([
      supabase
        .from("reading_passages")
        .select(
          `
          id,
          test_id,
          passage_number,
          tests!inner (
            id,
            title,
            description,
            difficulty_level,
            is_published
          )
        `,
        )
        .eq("tests.is_published", true),
      supabase
        .from("questions")
        .select("section_id")
        .eq("module_type", "reading"),
    ]);

    if (!passages || passages.length === 0) {
      return [];
    }

    const questionCountMap: Record<string, number> = {};
    (questionCounts ?? []).forEach((q: any) => {
      questionCountMap[q.section_id] =
        (questionCountMap[q.section_id] || 0) + 1;
    });

    const testMap = new Map<string, any>();
    passages.forEach((passage: any) => {
      const test = passage.tests;
      if (!testMap.has(test.id)) {
        testMap.set(test.id, {
          id: test.id,
          title: test.title,
          description: test.description ?? "",
          difficulty: test.difficulty_level ?? "medium",
          duration: 20,
          questions: 0,
          passages: 0,
          part: passage.passage_number || 1,
          type: "academic",
        });
      }
      const testData = testMap.get(test.id);
      testData.passages += 1;
      testData.questions += questionCountMap[passage.id] || 0;
    });

    return Array.from(testMap.values());
  },
  ["reading-tests"],
  { revalidate: 300 },
);

export async function fetchReadingTests(
  params: Record<string, string | undefined>,
  page: number,
) {
  const allTests = await getReadingTests();

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
      .eq("module_type", "reading")
      .eq("status", "completed");
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
      if (params.type && params.type !== "all" && test.type !== params.type) {
        return false;
      }
      if (
        params.part &&
        params.part !== "all" &&
        test.part !== Number(params.part)
      ) {
        return false;
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
