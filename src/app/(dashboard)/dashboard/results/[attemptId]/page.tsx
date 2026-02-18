import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
import { Button } from "@/components/ui/button";
import { BAND_DESCRIPTORS } from "@/lib/constants/test-config";
import {
  PenTool,
  CheckCircle,
  XCircle,
  ArrowLeft,
  Sparkles,
  Heart,
} from "lucide-react";
import { WritingFeedback } from "@/components/test/writing/writing-feedback";
import { AnswerToggle } from "./answer-toggle";

/* eslint-disable @typescript-eslint/no-explicit-any */
interface ResultsPageProps {
  params: Promise<{ attemptId: string }>;
}

interface AnswerResult {
  id: string;
  questionNumber: number;
  questionText: string;
  userAnswer: string;
  correctAnswer: string;
  isCorrect: boolean;
}

export default async function ResultsPage({ params }: ResultsPageProps) {
  const { attemptId } = await params;
  const supabase = await createClient();

  // Fetch attempt
  const { data: attempt, error } = await supabase
    .from("test_attempts")
    .select("*")
    .eq("id", attemptId)
    .single();

  if (error || !attempt) {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <div className="flex flex-col items-center gap-4 text-center">
          <p className="text-destructive font-medium">
            Test attempt not found.
          </p>
          <Link href="/dashboard">
            <Button variant="outline">Back to Dashboard</Button>
          </Link>
        </div>
      </div>
    );
  }

  // Fetch test title
  const { data: test } = await supabase
    .from("tests")
    .select("title")
    .eq("id", (attempt as any).test_id)
    .single();

  const testTitle = test?.title || `${(attempt as any).module_type} Test`;

  // Fetch user answers for this attempt
  const { data: userAnswers } = await supabase
    .from("user_answers")
    .select("id, user_answer, is_correct, question_id")
    .eq("attempt_id", attemptId);

  // Fetch question details for answered questions
  const questionIds = (userAnswers ?? []).map((ua: any) => ua.question_id);
  let questionsMap = new Map<string, any>();
  if (questionIds.length > 0) {
    const { data: questions } = await supabase
      .from("questions")
      .select("id, question_number, question_text, correct_answer")
      .in("id", questionIds);
    if (questions) {
      questionsMap = new Map(questions.map((q: any) => [q.id, q]));
    }
  }

  const answerResults: AnswerResult[] = (userAnswers ?? [])
    .map((ua: any) => {
      const question = questionsMap.get(ua.question_id);
      return {
        id: ua.id,
        questionNumber: question?.question_number ?? 0,
        questionText: question?.question_text ?? "",
        userAnswer: ua.user_answer ?? "",
        correctAnswer: question?.correct_answer ?? "",
        isCorrect: ua.is_correct ?? false,
      };
    })
    .sort(
      (a: AnswerResult, b: AnswerResult) => a.questionNumber - b.questionNumber,
    );

  // Writing-specific results
  if ((attempt as any).module_type === "writing") {
    const { data: writingSubmissions } = await supabase
      .from("writing_submissions")
      .select("*")
      .eq("attempt_id", attemptId);

    const { data: writingTasks } = await supabase
      .from("writing_tasks")
      .select("id, task_number, task_type, prompt, min_words")
      .eq("test_id", (attempt as any).test_id)
      .order("task_number");

    return (
      <WritingResultsContent
        attempt={attempt}
        testTitle={testTitle}
        tasks={writingTasks ?? []}
        submissions={writingSubmissions ?? []}
      />
    );
  }

  return (
    <ResultsContent
      attempt={attempt}
      testTitle={testTitle}
      answerResults={answerResults}
    />
  );
}

