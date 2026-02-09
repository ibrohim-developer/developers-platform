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
import { Headphones, Clock, HelpCircle, Play } from "lucide-react";
import { createClient } from "@/lib/supabase/server";

/* eslint-disable @typescript-eslint/no-explicit-any */
export default async function ListeningTestsPage() {
  const supabase = await createClient();

  // Fetch published tests
  const { data: tests } = await supabase
    .from("tests")
    .select("*")
    .eq("is_published", true);

  // For each test, get section and question counts, only include tests with listening sections
  const testsWithData = await Promise.all(
    (tests ?? []).map(async (test: any) => {
      const { count: sectionCount } = await supabase
        .from("listening_sections")
        .select("*", { count: "exact", head: true })
        .eq("test_id", test.id);

      const sectionIds: string[] = [];
      const { data: sections } = await supabase
        .from("listening_sections")
        .select("id")
        .eq("test_id", test.id);
      if (sections) {
        sections.forEach((s: any) => sectionIds.push(s.id));
      }

      let questionCount = 0;
      if (sectionIds.length > 0) {
        const { count } = await supabase
          .from("questions")
          .select("*", { count: "exact", head: true })
          .eq("module_type", "listening")
          .in("section_id", sectionIds);
        questionCount = count ?? 0;
      }

      return {
        id: test.id,
        title: test.title,
        description: test.description ?? "",
        difficulty: test.difficulty_level ?? "medium",
        duration: 30,
        questions: questionCount,
        sections: sectionCount ?? 0,
      };
    })
  );

  // Filter to only include tests that have listening sections
  const listeningTests = testsWithData.filter(test => test.sections > 0);
  return (
    <div className="space-y-8">
      {/* Header */}
      <div>
        <div className="flex items-center gap-3 mb-2">
          <div className="w-12 h-12 rounded-xl bg-blue-100 dark:bg-blue-900/30 flex items-center justify-center">
            <Headphones className="w-6 h-6 text-blue-600 dark:text-blue-400" />
          </div>
          <div>
            <h1 className="text-3xl font-bold">Listening Tests</h1>
            <p className="text-muted-foreground">
              Practice your listening comprehension skills
            </p>
          </div>
        </div>
      </div>

      {/* Test Info */}
      <Card className="bg-blue-50 dark:bg-blue-950/20 border-blue-200 dark:border-blue-800">
        <CardContent>
          <div className="grid md:grid-cols-3 gap-6">
            <div className="flex items-center gap-3">
              <Clock className="w-5 h-5 text-blue-600" />
              <div>
                <p className="font-medium">Duration</p>
                <p className="text-sm text-muted-foreground">30 minutes</p>
              </div>
            </div>
            <div className="flex items-center gap-3">
              <HelpCircle className="w-5 h-5 text-blue-600" />
              <div>
                <p className="font-medium">Questions</p>
                <p className="text-sm text-muted-foreground">
                  40 questions in 4 sections
                </p>
              </div>
            </div>
            <div className="flex items-center gap-3">
              <Headphones className="w-5 h-5 text-blue-600" />
              <div>
                <p className="font-medium">Audio</p>
                <p className="text-sm text-muted-foreground">Plays only once</p>
              </div>
            </div>
          </div>
        </CardContent>
      </Card>

      {/* Tests Grid */}
      <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
        {listeningTests.length > 0 ? (
          listeningTests.map((test) => (
          <Card key={test.id} className="group hover:shadow-lg transition-all">
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
                  <HelpCircle className="w-4 h-4" />
                  {test.questions} questions
                </span>
              </div>
              <Link href={`/listening?testId=${test.id}`}>
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
            <p>No listening tests available yet.</p>
          </div>
        )}
      </div>
    </div>
  );
}
