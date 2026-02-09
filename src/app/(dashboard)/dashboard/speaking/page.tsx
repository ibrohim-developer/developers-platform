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
import { Mic, Clock, MessageSquare, User, Play } from "lucide-react";

// Sample tests data (will be replaced with Supabase data)
const speakingTests = [
  {
    id: "1",
    title: "Speaking Practice Test 1",
    description: "Complete speaking test with all three parts",
    difficulty: "medium",
    duration: 14,
    parts: 3,
  },
  {
    id: "2",
    title: "Speaking Practice Test 2",
    description: "Introduction, cue card, and discussion",
    difficulty: "easy",
    duration: 12,
    parts: 3,
  },
  {
    id: "3",
    title: "Speaking Practice Test 3",
    description: "Advanced speaking with complex topics",
    difficulty: "hard",
    duration: 14,
    parts: 3,
  },
];

export default function SpeakingTestsPage() {
  return (
    <div className="space-y-8">
      {/* Header */}
      <div>
        <div className="flex items-center gap-3 mb-2">
          <div className="w-12 h-12 rounded-xl bg-red-100 dark:bg-red-900/30 flex items-center justify-center">
            <Mic className="w-6 h-6 text-red-600 dark:text-red-400" />
          </div>
          <div>
            <h1 className="text-3xl font-bold">Speaking Tests</h1>
            <p className="text-muted-foreground">
              Practice your speaking skills with AI-powered feedback
            </p>
          </div>
        </div>
      </div>

      {/* Test Info */}
      <Card className="bg-red-50 dark:bg-red-950/20 border-red-200 dark:border-red-800">
        <CardContent className="pt-6">
          <div className="grid md:grid-cols-3 gap-6">
            <div className="flex items-center gap-3">
              <Clock className="w-5 h-5 text-red-600" />
              <div>
                <p className="font-medium">Duration</p>
                <p className="text-sm text-muted-foreground">
                  11-14 minutes
                </p>
              </div>
            </div>
            <div className="flex items-center gap-3">
              <User className="w-5 h-5 text-red-600" />
              <div>
                <p className="font-medium">Part 1</p>
                <p className="text-sm text-muted-foreground">
                  Introduction & interview
                </p>
              </div>
            </div>
            <div className="flex items-center gap-3">
              <MessageSquare className="w-5 h-5 text-red-600" />
              <div>
                <p className="font-medium">Parts 2 & 3</p>
                <p className="text-sm text-muted-foreground">
                  Cue card & discussion
                </p>
              </div>
            </div>
          </div>
        </CardContent>
      </Card>

      {/* Test Structure Info */}
      <Card>
        <CardHeader>
          <CardTitle>Speaking Test Structure</CardTitle>
          <CardDescription>
            Understand the format before you begin
          </CardDescription>
        </CardHeader>
        <CardContent className="space-y-4">
          <div className="flex gap-4 p-4 rounded-lg border">
            <div className="flex-shrink-0 w-12 h-12 rounded-lg bg-red-100 dark:bg-red-900/30 flex items-center justify-center">
              <span className="text-lg font-bold text-red-600">1</span>
            </div>
            <div>
              <h3 className="font-semibold">Part 1: Introduction (4-5 minutes)</h3>
              <p className="text-sm text-muted-foreground">
                General questions about yourself, home, family, work, studies, and interests
              </p>
            </div>
          </div>

          <div className="flex gap-4 p-4 rounded-lg border">
            <div className="flex-shrink-0 w-12 h-12 rounded-lg bg-red-100 dark:bg-red-900/30 flex items-center justify-center">
              <span className="text-lg font-bold text-red-600">2</span>
            </div>
            <div>
              <h3 className="font-semibold">Part 2: Individual Long Turn (3-4 minutes)</h3>
              <p className="text-sm text-muted-foreground">
                Speak about a topic on a task card for 1-2 minutes after 1 minute preparation
              </p>
            </div>
          </div>

          <div className="flex gap-4 p-4 rounded-lg border">
            <div className="flex-shrink-0 w-12 h-12 rounded-lg bg-red-100 dark:bg-red-900/30 flex items-center justify-center">
              <span className="text-lg font-bold text-red-600">3</span>
            </div>
            <div>
              <h3 className="font-semibold">Part 3: Two-way Discussion (4-5 minutes)</h3>
              <p className="text-sm text-muted-foreground">
                Discuss more abstract ideas and issues related to Part 2 topic
              </p>
            </div>
          </div>
        </CardContent>
      </Card>

      {/* Tests Grid */}
      <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
        {speakingTests.map((test) => (
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
                  <MessageSquare className="w-4 h-4" />
                  {test.parts} parts
                </span>
              </div>
              <Link href={`/test/new?module=speaking&testId=${test.id}`}>
                <Button className="w-full">
                  <Play className="mr-2 h-4 w-4" />
                  Start Test
                </Button>
              </Link>
            </CardContent>
          </Card>
        ))}
      </div>
    </div>
  );
}
