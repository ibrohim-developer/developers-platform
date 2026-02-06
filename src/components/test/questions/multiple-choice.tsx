'use client'

import { RadioGroup, RadioGroupItem } from '@/components/ui/radio-group'
import { Label } from '@/components/ui/label'
import { cn } from '@/lib/utils'

interface MultipleChoiceProps {
  questionId: string
  questionNumber: number
  questionText: string
  options: string[]
  value: string
  onChange: (value: string) => void
  disabled?: boolean
}

export function MultipleChoice({
  questionId,
  questionNumber,
  questionText,
  options,
  value,
  onChange,
  disabled,
}: MultipleChoiceProps) {
  return (
    <div className="space-y-4">
      <div className="flex gap-3">
        <span className="flex h-7 w-7 shrink-0 items-center justify-center rounded-full bg-primary text-sm font-medium text-primary-foreground">
          {questionNumber}
        </span>
        <p className="text-base leading-relaxed">{questionText}</p>
      </div>

      <RadioGroup
        value={value}
        onValueChange={onChange}
        disabled={disabled}
        className="ml-10 space-y-3"
      >
        {options.map((option, index) => {
          const optionLetter = String.fromCharCode(65 + index)
          return (
            <div
              key={`${questionId}-${index}`}
              className={cn(
                'flex items-center space-x-3 rounded-lg border p-4 transition-colors cursor-pointer',
                value === optionLetter
                  ? 'border-primary bg-primary/5'
                  : 'hover:bg-muted/50'
              )}
              onClick={() => !disabled && onChange(optionLetter)}
            >
              <RadioGroupItem
                value={optionLetter}
                id={`${questionId}-${optionLetter}`}
              />
              <Label
                htmlFor={`${questionId}-${optionLetter}`}
                className="flex-1 cursor-pointer"
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
