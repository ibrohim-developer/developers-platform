"use server";

import { unstable_cache } from "next/cache";
import { createClient as createSupabaseClient } from "@supabase/supabase-js";
import { createClient } from "@/lib/supabase/server";

const PAGE_SIZE = 20;

interface ListeningTest {
  id: string;
  title: string;
  description: string;
  difficulty: string;
  duration: number;
  questions: number;
  sections: number;
}

/* eslint-disable @typescript-eslint/no-explicit-any */
const getListeningTests = unstable_cache(
  async (): Promise<ListeningTest[]> => {
    const supabase = createSupabaseClient(
      process.env.NEXT_PUBLIC_SUPABASE_URL!,
      process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    );

    const [{ data: sections }, { data: questionCounts }] = await Promise.all([
      supabase
        .from("listening_sections")
        .select(
          `
          id,
          test_id,
          section_number,
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
        .eq("module_type", "listening"),
    ]);

    if (!sections || sections.length === 0) {
      return [];
    }

    const questionCountMap: Record<string, number> = {};
    (questionCounts ?? []).forEach((q: any) => {
      questionCountMap[q.section_id] =
        (questionCountMap[q.section_id] || 0) + 1;
    });

    const testMap = new Map<string, any>();
    sections.forEach((section: any) => {
      const test = section.tests;
      if (!testMap.has(test.id)) {
        testMap.set(test.id, {
          id: test.id,
          title: test.title,
          description: test.description ?? "",
          difficulty: test.difficulty_level ?? "medium",
          duration: 30,
          questions: 0,
          sections: 0,
        });
      }
      const testData = testMap.get(test.id);
      testData.sections += 1;
      testData.questions += questionCountMap[section.id] || 0;
    });

    return Array.from(testMap.values());
  },
  ["listening-tests"],
  { revalidate: 300 },
);

export async function fetchListeningTests(
  params: Record<string, string | undefined>,
  page: number,
) {
  const allTests = await getListeningTests();

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
      .eq("module_type", "listening")
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
      if (
        params.sections &&
        params.sections !== "all" &&
        test.sections !== Number(params.sections)
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
