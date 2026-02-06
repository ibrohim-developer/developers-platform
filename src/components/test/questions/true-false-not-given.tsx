'use client'

import { RadioGroup, RadioGroupItem } from '@/components/ui/radio-group'
import { Label } from '@/components/ui/label'
import { cn } from '@/lib/utils'

interface TrueFalseNotGivenProps {
  questionId: string
  questionNumber: number
  questionText: string
  value: string
  onChange: (value: string) => void
  disabled?: boolean
}

const options = [
  { value: 'TRUE', label: 'True' },
  { value: 'FALSE', label: 'False' },
  { value: 'NOT_GIVEN', label: 'Not Given' },
]

export function TrueFalseNotGiven({
  questionId,
  questionNumber,
  questionText,
  value,
  onChange,
  disabled,
}: TrueFalseNotGivenProps) {
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
        className="ml-10 flex gap-4"
      >
        {options.map((option) => (
          <div
            key={option.value}
            className={cn(
              'flex items-center gap-2 rounded-lg border px-4 py-3 transition-colors cursor-pointer',
              value === option.value
                ? 'border-primary bg-primary/5'
                : 'hover:bg-muted/50'
            )}
            onClick={() => !disabled && onChange(option.value)}
          >
            <RadioGroupItem value={option.value} id={`${questionId}-${option.value}`} />
            <Label
              htmlFor={`${questionId}-${option.value}`}
              className="cursor-pointer font-medium"
            >
              {option.label}
            </Label>
          </div>
        ))}
      </RadioGroup>
    </div>
  )
}
