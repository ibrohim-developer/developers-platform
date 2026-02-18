"use client";

import { RadioGroup, RadioGroupItem } from "@/components/ui/radio-group";
import { Label } from "@/components/ui/label";
import { cn } from "@/lib/utils";
import { CheckCircle, XCircle } from "lucide-react";

interface TrueFalseNotGivenProps {
  questionId: string;
  questionNumber: number;
  questionText: string;
  value: string;
  onChange: (value: string) => void;
  disabled?: boolean;
  reviewMode?: boolean;
  correctAnswer?: string;
  isCorrect?: boolean;
  isUnanswered?: boolean;
}

const options = [
  { value: "TRUE", label: "TRUE" },
  { value: "FALSE", label: "FALSE" },
  { value: "NOT_GIVEN", label: "NOT GIVEN" },
];

export function TrueFalseNotGiven({
  questionId,
  questionNumber,
  questionText,
  value,
  onChange,
  disabled,
  reviewMode,
  correctAnswer,
  isCorrect,
  isUnanswered,
}: TrueFalseNotGivenProps) {
  const getQuestionBadge = () => {
    if (!reviewMode) return null;

    if (isUnanswered) {
      return (
        <span className="ml-2 text-xs px-2 py-1 rounded bg-red-100 dark:bg-red-950/30 text-red-600 dark:text-red-400">
          Unanswered
        </span>
      );
    }

    if (isCorrect) {
      return <CheckCircle className="ml-2 h-5 w-5 text-green-600 inline" />;
    } else {
      return <XCircle className="ml-2 h-5 w-5 text-red-600 inline" />;
    }
  };

  return (
    <div id={`question-${questionId}`} className="space-y-3">
      <div className="flex gap-2 items-start">
        <span className="flex h-6 w-6 shrink-0 items-center justify-center rounded bg-gray-200 text-xs font-bold text-gray-700">
          {questionNumber}
        </span>
        <p className="text-sm leading-relaxed">
          {questionText}
          {getQuestionBadge()}
        </p>
      </div>

      <RadioGroup
        value={value}
        onValueChange={onChange}
        disabled={disabled}
        className="ml-8 space-y-2"
      >
        {options.map((option) => {
          const isUserAnswer = value === option.value;
          return (
            <div
              key={option.value}
              className={cn(
                "flex items-center gap-2",
                !disabled && "cursor-pointer",
                reviewMode && isUserAnswer && isCorrect && "text-green-600",
                reviewMode && isUserAnswer && !isCorrect && "text-red-600",
              )}
              onClick={() => !disabled && onChange(option.value)}
            >
              <RadioGroupItem
                value={option.value}
                id={`${questionId}-${option.value}`}
                className="border-gray-400 data-[state=checked]:border-gray-700"
              />
              <Label
                htmlFor={`${questionId}-${option.value}`}
                className={cn(
                  "text-sm font-normal",
                  !disabled && "cursor-pointer",
                )}
              >
                {option.label}
              </Label>
            </div>
          );
        })}
      </RadioGroup>
    </div>
  );
}
