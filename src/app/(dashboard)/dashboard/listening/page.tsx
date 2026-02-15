import Link from "next/link";
import { Clock, HelpCircle, Headphones } from "lucide-react";
import { unstable_cache } from "next/cache";
import { createClient as createSupabaseClient } from "@supabase/supabase-js";
import { DifficultyDots } from "@/components/test/common/difficulty-dots";
import { TestFilters } from "@/components/test/common/test-filters";

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

const listeningFilters = [
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
    key: "sections",
    placeholder: "All Sections",
    options: [
      { value: "all", label: "All Sections" },
      { value: "1", label: "Section 1" },
      { value: "2", label: "Section 2" },
      { value: "3", label: "Section 3" },
      { value: "4", label: "Section 4" },
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

export default async function ListeningTestsPage({
  searchParams,
}: {
  searchParams: Promise<{ [key: string]: string | undefined }>;
}) {
  const params = await searchParams;
  const allTests = await getListeningTests();

  const listeningTests = allTests.filter((test) => {
    if (params.q && !test.title.toLowerCase().includes(params.q.toLowerCase())) {
      return false;
    }
    if (params.difficulty && params.difficulty !== "all" && test.difficulty !== params.difficulty) {
      return false;
    }
    if (params.sections && params.sections !== "all" && test.sections !== Number(params.sections)) {
      return false;
    }
    return true;
  });

  return (
    <div className="space-y-8 pb-12">
      <TestFilters filters={listeningFilters} />

      <div className="flex items-end justify-between">
        <div>
          <h2 className="text-3xl font-black mb-1">Listening Challenge</h2>
          <p className="text-xs text-muted-foreground font-bold uppercase tracking-widest">
            {listeningTests.length} Available Tests
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
        {listeningTests.length > 0 ? (
          listeningTests.map((test, index) => (
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
                  {test.sections} Sections
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
              <Link
                href={`/dashboard/listening/${test.id}`}
                className="bg-primary text-primary-foreground px-8 py-3 rounded-lg font-black text-xs tracking-widest hover:opacity-90 transition-all uppercase"
              >
                Start Test
              </Link>
            </div>
          ))
        ) : (
          <div className="bg-card border border-border rounded-xl p-12 text-center">
            <p className="text-muted-foreground">
              No listening tests available yet.
            </p>
          </div>
        )}
      </div>
    </div>
  );
}