function ResultsContent({
  attempt,
  testTitle,
  answerResults,
}: {
  attempt: {
    id: string;
    test_id: string;
    module_type: string;
    status: string;
    raw_score: number | null;
    band_score: number | null;
    time_spent_seconds: number | null;
    created_at: string;
    completed_at: string | null;
  };
  testTitle: string;
  answerResults: AnswerResult[];
}) {
  const rawScore = attempt.raw_score || 0;
  const totalQuestions = answerResults.length || 40;

  return (
    <div className="max-w-7xl mx-auto">
      {/* Back link */}
      <Link
        href="/dashboard"
        className="inline-flex items-center gap-2 text-muted-foreground hover:text-foreground mb-8 text-sm font-medium"
      >
        <ArrowLeft className="h-4 w-4" />
        Back to Dashboard
      </Link>

      {/* Title + Score Hero */}
      <div className="flex flex-col md:flex-row md:items-end justify-between gap-6 mb-10">
        <div>
          <div className="flex items-center gap-4">
            <div className="w-14 h-14 bg-green-500 rounded-full flex items-center justify-center shadow-lg shadow-green-100">
              <CheckCircle className="text-white h-7 w-7" />
            </div>
            <h1 className="text-4xl md:text-5xl font-black tracking-tight uppercase leading-none">
              Test Results
            </h1>
          </div>
          <p className="text-lg font-extrabold text-muted-foreground mt-2 uppercase">
            {testTitle}
          </p>
        </div>
      </div>

      {/* Score + Insight Card */}
      <div className="border-2 border-border rounded-xl p-8 md:p-10 shadow-sm mb-10 flex flex-col md:flex-row items-center justify-between gap-8">
        <div className="flex flex-col md:flex-row items-center gap-12 md:gap-16">
          <div className="text-center md:text-left md:border-r-2 border-border md:pr-16">
            <p className="text-sm font-extrabold text-muted-foreground uppercase tracking-widest mb-2">
              Your Score
            </p>
            <p className="text-6xl md:text-7xl font-black text-primary">
              {rawScore}/{totalQuestions}
            </p>
          </div>
        </div>
        <div className="flex-1 bg-muted p-6 rounded-xl border border-border">
          <p className="text-xs font-black text-muted-foreground uppercase tracking-widest mb-3">
            Performance Insight
          </p>
          <p className="text-xl md:text-2xl font-black leading-tight">
            Great job! You have completed the test. Review your answers below to
            understand your mistakes and improve your performance.
          </p>
        </div>
      </div>

      {/* Detailed Review Table */}
      {answerResults.length > 0 && (
        <div className="border-2 border-border rounded-xl overflow-hidden mb-10 shadow-sm">
          <AnswerToggle answerResults={answerResults} />
        </div>
      )}

      {/* Feedback Section */}
      <section className="border-2 border-border rounded-xl p-8 mb-16 shadow-sm">
        <h3 className="text-2xl font-black uppercase mb-6 tracking-tight">
          Your Feedback
        </h3>
        <div className="space-y-6">
          <textarea
            className="w-full rounded-xl border-2 border-border focus:border-foreground focus:ring-0 text-lg p-6 font-medium placeholder:text-muted-foreground/40 transition-all bg-background"
            placeholder="Share your thoughts or report an issue with this test..."
            rows={6}
          />
          <div className="flex justify-end">
            <Button className="px-10 py-6 rounded-xl font-black text-sm tracking-widest uppercase shadow-xl">
              Submit Feedback
            </Button>
          </div>
        </div>
      </section>

      {/* Donate CTA */}
      <div className="flex flex-col items-center justify-center gap-6 pb-20 pt-4 text-center">
        <p className="text-xl font-extrabold text-muted-foreground uppercase tracking-tight">
          Support our mission to keep IELTS practice free for everyone.
        </p>
        <Button
          size="lg"
          className="flex items-center gap-3 px-12 py-6 rounded-xl font-black text-sm tracking-widest uppercase shadow-2xl"
        >
          <Heart className="h-5 w-5" />
          Donate to Support
        </Button>
      </div>
    </div>
  );
}

