"use client";

import { use, useState, useCallback, Suspense } from "react";
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
import { ReloadWarningDialog } from "@/components/test/common/reload-warning-dialog";
import { SplitView } from "@/components/test/reading/split-view";
import { PassageDisplay } from "@/components/test/reading/passage-display";
import { MultipleChoice } from "@/components/test/questions/multiple-choice";
import { TrueFalseNotGiven } from "@/components/test/questions/true-false-not-given";
import { FillInBlank } from "@/components/test/questions/fill-in-blank";
import { useTestStore } from "@/stores/test-store";
import { TEST_CONFIG } from "@/lib/constants/test-config";
import { getTypeInstruction } from "@/lib/constants/reading-instructions";
import { useReadingTest } from "@/hooks/use-reading-test";
import { useFullscreen } from "@/hooks/use-fullscreen";
import { useNavigationProtection } from "@/hooks/use-navigation-protection";
import { useQuestionNavigation } from "@/hooks/use-question-navigation";
import {
  Send,
  Loader2,
  Clock,
  BookOpen,
  ArrowLeft,
  Maximize2,
  Minimize2,
  Bell,
  Menu,
  PenSquare,
  ChevronLeft,
  ChevronRight,
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

  const { resumeTimer } = useTestStore();
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
    attemptId,
    answers,
    answeredCount,
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

  const [showReloadWarning, setShowReloadWarning] = useState(false);

  useNavigationProtection({
    enabled: hasStarted && !isReviewMode,
    onShowWarning: useCallback(() => setShowReloadWarning(true), []),
  });

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
      case "multiple_choice":
        return (
          <MultipleChoice
            key={question.id}
            {...commonProps}
            options={question.options ?? []}
          />
        );
      case "true_false_not_given":
        return <TrueFalseNotGiven key={question.id} {...commonProps} />;
      case "fill_in_blank":
      case "sentence_completion":
        return <FillInBlank key={question.id} {...commonProps} />;
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
        <Card className="max-w-2xl w-full mx-4">
          <CardHeader>
            <CardTitle className="text-2xl">IELTS Reading Test</CardTitle>
            <CardDescription>
              Please read the instructions carefully before starting
            </CardDescription>
          </CardHeader>
          <CardContent className="space-y-6">
            <div className="space-y-4">
              <div className="flex items-start gap-3">
                <div className="w-8 h-8 rounded-full bg-primary/10 flex items-center justify-center shrink-0">
                  <Clock className="h-4 w-4 text-primary" />
                </div>
                <div>
                  <p className="font-medium">Time Limit</p>
                  <p className="text-sm text-muted-foreground">
                    You have {TEST_CONFIG.reading.totalTime / 60} minutes to
                    complete this test
                  </p>
                </div>
              </div>

              <div className="flex items-start gap-3">
                <div className="w-8 h-8 rounded-full bg-primary/10 flex items-center justify-center shrink-0">
                  <BookOpen className="h-4 w-4 text-primary" />
                </div>
                <div>
                  <p className="font-medium">Reading Passages</p>
                  <p className="text-sm text-muted-foreground">
                    This test contains {passages.length} passage
                    {passages.length > 1 ? "s" : ""} with {totalQuestions}{" "}
                    questions total
                  </p>
                </div>
              </div>

              <div className="flex items-start gap-3">
                <div className="w-8 h-8 rounded-full bg-primary/10 flex items-center justify-center shrink-0">
                  <Send className="h-4 w-4 text-primary" />
                </div>
                <div>
                  <p className="font-medium">Instructions</p>
                  <ul className="text-sm text-muted-foreground space-y-1 mt-1 list-disc list-inside">
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
                className="flex-1"
                onClick={() => router.push("/dashboard/reading")}
              >
                Cancel
              </Button>
              <Button
                className="flex-1"
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

  return (
    <div className="h-screen bg-white flex flex-col overflow-hidden">
      {/* Top Header Bar */}
      <header className="shrink-0 bg-white border-b border-gray-200 h-12 flex items-center px-4 justify-between">
        <div className="flex items-center gap-3">
          <button
            onClick={() =>
              isReviewMode
                ? router.push(`/dashboard/results/${reviewAttemptId}`)
                : router.push("/dashboard/reading")
            }
            className="flex items-center gap-1 text-gray-700 hover:text-gray-900 text-sm"
          >
            <ArrowLeft className="h-4 w-4" />
            <span>Back</span>
          </button>
          <div className="bg-red-600 text-white px-3 py-0.5 text-sm font-bold rounded">
            IELTS
          </div>
          <span className="text-gray-500 text-sm">
            ID: {attemptId?.slice(0, 5) || "-----"}
          </span>
        </div>

        <div className="flex items-center gap-3">
          {!isReviewMode && (
            <>
              <TestTimer
                onTimeUp={handleTimeUp}
                className="bg-transparent text-gray-800 px-2 py-1 text-base"
              />
              <button
                onClick={() => setShowSubmitDialog(true)}
                className="bg-red-500 hover:bg-red-600 text-white text-sm font-medium px-4 py-1 rounded transition-colors"
              >
                Start
              </button>
            </>
          )}
        </div>

        <div className="flex items-center gap-2">
          <button
            onClick={toggleFullscreen}
            className="p-1.5 text-gray-500 hover:text-gray-700 transition-colors"
          >
            {isFullscreen ? (
              <Minimize2 className="h-5 w-5" />
            ) : (
              <Maximize2 className="h-5 w-5" />
            )}
          </button>
          <button className="p-1.5 text-gray-500 hover:text-gray-700 transition-colors">
            <Bell className="h-5 w-5" />
          </button>
          <button className="p-1.5 text-gray-500 hover:text-gray-700 transition-colors">
            <Menu className="h-5 w-5" />
          </button>
          <button className="p-1.5 text-gray-500 hover:text-gray-700 transition-colors">
            <PenSquare className="h-5 w-5" />
          </button>
        </div>
      </header>

      {/* Part instruction sub-header */}
      <div className="shrink-0 bg-gray-100 border-b border-gray-200 px-6 py-2.5">
        <p className="font-bold text-sm text-gray-900">
          Part {activePassageIndex + 1}
        </p>
        <p className="text-sm text-gray-700">
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
            />
          }
          rightPanel={
            <div className="p-6 space-y-6 bg-white">
              {questionGroups.map((group, groupIndex) => (
                <div key={groupIndex}>
                  <div className="mb-4">
                    <h3 className="font-bold text-base text-gray-900 mb-2">
                      Questions {group.startNum}-{group.endNum}
                    </h3>
                    <p className="text-sm text-gray-700 leading-relaxed">
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
                    <hr className="my-6 border-gray-200" />
                  )}
                </div>
              ))}
            </div>
          }
        />
      </div>

      {/* Bottom Navigation Bar */}
      <div className="shrink-0 bg-white border-t border-gray-200 h-10 flex items-center px-4 justify-between">
        <div className="flex items-center gap-1">
          <span className="text-sm font-bold text-gray-700 mr-2">
            Part {activePassageIndex + 1}
          </span>
          {currentPassage.questions.map((q, idx) => {
            const qNum = questionOffset + idx + 1;
            const isAnswered = !!answers[q.id]?.answer?.trim();
            const isActive = activeQuestionNumber === qNum;
            return (
              <button
                key={q.id}
                onClick={() => goToQuestion(qNum)}
                className={`w-7 h-7 text-xs font-medium rounded-sm border transition-colors ${
                  isActive
                    ? "border-blue-500 bg-white text-blue-600 font-bold"
                    : isAnswered
                      ? "border-gray-300 bg-gray-100 text-gray-700"
                      : "border-gray-300 bg-white text-gray-600"
                }`}
              >
                {qNum}
              </button>
            );
          })}
        </div>

        <div className="flex items-center gap-1">
          <button
            onClick={goToPrevQuestion}
            className="w-8 h-8 flex items-center justify-center bg-gray-700 text-white rounded-sm hover:bg-gray-600 transition-colors"
          >
            <ChevronLeft className="h-4 w-4" />
          </button>
          <button
            onClick={goToNextQuestion}
            className="w-8 h-8 flex items-center justify-center bg-gray-700 text-white rounded-sm hover:bg-gray-600 transition-colors"
          >
            <ChevronRight className="h-4 w-4" />
          </button>
          {!isReviewMode && (
            <button
              onClick={() => setShowSubmitDialog(true)}
              className="w-8 h-8 flex items-center justify-center bg-white border border-gray-300 text-gray-600 rounded-sm hover:bg-gray-50 transition-colors ml-2"
            >
              <Check className="h-4 w-4" />
            </button>
          )}
        </div>
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

      <ReloadWarningDialog
        open={showReloadWarning}
        onOpenChange={setShowReloadWarning}
        onConfirm={() => {
          setShowReloadWarning(false);
          window.history.go(-2);
        }}
      />
    </div>
  );
}
