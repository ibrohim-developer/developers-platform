"use client";

import { use, useState, useCallback, Suspense } from "react";
import { useRouter, useSearchParams } from "next/navigation";
import Image from "next/image";
import { Button } from "@/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { TestTimer } from "@/components/test/common/test-timer";
import { SubmitDialog } from "@/components/test/common/submit-dialog";
import { ReloadWarningDialog } from "@/components/test/common/reload-warning-dialog";
import { TestOptionsMenu } from "@/components/test/common/test-options-menu";
import { WritingEditor } from "@/components/test/writing/writing-editor";
import { useTestStore } from "@/stores/test-store";
import { WritingFeedback } from "@/components/test/writing/writing-feedback";
import { TEST_CONFIG } from "@/lib/constants/test-config";
import { useWritingTest } from "@/hooks/use-writing-test";
import { useNavigationProtection } from "@/hooks/use-navigation-protection";
import { useFullscreen } from "@/hooks/use-fullscreen";
import { useTestOptions } from "@/hooks/use-test-options";
import {
  Send,
  Loader2,
  Clock,
  PenTool,
  FileText,
  ArrowLeft,
  Maximize2,
  Minimize2,
  Sparkles,
} from "lucide-react";

export default function WritingTestPage({
  params,
}: {
  params: Promise<{ testId: string }>;
}) {
  const { testId } = use(params);

  return (
    <Suspense
      fallback={
        <div className="min-h-screen flex items-center justify-center">
          <div className="flex flex-col items-center gap-4">
            <Loader2 className="h-8 w-8 animate-spin text-muted-foreground" />
            <p className="text-muted-foreground">Loading test...</p>
          </div>
        </div>
      }
    >
      <WritingTestContent testId={testId} />
    </Suspense>
  );
}

