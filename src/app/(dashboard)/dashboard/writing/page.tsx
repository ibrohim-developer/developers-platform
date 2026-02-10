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
import { PenTool, Clock, FileText, AlignLeft, Play } from "lucide-react";
import { createClient } from "@/lib/supabase/server";
import { cacheLife, cacheTag } from "next/cache";

/* eslint-disable @typescript-eslint/no-explicit-any */
async function getWritingTests() {
  "use cache";
  cacheLife("minutes");
  cacheTag("writing-tests");

  const supabase = await createClient();

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

  const testMap = new Map<string, any>();
  (tasks ?? []).forEach((task: any) => {
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
}

export default async function WritingTestsPage() {
  cacheLife("minutes");
  cacheTag("writing-page");

  const writingTests = await getWritingTests();

  return (
    <div className="space-y-8">
      {/* Header */}
      <div>
        <div className="flex items-center gap-3 mb-2">
          <div className="w-12 h-12 rounded-xl bg-purple-100 dark:bg-purple-900/30 flex items-center justify-center">
            <PenTool className="w-6 h-6 text-purple-600 dark:text-purple-400" />
          </div>
          <div>
            <h1 className="text-3xl font-bold">Writing Tests</h1>
            <p className="text-muted-foreground">
              Practice Task 1 and Task 2 writing skills
            </p>
          </div>
        </div>
      </div>

      {/* Test Info */}
      <Card className="bg-purple-50 dark:bg-purple-950/20 border-purple-200 dark:border-purple-800">
        <CardContent>
          <div className="grid md:grid-cols-3 gap-6">
            <div className="flex items-center gap-3">
              <Clock className="w-5 h-5 text-purple-600" />
              <div>
                <p className="font-medium">Duration</p>
                <p className="text-sm text-muted-foreground">
                  60 minutes total
                </p>
              </div>
            </div>
            <div className="flex items-center gap-3">
              <FileText className="w-5 h-5 text-purple-600" />
              <div>
                <p className="font-medium">Task 1</p>
                <p className="text-sm text-muted-foreground">
                  150 words minimum
                </p>
              </div>
            </div>
            <div className="flex items-center gap-3">
              <AlignLeft className="w-5 h-5 text-purple-600" />
              <div>
                <p className="font-medium">Task 2</p>
                <p className="text-sm text-muted-foreground">
                  250 words minimum
                </p>
              </div>
            </div>
          </div>
        </CardContent>
      </Card>

      {/* Tests Grid */}
      <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
        {writingTests.length > 0 ? (
          writingTests.map((test) => (
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
                    {test.tasks} tasks
                  </span>
                </div>
                <Link href={`/dashboard/writing/${test.id}`}>
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
            <p>No writing tests available yet.</p>
          </div>
        )}
      </div>
    </div>
  );
}
