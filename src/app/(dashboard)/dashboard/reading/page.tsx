"use cache";

import Link from "next/link";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import {
  BookOpen,
  Clock,
  HelpCircle,
  FileText,
  Play,
} from "lucide-react";
import { createClient } from "@/lib/supabase/server";
import { cacheLife, cacheTag } from "next/cache";

interface ReadingTest {
  id: string;
  title: string;
  description: string;
  difficulty: string;
  duration: number;
  questions: number;
  passages: number;
}

/* eslint-disable @typescript-eslint/no-explicit-any */
async function getReadingTests(): Promise<ReadingTest[]> {
  "use cache";
  cacheLife("minutes");
  cacheTag("reading-tests");

  const supabase = await createClient();

  const { data: passages } = await supabase
    .from("reading_passages")
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

  const passageIds = (passages ?? []).map((p: any) => p.id);

  if (passageIds.length === 0) {
    return [];
  }

  const { data: questionCounts } = await supabase
    .from("questions")
    .select("section_id")
    .eq("module_type", "reading")
    .in("section_id", passageIds);

  const questionCountMap: Record<string, number> = {};
  (questionCounts ?? []).forEach((q: any) => {
    questionCountMap[q.section_id] =
      (questionCountMap[q.section_id] || 0) + 1;
  });

  const testMap = new Map<string, any>();
  (passages ?? []).forEach((passage: any) => {
    const test = passage.tests;
    if (!testMap.has(test.id)) {
      testMap.set(test.id, {
        id: test.id,
        title: test.title,
        description: test.description ?? "",
        difficulty: test.difficulty_level ?? "medium",
        duration: 60,
        questions: 0,
        passages: 0,
      });
    }
    const testData = testMap.get(test.id);
    testData.passages += 1;
    testData.questions += questionCountMap[passage.id] || 0;
  });

  return Array.from(testMap.values());
}

export default async function ReadingTestsPage() {
  cacheLife("minutes");
  cacheTag("reading-page");

  const readingTests = await getReadingTests();

  return (
    <div className="space-y-8">
      {/* Header */}
      <div>
        <div className="flex items-center gap-3 mb-2">
          <div className="w-12 h-12 rounded-xl bg-green-100 dark:bg-green-900/30 flex items-center justify-center">
            <BookOpen className="w-6 h-6 text-green-600 dark:text-green-400" />
          </div>
          <div>
            <h1 className="text-3xl font-bold">Reading Tests</h1>
            <p className="text-muted-foreground">
              Improve your reading comprehension and speed
            </p>
          </div>
        </div>
      </div>

      {/* Test Info */}
      <Card className="bg-green-50 dark:bg-green-950/20 border-green-200 dark:border-green-800">
        <CardContent>
          <div className="grid md:grid-cols-3 gap-6">
            <div className="flex items-center gap-3">
              <Clock className="w-5 h-5 text-green-600" />
              <div>
                <p className="font-medium">Duration</p>
                <p className="text-sm text-muted-foreground">60 minutes</p>
              </div>
            </div>
            <div className="flex items-center gap-3">
              <HelpCircle className="w-5 h-5 text-green-600" />
              <div>
                <p className="font-medium">Questions</p>
                <p className="text-sm text-muted-foreground">
                  40 questions total
                </p>
              </div>
            </div>
            <div className="flex items-center gap-3">
              <FileText className="w-5 h-5 text-green-600" />
              <div>
                <p className="font-medium">Passages</p>
                <p className="text-sm text-muted-foreground">
                  3 reading passages
                </p>
              </div>
            </div>
          </div>
        </CardContent>
      </Card>

      {/* Tests Grid */}
      <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
        {readingTests.length > 0 ? (
          readingTests.map((test) => (
            <Card
              key={test.id}
              className="group hover:shadow-lg transition-all"
            >
              <CardHeader>
                <div className="flex items-start justify-between">
                  <CardTitle className="text-lg">{test.title}</CardTitle>
                  <Badge
                    variant={
                      test.difficulty === "easy"
                        ? "secondary"
                        : test.difficulty === "medium"
                          ? "default"
                          : "destructive"
                    }
                  >
                    {test.difficulty}
                  </Badge>
                </div>
                <CardDescription>{test.description}</CardDescription>
              </CardHeader>
              <CardContent>
                <div className="flex items-center gap-4 text-sm text-muted-foreground mb-4">
                  <span className="flex items-center gap-1">
                    <Clock className="w-4 h-4" />
                    {test.duration} min
                  </span>
                  <span className="flex items-center gap-1">
                    <FileText className="w-4 h-4" />
                    {test.passages} passages
                  </span>
                </div>
                <Link href={`/dashboard/reading/${test.id}`}>
                  <Button className="w-full">
                    <Play className="mr-2 h-4 w-4" />
                    Start Test
                  </Button>
                </Link>
              </CardContent>
            </Card>
          ))
        ) : (
          <div className="col-span-full text-center py-12 text-muted-foreground">
            <p>No reading tests available yet.</p>
          </div>
        )}
      </div>
    </div>
  );
}
