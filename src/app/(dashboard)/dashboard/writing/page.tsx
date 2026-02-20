import Link from "@/components/no-prefetch-link";
import { Clock, FileText } from "lucide-react";
import { unstable_cache } from "next/cache";
import { createClient as createSupabaseClient } from "@supabase/supabase-js";
import { DifficultyDots } from "@/components/test/common/difficulty-dots";
import { TestFilters } from "@/components/test/common/test-filters";

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

const writingFilters = [
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
    key: "task",
    placeholder: "All Tasks",
    options: [
      { value: "all", label: "All Tasks" },
      { value: "task1", label: "Task 1" },
      { value: "task2", label: "Task 2" },
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

export default async function WritingTestsPage({
  searchParams,
}: {
  searchParams: Promise<{ [key: string]: string | undefined }>;
}) {
  const params = await searchParams;
  const allTests = await getWritingTests();

  const writingTests = allTests.filter((test) => {
    if (params.q && !test.title.toLowerCase().includes(params.q.toLowerCase())) {
      return false;
    }
    if (params.difficulty && params.difficulty !== "all" && test.difficulty !== params.difficulty) {
      return false;
    }
    if (params.task && params.task !== "all") {
      const taskNum = Number(params.task.replace("task", ""));
      if (test.tasks !== taskNum) return false;
    }
    return true;
  });

  return (
    <div className="space-y-8 pb-12">
      <TestFilters filters={writingFilters} />

      <div className="flex items-end justify-between">
        <div>
          <h2 className="text-3xl font-black mb-1">Writing Challenge</h2>
          <p className="text-xs text-muted-foreground font-bold uppercase tracking-widest">
            {writingTests.length} Available Tests
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
        {writingTests.length > 0 ? (
          writingTests.map((test, index) => (
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
                  {test.tasks} {test.tasks === 1 ? "Task" : "Tasks"}
                </p>
                <div className="flex items-center gap-6 text-xs font-bold text-muted-foreground">
                  <DifficultyDots difficulty={test.difficulty} />
                  <span className="flex items-center gap-1.5">
                    <Clock className="h-4 w-4" />
                    {test.duration} mins
                  </span>
                  <span className="flex items-center gap-1.5">
                    <FileText className="h-4 w-4" />
                    {test.tasks} {test.tasks === 1 ? "task" : "tasks"}
                  </span>
                </div>
              </div>
              <Link
                href={`/dashboard/writing/${test.id}`}
                className="bg-primary text-primary-foreground px-8 py-3 rounded-lg font-black text-xs tracking-widest hover:opacity-90 transition-all uppercase"
              >
                Start Test
              </Link>
            </div>
          ))
        ) : (
          <div className="bg-card border border-border rounded-xl p-12 text-center">
            <p className="text-muted-foreground">
              No writing tests available yet.
            </p>
          </div>
        )}
      </div>
    </div>
  );
}
