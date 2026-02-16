"use client";

import { use, useState, useCallback, Suspense, useMemo } from "react";
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
import { TestOptionsMenu } from "@/components/test/common/test-options-menu";
import { AudioPlayer } from "@/components/test/listening/audio-player";
import { MultipleChoice } from "@/components/test/questions/multiple-choice";
import { FillInBlank } from "@/components/test/questions/fill-in-blank";
import { useTestStore } from "@/stores/test-store";
import { TEST_CONFIG } from "@/lib/constants/test-config";
import { useListeningTest } from "@/hooks/use-listening-test";
import { useFullscreen } from "@/hooks/use-fullscreen";
import { useNavigationProtection } from "@/hooks/use-navigation-protection";
import { useQuestionNavigation } from "@/hooks/use-question-navigation";
import { useTestOptions } from "@/hooks/use-test-options";
import {
  Send,
  Loader2,
  Clock,
  Headphones,
  ArrowLeft,
  Maximize2,
  Minimize2,
} from "lucide-react";

interface Question {
  id: string;
  questionNumber: number;
  type: string;
  text: string;
  options: string[] | null;
  metadata: Record<string, unknown> | null;
}

interface Section {
  id: string;
  sectionNumber: number;
  audioUrl: string;
  audioDurationSeconds: number;
  transcript: string;
  questions: Question[];
}

export default function ListeningTestPage({
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
      <ListeningTestContent testId={testId} />
    </Suspense>
  );
}

function ListeningTestContent({ testId }: { testId: string }) {
  const router = useRouter();
  const searchParams = useSearchParams();
  const isReviewMode = searchParams.get("review") === "true";
  const reviewAttemptId = searchParams.get("attemptId");

  const { resumeTimer, timeRemaining } = useTestStore();
  const { isFullscreen, toggleFullscreen } = useFullscreen();

  const {
    sections,
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
    activeSectionId,
    attemptId,
    answers,
    answeredCount,
    handleAnswer,
    handleSubmit,
    handleTimeUp,
  } = useListeningTest(testId, isReviewMode, reviewAttemptId);

  const sectionPassages = useMemo(
    () =>
      sections.map((section: Section) => ({
        id: section.id,
        passageNumber: section.sectionNumber,
        title: `Section ${section.sectionNumber}`,
        content: section.transcript || "",
        wordCount: null,
        questions: section.questions,
      })),
    [sections],
  );

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
  } = useQuestionNavigation(sectionPassages, activeSectionId);

  const currentSection =
    sections.find((section) => section.id === activeSectionId) ?? null;

  const [showReloadWarning, setShowReloadWarning] = useState(false);
  const testOptions = useTestOptions();

  useNavigationProtection({
    enabled: hasStarted && !isReviewMode,
    onShowWarning: useCallback(() => setShowReloadWarning(true), []),
  });

  const getTypeInstruction = (type: string) => {
    switch (type) {
      case "multiple_choice":
        return "Choose the correct answer.";
      case "fill_in_blank":
      case "sentence_completion":
        return "Write NO MORE THAN TWO WORDS AND/OR A NUMBER for each answer.";
      default:
        return "";
    }
  };

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
            onClick={() => router.push("/dashboard/listening")}
          >
            Back to Listening Tests
          </Button>
        </div>
      </div>
    );
  }

  if (!currentSection || !currentPassage) return null;

  if (!hasStarted) {
    return (
      <div className="min-h-screen bg-muted/30 flex items-center justify-center">
        <Card className="max-w-3xl w-full mx-4">
          <CardHeader className="px-8 pt-5 pb-4">
            <CardTitle className="text-3xl">IELTS Listening Test</CardTitle>
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
                    You have {TEST_CONFIG.reading.totalTime / 60} minutes to
                    complete this test
                  </p>
                </div>
              </div>

              <div className="flex items-start gap-4">
                <div className="w-10 h-10 rounded-full bg-primary/10 flex items-center justify-center shrink-0">
                  <Headphones className="h-5 w-5 text-primary" />
                </div>
                <div>
                  <p className="font-medium text-lg">Listening Sections</p>
                  <p className="text-base text-muted-foreground">
                    This test contains {sections.length} section
                    {sections.length > 1 ? "s" : ""} with {totalQuestions}{" "}
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
                    <li>Audio will start automatically when you begin.</li>
                    <li>
                      Listen carefully: audio plays once and cannot be paused.
                    </li>
                    <li>Answer while listening or after audio finishes.</li>
                    <li>
                      The timer starts when you click &quot;Begin Test&quot;.
                    </li>
                  </ul>
                </div>
              </div>
            </div>

            <div className="flex gap-3 pt-4">
              <Button
                variant="outline"
                size="lg"
                className="flex-1 text-base"
                onClick={() => router.push("/dashboard/listening")}
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
                : router.push("/dashboard/listening")
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
              width: `${(timeRemaining / TEST_CONFIG.listening.totalTime) * 100}%`,
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
          Listen and answer questions {firstQuestionNum}-{lastQuestionNum}.
        </p>
      </div>

      <div className="flex-1 min-h-0 overflow-y-auto">
        <div className="max-w-4xl mx-auto p-6 space-y-6">
          {!isReviewMode && (
            <div className="hidden">
              <AudioPlayer audioUrl={currentSection.audioUrl} examMode />
            </div>
          )}

          {questionGroups.map((group, groupIndex) => (
            <div key={groupIndex}>
              <div className="mb-4">
                <h3 className="font-bold text-base mb-1">
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
                  const globalIdx = currentPassage.questions.indexOf(question);
                  return (
                    <div key={question.id} id={`question-${question.id}`}>
                      {renderQuestion(question, globalIdx)}
                    </div>
                  );
                })}
              </div>

              {groupIndex < questionGroups.length - 1 && (
                <hr className="my-6" style={{ borderColor: theme.border }} />
              )}
            </div>
          ))}
        </div>
      </div>

      <div
        className="shrink-0 h-14 flex items-center px-6 justify-between"
        style={{
          backgroundColor: theme.bg,
          borderTop: `1px solid ${theme.border}`,
        }}
      >
        <div className="flex items-center gap-1.5">
          <span
            className="text-base font-bold mr-3"
            style={{ color: theme.textMuted }}
          >
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
                className="w-9 h-9 text-sm font-medium rounded-sm transition-colors"
                style={{
                  border: `1px solid ${theme.border}`,
                  backgroundColor: isAnswered ? theme.bgAlt : theme.bg,
                  color: theme.text,
                  opacity: isAnswered ? 1 : 0.7,
                }}
              >
                {qNum}
              </button>
            );
          })}
        </div>

        <div className="flex items-center gap-2">
          {!isReviewMode && (
            <Button
              variant="default"
              size="default"
              onClick={() => setShowSubmitDialog(true)}
              className="ml-3 text-base px-6"
            >
              Submit
            </Button>
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
