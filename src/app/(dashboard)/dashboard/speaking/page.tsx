import Link from "next/link";
import { Clock, MessageSquare } from "lucide-react";
import { unstable_cache } from "next/cache";
import { createClient as createSupabaseClient } from "@supabase/supabase-js";
import { DifficultyDots } from "@/components/test/common/difficulty-dots";
import { TestFilters } from "@/components/test/common/test-filters";

interface SpeakingTest {
  id: string;
  title: string;
  description: string;
  difficulty: string;
  duration: number;
  parts: number;
}

/* eslint-disable @typescript-eslint/no-explicit-any */
const getSpeakingTests = unstable_cache(
  async (): Promise<SpeakingTest[]> => {
    const supabase = createSupabaseClient(
      process.env.NEXT_PUBLIC_SUPABASE_URL!,
      process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    );

    const { data: topics } = await supabase
      .from("speaking_topics")
      .select(
        `
        id,
        test_id,
        part_number,
        speaking_time_seconds,
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

    if (!topics || topics.length === 0) {
      return [];
    }

    const testMap = new Map<string, any>();
    topics.forEach((topic: any) => {
      const test = topic.tests;
      if (!testMap.has(test.id)) {
        testMap.set(test.id, {
          id: test.id,
          title: test.title,
          description: test.description ?? "",
          difficulty: test.difficulty_level ?? "medium",
          duration: 0,
          parts: 0,
        });
      }
      const testData = testMap.get(test.id);
      testData.parts += 1;
      testData.duration += Math.round(
        (topic.speaking_time_seconds || 120) / 60,
      );
    });

    return Array.from(testMap.values());
  },
  ["speaking-tests"],
  { revalidate: 300 },
);

const speakingFilters = [
  {
    key: "difficulty",
    placeholder: "All Levels",
    options: [
      { value: "all", label: "All Levels" },
      { value: "easy", label: "Easy" },
      { value: "medium", label: "Medium" },
      { value: "hard", label: "Hard" },
    ],
  },
  {
    key: "parts",
    placeholder: "All Parts",
    options: [
      { value: "all", label: "All Parts" },
      { value: "1", label: "Part 1" },
      { value: "2", label: "Part 2" },
      { value: "3", label: "Part 3" },
    ],
  },
  {
    key: "status",
    placeholder: "All Status",
    options: [
      { value: "all", label: "All Status" },
      { value: "new", label: "New" },
      { value: "completed", label: "Completed" },
    ],
  },
];

export default async function SpeakingTestsPage({
  searchParams,
}: {
  searchParams: Promise<{ [key: string]: string | undefined }>;
}) {
  const params = await searchParams;
  const allTests = await getSpeakingTests();

  const speakingTests = allTests.filter((test) => {
    if (params.q && !test.title.toLowerCase().includes(params.q.toLowerCase())) {
      return false;
    }
    if (params.difficulty && params.difficulty !== "all" && test.difficulty !== params.difficulty) {
      return false;
    }
    if (params.parts && params.parts !== "all" && test.parts !== Number(params.parts)) {
      return false;
    }
    return true;
  });

  return (
    <div className="space-y-8 pb-12">
      <TestFilters filters={speakingFilters} />

      <div className="flex items-end justify-between">
        <div>
          <h2 className="text-3xl font-black mb-1">Speaking Challenge</h2>
          <p className="text-xs text-muted-foreground font-bold uppercase tracking-widest">
            {speakingTests.length} Available Tests
          </p>
        </div>
        <Link
          href="/dashboard/history"
          className="flex items-center gap-2 text-xs font-bold px-4 py-2 border border-border rounded-lg hover:bg-card transition-colors"
        >
          <Clock className="h-3.5 w-3.5" />
          Completed Tests
        </Link>
      </div>

      <div className="space-y-4">
        {speakingTests.length > 0 ? (
          speakingTests.map((test, index) => (
            <div
              key={test.id}
              className="bg-card border border-border p-6 rounded-xl flex items-center justify-between"
            >
              <div className="flex-1">
                <div className="flex items-center gap-3 mb-2">
                  <h3 className="text-lg font-black">
                    Day {index + 1}: {test.title}
                  </h3>
                </div>
                <p className="text-[11px] text-muted-foreground font-bold uppercase mb-4">
                  {test.parts} Parts - AI Feedback
                </p>
                <div className="flex items-center gap-8 text-xs font-bold text-muted-foreground">
                  <DifficultyDots difficulty={test.difficulty} />
                  <span className="flex items-center gap-1.5">
                    <Clock className="h-4 w-4" />
                    {test.duration} mins
                  </span>
                  <span className="flex items-center gap-1.5">
                    <MessageSquare className="h-4 w-4" />
                    {test.parts} parts
                  </span>
                </div>
              </div>
              <Link
                href={`/dashboard/speaking/${test.id}`}
                className="bg-primary text-primary-foreground px-8 py-3 rounded-lg font-black text-xs tracking-widest hover:opacity-90 transition-all uppercase"
              >
                Start Test
              </Link>
            </div>
          ))
        ) : (
          <div className="bg-card border border-border rounded-xl p-12 text-center">
            <p className="text-muted-foreground">
              No speaking tests available yet.
            </p>
          </div>
        )}
      </div>
    </div>
  );
}
