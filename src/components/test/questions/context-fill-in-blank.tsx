"use client";

import { Input } from "@/components/ui/input";
import { CheckCircle, XCircle } from "lucide-react";
import { cn } from "@/lib/utils";

interface QuestionData {
  questionId: string;
  questionNumber: number;
  value: string;
  onChange: (value: string) => void;
  disabled?: boolean;
  reviewMode?: boolean;
  correctAnswer?: string;
  isCorrect?: boolean;
  isUnanswered?: boolean;
}

interface ContextFillInBlankProps {
  contextHtml: string;
  questions: QuestionData[];
}

export function ContextFillInBlank({
  contextHtml,
  questions,
}: ContextFillInBlankProps) {
  // Split the HTML context on blank markers (______ with 3+ underscores)
  const parts = contextHtml.split(/_{3,}/);

  // We need (parts.length - 1) inputs, one between each pair of parts
  // Map each blank to the corresponding question in order
  return (
    <div className="space-y-1">
      {parts.map((htmlPart, index) => {
        const question = index < parts.length - 1 ? questions[index] : null;

        return (
          <span key={index} className="context-fill-segment">
            <span
              dangerouslySetInnerHTML={{ __html: htmlPart }}
            />
            {question && (
              <span className="inline-flex items-center gap-1 mx-1 align-middle">
                <span className="inline-flex h-5 w-5 shrink-0 items-center justify-center rounded bg-gray-200 text-[10px] font-bold text-gray-700">
                  {question.questionNumber}
                </span>
                <Input
                  id={`question-${question.questionId}`}
                  value={
                    question.reviewMode && question.isUnanswered
                      ? "N/A"
                      : question.value
                  }
                  onChange={(e) => question.onChange(e.target.value)}
                  className={cn(
                    "inline-block w-36 h-7 text-center text-sm",
                    question.reviewMode &&
                      question.isCorrect &&
                      "border-green-500 bg-green-50 dark:bg-green-950/20",
                    question.reviewMode &&
                      !question.isCorrect &&
                      !question.isUnanswered &&
                      "border-red-500 bg-red-50 dark:bg-red-950/20",
                    question.reviewMode &&
                      question.isUnanswered &&
                      "border-red-400 bg-red-50 dark:bg-red-950/20 text-red-500",
                  )}
                  placeholder="..."
                  disabled={question.disabled}
                />
                {question.reviewMode && (
                  <>
                    {question.isUnanswered ? (
                      <span className="text-[10px] px-1.5 py-0.5 rounded bg-red-100 dark:bg-red-950/30 text-red-600 dark:text-red-400">
                        Unanswered
                      </span>
                    ) : question.isCorrect ? (
                      <CheckCircle className="h-4 w-4 text-green-600 shrink-0" />
                    ) : (
                      <>
                        <XCircle className="h-4 w-4 text-red-600 shrink-0" />
                        <span className="text-xs text-green-700 dark:text-green-400 font-medium">
                          {question.correctAnswer}
                        </span>
                      </>
                    )}
                  </>
                )}
              </span>
            )}
          </span>
        );
      })}
    </div>
  );
}