function WritingTestContent({ testId }: { testId: string }) {
  const router = useRouter();
  const searchParams = useSearchParams();
  const isReviewMode = searchParams.get("review") === "true";
  const reviewAttemptId = searchParams.get("attemptId");

  const { resumeTimer, timeRemaining } = useTestStore();
  const { isFullscreen, toggleFullscreen } = useFullscreen();
  const {
    tasks,
    isLoading,
    error,
    hasStarted,
    setHasStarted,
    activeTaskId,
    setActiveTaskId,
    contents,
    setContent,
    totalTime,
    showSubmitDialog,
    setShowSubmitDialog,
    isSubmitting,
    isTimeUp,
    taskCompletions,
    answeredCount,
    getSubmissionForTask,
    handleSubmit,
    handleTimeUp,
  } = useWritingTest(testId, isReviewMode, reviewAttemptId);

  const [showReloadWarning, setShowReloadWarning] = useState(false);
  const testOptions = useTestOptions();

  useNavigationProtection({
    enabled: hasStarted && !isReviewMode,
    onShowWarning: useCallback(() => setShowReloadWarning(true), []),
  });

  if (isLoading) {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <div className="flex flex-col items-center gap-4">
          <Loader2 className="h-8 w-8 animate-spin text-muted-foreground" />
          <p className="text-muted-foreground">Loading test...</p>
        </div>
      </div>
    );
  }

  if (error) {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <div className="flex flex-col items-center gap-4 text-center">
          <p className="text-destructive font-medium">{error}</p>
          <Button
            variant="outline"
            onClick={() => router.push("/dashboard/writing")}
          >
            Back to Writing Tests
          </Button>
        </div>
      </div>
    );
  }

  if (tasks.length === 0) return null;

  if (!hasStarted) {
    return (
      <div className="min-h-screen bg-muted/30 flex items-center justify-center">
        <Card className="max-w-3xl w-full mx-4">
          <CardHeader className="px-8 pt-5 pb-4">
            <CardTitle className="text-3xl">IELTS Writing Test</CardTitle>
            <CardDescription className="text-base mt-1">
              Please read the instructions carefully before starting
            </CardDescription>
          </CardHeader>
          <CardContent className="space-y-8">
            <div className="space-y-6">
              <div className="flex items-start gap-4">
                <div className="w-10 h-10 rounded-full bg-primary/10 flex items-center justify-center shrink-0">
                  <Clock className="h-5 w-5 text-primary" />
                </div>
                <div>
                  <p className="font-medium text-lg">Time Limit</p>
                  <p className="text-base text-muted-foreground">
                    You have {totalTime / 60} minutes to complete this test
                  </p>
                </div>
              </div>

              <div className="flex items-start gap-4">
                <div className="w-10 h-10 rounded-full bg-primary/10 flex items-center justify-center shrink-0">
                  <PenTool className="h-5 w-5 text-primary" />
                </div>
                <div>
                  <p className="font-medium text-lg">Writing Task</p>
                  <p className="text-base text-muted-foreground">
                    {tasks[0]?.taskType === "report"
                      ? "Report Writing - describe charts, graphs, or diagrams"
                      : "Essay Writing - present and support your argument"}
                  </p>
                </div>
              </div>

              <div className="flex items-start gap-4">
                <div className="w-10 h-10 rounded-full bg-primary/10 flex items-center justify-center shrink-0">
                  <Send className="h-5 w-5 text-primary" />
                </div>
                <div>
                  <p className="font-medium text-lg">Instructions</p>
                  <ul className="text-base text-muted-foreground space-y-1.5 mt-1 list-disc list-inside">
                    <li>Write at least {tasks[0]?.minWords ?? 150} words.</li>
                    <li>Your essay will be evaluated by AI after submission.</li>
                    <li>The timer starts when you click &quot;Begin Test&quot;.</li>
                  </ul>
                </div>
              </div>
            </div>

            <div className="flex gap-3 pt-4">
              <Button
                variant="outline"
                size="lg"
                className="flex-1 text-base"
                onClick={() => router.push("/dashboard/writing")}
              >
                Cancel
              </Button>
              <Button
                className="flex-1 text-base"
                size="lg"
                onClick={() => {
                  setHasStarted(true);
                  resumeTimer();
                }}
              >
                Begin Test
              </Button>
            </div>
          </CardContent>
        </Card>
      </div>
    );
  }

  const { theme, rootStyle } = testOptions;

  return (
    <div className="h-screen flex flex-col overflow-hidden" style={rootStyle}>
      {/* Top Header Bar */}
      <header
        className="shrink-0 h-16 flex items-center px-6 justify-between"
        style={{ backgroundColor: theme.bg, borderBottom: `1px solid ${theme.border}` }}
      >
        <div className="flex items-center gap-4">
          <Button
            variant="outline"
            size="default"
            onClick={() =>
              isReviewMode
                ? router.push(`/dashboard/results/${reviewAttemptId}`)
                : router.push("/dashboard/writing")
            }
            className="flex items-center gap-2 text-base px-3"
          >
            <ArrowLeft className="h-5 w-5" />
            <span>Back</span>
          </Button>
          <div className="bg-red-600 text-white px-4 py-[3.5px] text-lg font-bold rounded">
            IELTS
          </div>
          {!isReviewMode && (
            <div className="flex items-center gap-2 text-base" style={{ color: theme.textMuted }}>
              {tasks.map((task, i) => {
                const isComplete = taskCompletions.find(
                  (completion) => completion.id === task.id,
                )?.complete;

                return (
                  <span key={task.id}>
                    {i > 0 && <span className="mx-1">|</span>}
                    <span className={isComplete ? "text-green-600" : ""}>
                      Task {task.taskNumber} {isComplete ? "\u2713" : ""}
                    </span>
                  </span>
                );
              })}
            </div>
          )}
        </div>

        {!isReviewMode && (
          <TestTimer
            onTimeUp={handleTimeUp}
            className="bg-transparent px-3 py-1.5 text-lg font-semibold"
          />
        )}

        <div className="flex items-center gap-3">
          <button
            onClick={toggleFullscreen}
            className="p-2 transition-opacity opacity-70 hover:opacity-100"
          >
            {isFullscreen ? (
              <Minimize2 className="h-6 w-6" />
            ) : (
              <Maximize2 className="h-6 w-6" />
            )}
          </button>
          <TestOptionsMenu {...testOptions} />
        </div>
      </header>

      {/* Timer Progress Bar */}
      {!isReviewMode && (
        <div className="shrink-0 h-1" style={{ backgroundColor: theme.border }}>
          <div
            className="h-full bg-red-500 transition-all duration-1000 ease-linear"
            style={{
              width: `${(timeRemaining / TEST_CONFIG.writing.totalTime) * 100}%`,
            }}
          />
        </div>
      )}

      <div className="flex-1 min-h-0 overflow-y-auto">
        <div className="container mx-auto px-4 py-6">
          <Tabs value={activeTaskId} onValueChange={setActiveTaskId}>
            {tasks.length > 1 && (
              <TabsList
                className="grid w-full max-w-md"
                style={{ gridTemplateColumns: `repeat(${tasks.length}, 1fr)` }}
              >
                {tasks.map((task) => {
                  const isComplete = taskCompletions.find(
                    (completion) => completion.id === task.id,
                  )?.complete;

                  return (
                    <TabsTrigger
                      key={task.id}
                      value={task.id}
                      className="flex items-center gap-2"
                    >
                      <FileText className="h-4 w-4" />
                      Task {task.taskNumber}
                      {isComplete && <span className="text-green-500">\u2713</span>}
                    </TabsTrigger>
                  );
                })}
              </TabsList>
            )}

            {tasks.map((task) => {
              const submission = getSubmissionForTask(task.id);
              const recommendedTime = task.taskNumber === 1 ? 20 : 40;

              return (
                <TabsContent key={task.id} value={task.id} className="mt-6">
                  <div className="grid lg:grid-cols-2 gap-6">
                    <Card>
                      <CardHeader>
                        <div className="flex items-center justify-between">
                          <CardTitle>
                            Task {task.taskNumber} -{" "}
                            {task.taskType === "report"
                              ? "Report Writing"
                              : "Essay Writing"}
                          </CardTitle>
                          <div className="flex items-center gap-1 text-sm text-muted-foreground">
                            <Clock className="h-4 w-4" />~{recommendedTime} min
                          </div>
                        </div>
                        <CardDescription>
                          You should spend about {recommendedTime} minutes on this
                          task.
                        </CardDescription>
                      </CardHeader>
                      <CardContent>
                        {task.imageUrl && (
                          <div className="relative aspect-video rounded-lg overflow-hidden mb-4 border">
                            <Image
                              src={task.imageUrl}
                              alt={`Task ${task.taskNumber} image`}
                              fill
                              className="object-contain"
                            />
                          </div>
                        )}
                        <div className="prose dark:prose-invert max-w-none">
                          <p className="whitespace-pre-line">{task.prompt}</p>
                        </div>
                      </CardContent>
                    </Card>

                    <Card className="flex flex-col">
                      <CardHeader>
                        <CardTitle>Your Response</CardTitle>
                        <CardDescription>
                          Write at least {task.minWords} words
                        </CardDescription>
                      </CardHeader>
                      <CardContent className="flex-1">
                        <WritingEditor
                          value={contents[task.id] || ""}
                          onChange={(value) => setContent(task.id, value)}
                          minWords={task.minWords}
                          placeholder={`Write your Task ${task.taskNumber} response here...`}
                          disabled={isReviewMode}
                        />
                      </CardContent>
                    </Card>
                  </div>

                  {isReviewMode &&
                    submission &&
                    submission.overallBandScore !== null && (
                      <Card className="mt-6">
                        <CardHeader>
                          <CardTitle className="flex items-center gap-2">
                            <Sparkles className="h-5 w-5 text-purple-500" />
                            AI Evaluation - Task {task.taskNumber}
                          </CardTitle>
                          <CardDescription>
                            Overall Band Score: {submission.overallBandScore}
                          </CardDescription>
                        </CardHeader>
                        <CardContent>
                          <div className="grid grid-cols-2 md:grid-cols-4 gap-4 mb-6">
                            <ScoreCard
                              label="Task Achievement"
                              score={submission.taskAchievementScore}
                            />
                            <ScoreCard
                              label="Coherence & Cohesion"
                              score={submission.coherenceScore}
                            />
                            <ScoreCard
                              label="Lexical Resource"
                              score={submission.lexicalScore}
                            />
                            <ScoreCard
                              label="Grammar"
                              score={submission.grammarScore}
                            />
                          </div>
                          {submission.feedback && (
                            <div>
                              <h4 className="text-sm font-medium mb-2">
                                Detailed Feedback
                              </h4>
                              <WritingFeedback feedback={submission.feedback} />
                            </div>
                          )}
                        </CardContent>
                      </Card>
                    )}
                </TabsContent>
              );
            })}
          </Tabs>
        </div>
      </div>

      {/* Bottom Bar */}
      {!isReviewMode && (
        <div
          className="shrink-0 h-14 flex items-center px-6 justify-end"
          style={{ backgroundColor: theme.bg, borderTop: `1px solid ${theme.border}` }}
        >
          <Button
            variant="default"
            size="default"
            onClick={() => setShowSubmitDialog(true)}
            disabled={isSubmitting}
            className="text-base px-6"
          >
            {isSubmitting ? (
              <>
                <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                Evaluating...
              </>
            ) : (
              "Submit"
            )}
          </Button>
        </div>
      )}

      {!isReviewMode && (
        <>
          <SubmitDialog
            open={showSubmitDialog}
            onOpenChange={setShowSubmitDialog}
            onConfirm={handleSubmit}
            answeredCount={answeredCount}
            totalQuestions={tasks.length}
            isSubmitting={isSubmitting}
            timeUp={isTimeUp}
          />

          <ReloadWarningDialog
            open={showReloadWarning}
            onOpenChange={setShowReloadWarning}
            onConfirm={() => {
              setShowReloadWarning(false);
              window.history.go(-2);
            }}
          />
        </>
      )}
    </div>
  );
}

function ScoreCard({ label, score }: { label: string; score: number | null }) {
  if (score === null) {
    return (
      <div className="text-center p-3 rounded-lg bg-muted">
        <div className="text-2xl font-bold text-muted-foreground">-</div>
        <div className="text-xs text-muted-foreground mt-1">{label}</div>
      </div>
    );
  }

  const getColor = (value: number) => {
    if (value >= 7) return "text-green-600";
    if (value >= 5) return "text-amber-600";
    return "text-red-600";
  };

  return (
    <div className="text-center p-3 rounded-lg bg-muted">
      <div className={`text-2xl font-bold ${getColor(score)}`}>{score}</div>
      <div className="text-xs text-muted-foreground mt-1">{label}</div>
    </div>
  );
}

