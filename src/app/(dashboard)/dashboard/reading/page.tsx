import Link from "@/components/no-prefetch-link";
import { Clock, HelpCircle } from "lucide-react";
import { unstable_cache } from "next/cache";
import { createClient as createSupabaseClient } from "@supabase/supabase-js";
import { DifficultyDots } from "@/components/test/common/difficulty-dots";
import { TestFilters } from "@/components/test/common/test-filters";
import { LoginRequiredLink } from "@/components/auth/login-required-link";

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

const readingFilters = [
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
    key: "type",
    placeholder: "All Types",
    options: [
      { value: "all", label: "All Types" },
      { value: "academic", label: "Academic" },
      { value: "general", label: "General" },
    ],
  },
  {
    key: "part",
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

export default async function ReadingTestsPage({
  searchParams,
}: {
  searchParams: Promise<{ [key: string]: string | undefined }>;
}) {
  const params = await searchParams;
  const allTests = await getReadingTests();

  const readingTests = allTests.filter((test) => {
    if (params.q && !test.title.toLowerCase().includes(params.q.toLowerCase())) {
      return false;
    }
    if (params.difficulty && params.difficulty !== "all" && test.difficulty !== params.difficulty) {
      return false;
    }
    if (params.type && params.type !== "all" && test.type !== params.type) {
      return false;
    }
    if (params.part && params.part !== "all" && test.part !== Number(params.part)) {
      return false;
    }
    return true;
  });

  return (
    <div className="space-y-8 pb-12">
      <TestFilters filters={readingFilters} />

      <div className="flex items-end justify-between">
        <div>
          <h2 className="text-3xl font-black mb-1">Reading Challenge</h2>
          <p className="text-xs text-muted-foreground font-bold uppercase tracking-widest">
            {readingTests.length} Available Tests
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
        {readingTests.length > 0 ? (
          readingTests.map((test, index) => (
            <div
              key={test.id}
              className="bg-card border border-border p-6 rounded-xl flex items-center justify-between"
            >
              <div className="flex-1">
                <div className="flex items-center gap-3 mb-2">
                  <h3 className="text-xl font-bold">
                    Day {index + 1}: {test.title}
                  </h3>
                </div>
                <p className="text-[11px] text-muted-foreground font-bold uppercase mb-4">
                  Part {test.part} -{" "}
                  {test.type.charAt(0).toUpperCase() + test.type.slice(1)}
                </p>
                <div className="flex items-center gap-6 text-xs font-bold text-muted-foreground">
                  <DifficultyDots difficulty={test.difficulty} />
                  <span className="flex items-center gap-1.5">
                    <Clock className="h-4 w-4" />
                    {test.duration} mins
                  </span>
                  <span className="flex items-center gap-1.5">
                    <HelpCircle className="h-4 w-4" />
                    {test.questions} questions
                  </span>
                </div>
              </div>
              <LoginRequiredLink
                href={`/dashboard/reading/${test.id}`}
                className="bg-primary text-primary-foreground px-8 py-3 rounded-lg font-black text-xs tracking-widest hover:opacity-90 transition-all uppercase"
              >
                Start Test
              </LoginRequiredLink>
            </div>
          ))
        ) : (
          <div className="bg-card border border-border rounded-xl p-12 text-center">
            <p className="text-muted-foreground">
              No reading tests available yet.
            </p>
          </div>
        )}
      </div>
    </div>
  );
}
