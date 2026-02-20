"use client";

import { use, Suspense } from "react";
import { useRouter, useSearchParams } from "next/navigation";
import { Button } from "@/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { TestTimer } from "@/components/test/common/test-timer";
import { SubmitDialog } from "@/components/test/common/submit-dialog";
import { TestOptionsMenu } from "@/components/test/common/test-options-menu";
import { SplitView } from "@/components/test/common/split-view";
import { PassageDisplay } from "@/components/test/reading/passage-display";
import { MultipleChoice } from "@/components/test/questions/multiple-choice";
import { TrueFalseNotGiven } from "@/components/test/questions/true-false-not-given";
import { FillInBlank } from "@/components/test/questions/fill-in-blank";
import { MatchingSelect } from "@/components/test/questions/matching-select";
import { useTestStore } from "@/stores/test-store";
import { getTypeInstruction } from "@/lib/constants/reading-instructions";
import { useReadingTest } from "@/hooks/use-reading-test";
import { useFullscreen } from "@/hooks/use-fullscreen";
import { useQuestionNavigation } from "@/hooks/use-question-navigation";
import { useTestOptions } from "@/hooks/use-test-options";
import { useSyncTestTheme } from "@/components/force-light-theme";
import {
  Send,
  Loader2,
  Clock,
  BookOpen,
  ArrowLeft,
  Maximize2,
  Minimize2,
  Check,
} from "lucide-react";

interface Question {
  id: string;
  questionNumber: number;
  type: string;
  text: string;
  options: string[] | null;
  metadata: Record<string, unknown> | null;
}

export default function ReadingTestPage({
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
      <ReadingTestContent testId={testId} />
    </Suspense>
  );
}