function WritingResultsContent({
  attempt,
  testTitle,
  tasks,
  submissions,
}: {
  attempt: {
    id: string;
    module_type: string;
    status: string;
    raw_score: number | null;
    band_score: number | null;
    time_spent_seconds: number | null;
    created_at: string;
    completed_at: string | null;
  };
  testTitle: string;
  tasks: any[];
  submissions: any[];
}) {
  const bandScore = attempt.band_score || 0;

  const formatTime = (seconds: number) => {
    const mins = Math.floor(seconds / 60);
    const secs = seconds % 60;
    return `${mins}m ${secs}s`;
  };

  const getScoreColor = (score: number | null) => {
    if (score === null) return "text-muted-foreground";
    if (score >= 7) return "text-green-600";
    if (score >= 5) return "text-amber-600";
    return "text-red-600";
  };

  const scoredSubmissions = submissions.filter(
    (s: any) => s.overall_band_score !== null,
  );
  const avgTaskAchievement =
    scoredSubmissions.length > 0
      ? scoredSubmissions.reduce(
          (sum: number, s: any) => sum + (s.task_achievement_score || 0),
          0,
        ) / scoredSubmissions.length
      : null;
  const avgCoherence =
    scoredSubmissions.length > 0
      ? scoredSubmissions.reduce(
          (sum: number, s: any) => sum + (s.coherence_score || 0),
          0,
        ) / scoredSubmissions.length
      : null;
  const avgLexical =
    scoredSubmissions.length > 0
      ? scoredSubmissions.reduce(
          (sum: number, s: any) => sum + (s.lexical_score || 0),
          0,
        ) / scoredSubmissions.length
      : null;
  const avgGrammar =
    scoredSubmissions.length > 0
      ? scoredSubmissions.reduce(
          (sum: number, s: any) => sum + (s.grammar_score || 0),
          0,
        ) / scoredSubmissions.length
      : null;

  return (
    <div className="max-w-7xl mx-auto">
      <Link
        href="/dashboard"
        className="inline-flex items-center gap-2 text-muted-foreground hover:text-foreground mb-8 text-sm font-medium"
      >
        <ArrowLeft className="h-4 w-4" />
        Back to Dashboard
      </Link>

      {/* Title */}
      <div className="flex flex-col md:flex-row md:items-end justify-between gap-6 mb-10">
        <div>
          <div className="flex items-center gap-4">
            <div className="w-14 h-14 bg-purple-500 rounded-full flex items-center justify-center shadow-lg shadow-purple-100">
              <PenTool className="text-white h-7 w-7" />
            </div>
            <h1 className="text-4xl md:text-5xl font-black tracking-tight uppercase leading-none">
              Test Results
            </h1>
          </div>
          <p className="text-lg font-extrabold text-muted-foreground mt-2 uppercase">
            {testTitle}
          </p>
        </div>
      </div>

      {/* Score + Insight */}
      <div className="border-2 border-border rounded-xl p-8 md:p-10 shadow-sm mb-10 flex flex-col md:flex-row items-center justify-between gap-8">
        <div className="text-center md:text-left md:border-r-2 border-border md:pr-16">
          <p className="text-sm font-extrabold text-muted-foreground uppercase tracking-widest mb-2">
            Band Score
          </p>
          <p className="text-6xl md:text-7xl font-black text-primary">
            {bandScore}
          </p>
          <p className="text-sm font-bold text-muted-foreground mt-1">
            {BAND_DESCRIPTORS[Math.floor(bandScore)] || "Good user"}
          </p>
        </div>
        <div className="flex-1 bg-muted p-6 rounded-xl border border-border">
          <p className="text-xs font-black text-muted-foreground uppercase tracking-widest mb-3">
            Performance Insight
          </p>
          <p className="text-xl md:text-2xl font-black leading-tight">
            Review your writing evaluation below. Focus on the feedback to
            improve your performance.
          </p>
        </div>
      </div>

      {/* AI Evaluation Summary */}
      <div className="border-2 border-border rounded-xl overflow-hidden mb-10 shadow-sm">
        <div className="p-8 border-b border-border">
          <h3 className="text-2xl font-black uppercase tracking-tight flex items-center gap-2">
            <Sparkles className="h-5 w-5 text-purple-500" />
            AI Evaluation Summary
          </h3>
          <p className="text-sm text-muted-foreground mt-1">
            Average scores across all tasks
          </p>
        </div>
        <div className="p-8">
          <div className="grid grid-cols-2 md:grid-cols-4 gap-4 mb-6">
            <div className="text-center p-4 rounded-lg bg-muted">
              <div
                className={`text-3xl font-bold ${getScoreColor(avgTaskAchievement)}`}
              >
                {avgTaskAchievement !== null
                  ? avgTaskAchievement.toFixed(1)
                  : "-"}
              </div>
              <div className="text-sm text-muted-foreground mt-1">
                Task Achievement
              </div>
            </div>
            <div className="text-center p-4 rounded-lg bg-muted">
              <div
                className={`text-3xl font-bold ${getScoreColor(avgCoherence)}`}
              >
                {avgCoherence !== null ? avgCoherence.toFixed(1) : "-"}
              </div>
              <div className="text-sm text-muted-foreground mt-1">
                Coherence & Cohesion
              </div>
            </div>
            <div className="text-center p-4 rounded-lg bg-muted">
              <div
                className={`text-3xl font-bold ${getScoreColor(avgLexical)}`}
              >
                {avgLexical !== null ? avgLexical.toFixed(1) : "-"}
              </div>
              <div className="text-sm text-muted-foreground mt-1">
                Lexical Resource
              </div>
            </div>
            <div className="text-center p-4 rounded-lg bg-muted">
              <div
                className={`text-3xl font-bold ${getScoreColor(avgGrammar)}`}
              >
                {avgGrammar !== null ? avgGrammar.toFixed(1) : "-"}
              </div>
              <div className="text-sm text-muted-foreground mt-1">Grammar</div>
            </div>
          </div>

          {attempt.time_spent_seconds && (
            <div className="p-4 rounded-lg border">
              <div className="flex items-center justify-between">
                <span className="text-muted-foreground">Time Spent</span>
                <span className="font-medium">
                  {formatTime(attempt.time_spent_seconds)}
                </span>
              </div>
            </div>
          )}
        </div>
      </div>

      {/* Per-Task Review */}
      {tasks.map((task: any) => {
        const submission = submissions.find((s: any) => s.task_id === task.id);
        if (!submission) return null;

        return (
          <div
            key={task.id}
            className="border-2 border-border rounded-xl overflow-hidden mb-10 shadow-sm"
          >
            <div className="p-8 border-b border-border">
              <h3 className="text-2xl font-black uppercase tracking-tight">
                Task {task.task_number} -{" "}
                {task.task_type === "report"
                  ? "Report Writing"
                  : "Essay Writing"}
              </h3>
              <p className="text-sm text-muted-foreground mt-1">
                {submission.word_count} words written (minimum: {task.min_words}
                )
                {submission.overall_band_score !== null && (
                  <span className="ml-2 font-medium">
                    | Band Score: {submission.overall_band_score}
                  </span>
                )}
              </p>
            </div>
            <div className="p-8 space-y-6">
              {submission.overall_band_score !== null && (
                <div className="grid grid-cols-2 md:grid-cols-4 gap-3">
                  <div className="text-center p-3 rounded-lg bg-muted">
                    <div
                      className={`text-xl font-bold ${getScoreColor(submission.task_achievement_score)}`}
                    >
                      {submission.task_achievement_score ?? "-"}
                    </div>
                    <div className="text-xs text-muted-foreground">
                      Task Achievement
                    </div>
                  </div>
                  <div className="text-center p-3 rounded-lg bg-muted">
                    <div
                      className={`text-xl font-bold ${getScoreColor(submission.coherence_score)}`}
                    >
                      {submission.coherence_score ?? "-"}
                    </div>
                    <div className="text-xs text-muted-foreground">
                      Coherence
                    </div>
                  </div>
                  <div className="text-center p-3 rounded-lg bg-muted">
                    <div
                      className={`text-xl font-bold ${getScoreColor(submission.lexical_score)}`}
                    >
                      {submission.lexical_score ?? "-"}
                    </div>
                    <div className="text-xs text-muted-foreground">Lexical</div>
                  </div>
                  <div className="text-center p-3 rounded-lg bg-muted">
                    <div
                      className={`text-xl font-bold ${getScoreColor(submission.grammar_score)}`}
                    >
                      {submission.grammar_score ?? "-"}
                    </div>
                    <div className="text-xs text-muted-foreground">Grammar</div>
                  </div>
                </div>
              )}

              <div>
                <h4 className="text-sm font-black uppercase tracking-wider text-muted-foreground mb-2">
                  Your Essay
                </h4>
                <div className="p-4 rounded-lg bg-muted/50 border text-sm whitespace-pre-line max-h-60 overflow-y-auto">
                  {submission.content}
                </div>
              </div>

              {submission.feedback && (
                <div>
                  <h4 className="text-sm font-black uppercase tracking-wider text-muted-foreground mb-2 flex items-center gap-1">
                    <Sparkles className="h-4 w-4 text-purple-500" />
                    AI Feedback
                  </h4>
                  <div className="p-4 rounded-lg border border-purple-200 dark:border-purple-800 bg-purple-50/50 dark:bg-purple-950/20">
                    <WritingFeedback feedback={submission.feedback} />
                  </div>
                </div>
              )}

              {submission.overall_band_score === null && (
                <div className="p-4 rounded-lg border border-amber-200 dark:border-amber-800 bg-amber-50/50 dark:bg-amber-950/20 text-sm text-amber-700 dark:text-amber-400">
                  Evaluation pending - scores are not yet available for this
                  task.
                </div>
              )}
            </div>
          </div>
        );
      })}

      {/* Feedback Section */}
      <section className="border-2 border-border rounded-xl p-8 mb-16 shadow-sm">
        <h3 className="text-2xl font-black uppercase mb-6 tracking-tight">
          Your Feedback
        </h3>
        <div className="space-y-6">
          <textarea
            className="w-full rounded-xl border-2 border-border focus:border-foreground focus:ring-0 text-lg p-6 font-medium placeholder:text-muted-foreground/40 transition-all bg-background"
            placeholder="Share your thoughts or report an issue with this test..."
            rows={6}
          />
          <div className="flex justify-end">
            <Button className="px-10 py-6 rounded-xl font-black text-sm tracking-widest uppercase shadow-xl">
              Submit Feedback
            </Button>
          </div>
        </div>
      </section>

      {/* Donate CTA */}
      <div className="flex flex-col items-center justify-center gap-6 pb-20 pt-4 text-center">
        <p className="text-xl font-extrabold text-muted-foreground uppercase tracking-tight">
          Support our mission to keep IELTS practice free for everyone.
        </p>
        <Button
          size="lg"
          className="flex items-center gap-3 px-12 py-6 rounded-xl font-black text-sm tracking-widest uppercase shadow-2xl"
        >
          <Heart className="h-5 w-5" />
          Donate to Support
        </Button>
      </div>
    </div>
  );
}
