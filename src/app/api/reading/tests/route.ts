import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

/* eslint-disable @typescript-eslint/no-explicit-any */
export async function GET() {
  const supabase = await createClient();

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
    return NextResponse.json([]);
  }

  const questionCountMap: Record<string, number> = {};
  (questionCounts ?? []).forEach((q: any) => {
    questionCountMap[q.section_id] = (questionCountMap[q.section_id] || 0) + 1;
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

  return NextResponse.json(Array.from(testMap.values()), {
    headers: {
      'Cache-Control': 'public, s-maxage=3600, stale-while-revalidate=86400',
    },
  });
}
