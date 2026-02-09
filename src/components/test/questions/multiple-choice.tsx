'use client'

import { RadioGroup, RadioGroupItem } from '@/components/ui/radio-group'
import { Label } from '@/components/ui/label'
import { cn } from '@/lib/utils'
import { CheckCircle, XCircle } from 'lucide-react'

interface MultipleChoiceProps {
  questionId: string
  questionNumber: number
  questionText: string
  options: string[]
  value: string
  onChange: (value: string) => void
  disabled?: boolean
  reviewMode?: boolean
  correctAnswer?: string
  isCorrect?: boolean
  isUnanswered?: boolean
}

export function MultipleChoice({
  questionId,
  questionNumber,
  questionText,
  options,
  value,
  onChange,
  disabled,
  reviewMode,
  correctAnswer,
  isCorrect,
  isUnanswered,
}: MultipleChoiceProps) {
  const getQuestionBadge = () => {
    if (!reviewMode) return null

    if (isUnanswered) {
      return <span className="ml-2 text-xs px-2 py-1 rounded bg-red-100 dark:bg-red-950/30 text-red-600 dark:text-red-400">Unanswered</span>
    }

    if (isCorrect) {
      return <CheckCircle className="ml-2 h-5 w-5 text-green-600 inline" />
    } else {
      return <XCircle className="ml-2 h-5 w-5 text-red-600 inline" />
    }
  }

  return (
    <div id={`question-${questionId}`} className="space-y-3">
      <div className="flex gap-2 items-start">
        <span className="flex h-6 w-6 shrink-0 items-center justify-center rounded bg-gray-200 text-xs font-bold text-gray-700">
          {questionNumber}
        </span>
        <p className="text-sm leading-relaxed text-gray-800">
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
        {options.map((option, index) => {
          const optionLetter = String.fromCharCode(65 + index)
          const isUserAnswer = value === optionLetter
          return (
            <div
              key={`${questionId}-${index}`}
              className={cn(
                'flex items-center space-x-3 rounded-lg border p-4 transition-colors',
                !disabled && 'cursor-pointer',
                reviewMode && isUserAnswer && isCorrect && 'border-green-500 bg-green-50 dark:bg-green-950/20',
                reviewMode && isUserAnswer && !isCorrect && 'border-red-500 bg-red-50 dark:bg-red-950/20',
                !reviewMode && value === optionLetter && 'border-primary bg-primary/5',
                !reviewMode && !value && 'hover:bg-muted/50'
              )}
              onClick={() => !disabled && onChange(optionLetter)}
            >
              <RadioGroupItem
                value={optionLetter}
                id={`${questionId}-${optionLetter}`}
              />
              <Label
                htmlFor={`${questionId}-${optionLetter}`}
                className={cn("flex-1", !disabled && "cursor-pointer")}
              >
                <span className="font-semibold mr-2">{optionLetter}.</span>
                {option}
              </Label>
            </div>
          )
        })}
      </RadioGroup>
    </div>
  )
}
