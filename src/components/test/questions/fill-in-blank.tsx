'use client'

import { Input } from '@/components/ui/input'

interface FillInBlankProps {
  questionId: string
  questionNumber: number
  questionText: string
  value: string
  onChange: (value: string) => void
  disabled?: boolean
}

export function FillInBlank({
  questionId,
  questionNumber,
  questionText,
  value,
  onChange,
  disabled,
}: FillInBlankProps) {
  // Check if question has inline blank (marked with _____)
  const hasInlineBlank = questionText.includes('_____')

  if (hasInlineBlank) {
    const parts = questionText.split('_____')
    return (
      <div className="space-y-4">
        <div className="flex gap-3">
          <span className="flex h-7 w-7 shrink-0 items-center justify-center rounded-full bg-primary text-sm font-medium text-primary-foreground">
            {questionNumber}
          </span>
          <div className="text-base leading-relaxed flex flex-wrap items-center gap-1">
            {parts.map((part, index) => (
              <span key={index} className="inline-flex items-center gap-1">
                {part}
                {index < parts.length - 1 && (
                  <Input
                    value={value}
                    onChange={(e) => onChange(e.target.value)}
                    className="inline-block w-32 h-8 text-center mx-1"
                    placeholder="..."
                    disabled={disabled}
                  />
                )}
              </span>
            ))}
          </div>
        </div>
      </div>
    )
  }

  return (
    <div className="space-y-4">
      <div className="flex gap-3">
        <span className="flex h-7 w-7 shrink-0 items-center justify-center rounded-full bg-primary text-sm font-medium text-primary-foreground">
          {questionNumber}
        </span>
        <p className="text-base leading-relaxed">{questionText}</p>
      </div>
      <div className="ml-10">
        <Input
          value={value}
          onChange={(e) => onChange(e.target.value)}
          placeholder="Type your answer here..."
          className="max-w-md"
          disabled={disabled}
        />
      </div>
    </div>
  )
}