function ReadingTestContent({ testId }: { testId: string }) {
  const router = useRouter();
  const searchParams = useSearchParams();
  const isReviewMode = searchParams.get("review") === "true";
  const reviewAttemptId = searchParams.get("attemptId");

  const { resumeTimer, timeRemaining } = useTestStore();
  const { isFullscreen, toggleFullscreen } = useFullscreen();

  const {
    passages,
    isLoading,
    error,
    hasStarted,
    setHasStarted,
    isSubmitting,
    isTimeUp,
    showSubmitDialog,
    setShowSubmitDialog,
    reviewData,
    unansweredQuestions,
    activePassageId,
    setActivePassageId,
    attemptId,
    answers,
    answeredCount,
    totalTime,
    handleAnswer,
    handleSubmit,
    handleTimeUp,
  } = useReadingTest(testId, isReviewMode, reviewAttemptId);

  const {
    activePassageIndex,
    currentPassage,
    questionOffset,
    firstQuestionNum,
    lastQuestionNum,
    totalQuestions,
    questionGroups,
    activeQuestionNumber,
    goToQuestion,
    goToPrevQuestion,
    goToNextQuestion,
  } = useQuestionNavigation(passages, activePassageId);

  const testOptions = useTestOptions();
  useSyncTestTheme(testOptions.contrast);

  const renderQuestion = (question: Question, index: number) => {
    const globalIndex = questionOffset + index;
    const review = reviewData[question.id];
    const value = isReviewMode
      ? review?.userAnswer || ""
      : answers[question.id]?.answer || "";

    const commonProps = {
      questionId: question.id,
      questionNumber: globalIndex + 1,
      questionText: question.text,
      value,
      onChange: (value: string) => handleAnswer(question.id, value),
      disabled: isReviewMode,
      reviewMode: isReviewMode,
      correctAnswer: review?.correctAnswer,
      isCorrect: review?.isCorrect,
      isUnanswered: unansweredQuestions.has(question.id),
    };

    switch (question.type) {
      case "mcq_single":
        return (
          <MultipleChoice
            key={question.id}
            {...commonProps}
            options={question.options ?? []}
          />
        );
      case "tfng":
        return <TrueFalseNotGiven key={question.id} {...commonProps} />;
      case "gap_fill":
      case "short_answer":
      case "summary_completion":
        return <FillInBlank key={question.id} {...commonProps} />;
      case "matching_headings":
        return (
          <MatchingSelect
            key={question.id}
            {...commonProps}
            options={question.options ?? []}
            placeholder="Select a heading"
          />
        );
      case "matching_info":
        return (
          <MatchingSelect
            key={question.id}
            {...commonProps}
            options={question.options ?? []}
            placeholder="Select a paragraph"
          />
        );
      default:
        return null;
    }
  };

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
            onClick={() => router.push("/dashboard/reading")}
          >
            Back to Reading Tests
          </Button>
        </div>
      </div>
    );
  }

  if (!currentPassage) return null;

  if (!hasStarted) {
    return (
      <div className="min-h-screen bg-muted/30 flex items-center justify-center">
        <Card className="max-w-3xl w-full mx-4">
          <CardHeader className="px-8 pt-5 pb-4">
            <CardTitle className="text-3xl">IELTS Reading Test</CardTitle>
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
                  <BookOpen className="h-5 w-5 text-primary" />
                </div>
                <div>
                  <p className="font-medium text-lg">Reading Passages</p>
                  <p className="text-base text-muted-foreground">
                    This test contains {passages.length} passage
                    {passages.length > 1 ? "s" : ""} with {totalQuestions}{" "}
                    questions total
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
                    <li>
                      Read each passage carefully before answering questions
                    </li>
                    <li>You can navigate between passages using the tabs</li>
                    <li>
                      The timer will start when you click &quot;Begin Test&quot;
                    </li>
                    <li>You can submit your test at any time</li>
                  </ul>
                </div>
              </div>
            </div>

            <div className="flex gap-3 pt-4">
              <Button
                variant="outline"
                size="lg"
                className="flex-1 text-base"
                onClick={() => router.push("/dashboard/reading")}
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
        style={{
          backgroundColor: theme.bg,
          borderBottom: `1px solid ${theme.border}`,
        }}
      >
        <div className="flex items-center gap-4">
          <Button
            variant="outline"
            size="default"
            onClick={() =>
              isReviewMode
                ? router.push(`/dashboard/results/${reviewAttemptId}`)
                : router.push("/dashboard/reading")
            }
            className="flex items-center gap-2 text-base px-3"
          >
            <ArrowLeft className="h-5 w-5" />
            <span>Back</span>
          </Button>
          <div className="bg-red-600 text-white px-4 py-[3.5px] text-lg font-bold rounded">
            IELTS
          </div>
          <span className="text-lg" style={{ color: theme.textMuted }}>
            ID: {attemptId?.slice(0, 5) || "-----"}
          </span>
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
              width: `${(timeRemaining / totalTime) * 100}%`,
            }}
          />
        </div>
      )}

      {/* Part instruction sub-header */}
      <div
        className="shrink-0 px-6 py-2.5"
        style={{
          backgroundColor: theme.bgAlt,
          borderBottom: `1px solid ${theme.border}`,
        }}
      >
        <p className="font-bold text-lg">Part {activePassageIndex + 1}</p>
        <p style={{ color: theme.textMuted }}>
          Read the text and answer questions {firstQuestionNum}-
          {lastQuestionNum}.
        </p>
      </div>

      {/* Main Content - Split View */}
      <div className="flex-1 min-h-0">
        <SplitView
          leftPanel={
            <PassageDisplay
              title={currentPassage.title}
              content={currentPassage.content}
              highlight={theme.highlight}
            />
          }
          rightPanel={
            <div
              className="p-6 space-y-6"
              style={{ backgroundColor: theme.bg }}
            >
              {questionGroups.map((group, groupIndex) => (
                <div key={groupIndex}>
                  <div className="mb-4">
                    <h3 className="font-bold text-base mb-2">
                      Questions {group.startNum}-{group.endNum}
                    </h3>
                    <p
                      className="text-sm leading-relaxed"
                      style={{ color: theme.textMuted }}
                    >
                      {getTypeInstruction(group.type)}
                    </p>
                  </div>
                  <div className="space-y-6">
                    {group.questions.map((question) => {
                      const globalIdx =
                        currentPassage.questions.indexOf(question);
                      return (
                        <div key={question.id}>
                          {renderQuestion(question, globalIdx)}
                        </div>
                      );
                    })}
                  </div>
                  {groupIndex < questionGroups.length - 1 && (
                    <hr
                      className="my-6"
                      style={{ borderColor: theme.border }}
                    />
                  )}
                </div>
              ))}
            </div>
          }
        />
      </div>

      {/* Bottom Navigation Bar */}
      <div
        className="shrink-0 h-14 flex items-center px-4 gap-0"
        style={{
          backgroundColor: theme.bg,
          borderTop: `1px solid ${theme.border}`,
        }}
      >
        <div className="flex items-center justify-between flex-1 min-w-0 overflow-x-auto">
          {passages.map((passage, passageIdx) => {
            const passageOffset = passages
              .slice(0, passageIdx)
              .reduce((acc, p) => acc + p.questions.length, 0);
            const isActivePart = passage.id === activePassageId;
            const passageAnswered = passage.questions.filter(
              (q) => !!answers[q.id]?.answer?.trim(),
            ).length;

            return (
              <div key={passage.id} className="flex items-center">
                {passageIdx > 0 && (
                  <div
                    className="w-px h-6 mx-3"
                    style={{ backgroundColor: theme.border }}
                  />
                )}

                {isActivePart ? (
                  <div className="flex items-center gap-1.5">
                    <span
                      className="text-sm font-bold mr-1 whitespace-nowrap"
                      style={{ color: theme.text }}
                    >
                      Part {passageIdx + 1}
                    </span>
                    {passage.questions.map((q, idx) => {
                      const qNum = passageOffset + idx + 1;
                      const isAnswered = !!answers[q.id]?.answer?.trim();
                      const isActiveQ = activeQuestionNumber === qNum;
                      return (
                        <button
                          key={q.id}
                          onClick={() => goToQuestion(qNum)}
                          className="cursor-pointer w-8 h-8 text-xs font-medium rounded-sm transition-colors"
                          style={{
                            border: `1px solid ${isActiveQ ? theme.text : theme.border}`,
                            backgroundColor: isAnswered
                              ? theme.bgAlt
                              : theme.bg,
                            color: theme.text,
                            opacity: isAnswered || isActiveQ ? 1 : 0.6,
                          }}
                        >
                          {qNum}
                        </button>
                      );
                    })}
                  </div>
                ) : (
                  <button
                    onClick={() => setActivePassageId(passage.id)}
                    className="flex items-center gap-2 px-2 py-1 rounded transition-opacity hover:opacity-80 whitespace-nowrap"
                  >
                    <span
                      className="text-sm font-bold"
                      style={{ color: theme.text }}
                    >
                      Part {passageIdx + 1}
                    </span>
                    <span
                      className="text-sm"
                      style={{ color: theme.textMuted }}
                    >
                      {passageAnswered} of {passage.questions.length}
                    </span>
                  </button>
                )}
              </div>
            );
          })}
        </div>

        {!isReviewMode && (
          <button
            onClick={() => setShowSubmitDialog(true)}
            className="cursor-pointer shrink-0 ml-3 w-10 h-10 bg-gray-800 hover:bg-gray-900 text-white rounded flex items-center justify-center transition-colors"
          >
            <Check className="h-5 w-5" />
          </button>
        )}
      </div>

      <SubmitDialog
        open={showSubmitDialog}
        onOpenChange={setShowSubmitDialog}
        onConfirm={handleSubmit}
        answeredCount={answeredCount}
        totalQuestions={totalQuestions}
        isSubmitting={isSubmitting}
        timeUp={isTimeUp}
      />
    </div>
  );
}
