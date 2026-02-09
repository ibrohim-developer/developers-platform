'use client'

import { useState, useEffect, useCallback } from 'react'
import { useRouter, useSearchParams } from 'next/navigation'
import { Button } from '@/components/ui/button'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { TestTimer } from '@/components/test/common/test-timer'
import { SubmitDialog } from '@/components/test/common/submit-dialog'
import { ReloadWarningDialog } from '@/components/test/common/reload-warning-dialog'
import { AudioPlayer } from '@/components/test/listening/audio-player'
import { MultipleChoice } from '@/components/test/questions/multiple-choice'
import { FillInBlank } from '@/components/test/questions/fill-in-blank'
import { useTestStore } from '@/stores/test-store'
import { TEST_CONFIG } from '@/lib/constants/test-config'
import { Send, Loader2, Clock, Headphones, ArrowLeft } from 'lucide-react'

interface Question {
  id: string
  questionNumber: number
  type: string
  text: string
  options: string[] | null
  metadata: Record<string, unknown> | null
}

interface Section {
  id: string
  sectionNumber: number
  audioUrl: string
  audioDurationSeconds: number
  transcript: string
  questions: Question[]
}

export default function ListeningTestPage() {
  const router = useRouter()
  const searchParams = useSearchParams()
  const testId = searchParams.get('testId')
  const isReviewMode = searchParams.get('review') === 'true'
  const reviewAttemptId = searchParams.get('attemptId')

  const [showSubmitDialog, setShowSubmitDialog] = useState(false)
  const [isSubmitting, setIsSubmitting] = useState(false)
  const [sections, setSections] = useState<Section[]>([])
  const [isLoading, setIsLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)
  const [hasStarted, setHasStarted] = useState(false)
  const [reviewData, setReviewData] = useState<Record<string, { userAnswer: string; correctAnswer: string; isCorrect: boolean }>>({})
  const [unansweredQuestions, setUnansweredQuestions] = useState<Set<string>>(new Set())
  const [showReloadWarning, setShowReloadWarning] = useState(false)

  const {
    attemptId,
    initTest,
    answers,
    setAnswer,
    currentSection,
    goToQuestion,
    resetTest,
    timeRemaining,
    resumeTimer,
  } = useTestStore()

  const loadReviewMode = useCallback(async () => {
    if (!reviewAttemptId) {
      setError('No attempt ID provided for review')
      setIsLoading(false)
      return
    }

    try {
      const res = await fetch(`/api/listening/review?attemptId=${reviewAttemptId}`)

      if (!res.ok) {
        throw new Error('Failed to load review data')
      }

      const data = await res.json()
      setSections(data.sections)

      // Build review data map
      const reviewMap: Record<string, { userAnswer: string; correctAnswer: string; isCorrect: boolean }> = {}
      const unanswered = new Set<string>()

      data.userAnswers.forEach((ua: any) => {
        reviewMap[ua.question_id] = {
          userAnswer: ua.user_answer || '',
          correctAnswer: ua.correct_answer,
          isCorrect: ua.is_correct
        }
        if (!ua.user_answer || ua.user_answer.trim() === '') {
          unanswered.add(ua.question_id)
        }
      })

      setReviewData(reviewMap)
      setUnansweredQuestions(unanswered)
      setHasStarted(true)
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Failed to load review')
    } finally {
      setIsLoading(false)
    }
  }, [reviewAttemptId])

  const startTest = useCallback(async () => {
    if (!testId) {
      setError('No test ID provided')
      setIsLoading(false)
      return
    }

    try {
      const res = await fetch('/api/listening/start', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ testId }),
      })

      if (!res.ok) {
        const data = await res.json()
        throw new Error(data.error || 'Failed to start test')
      }

      const data = await res.json()
      setSections(data.sections)
      // Initialize test but don't start timer yet (false parameter)
      initTest(data.attemptId, testId, 'listening', TEST_CONFIG.listening.totalTime, false)
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Failed to start test')
    } finally {
      setIsLoading(false)
    }
  }, [testId, initTest])

  useEffect(() => {
    if (isReviewMode) {
      loadReviewMode()
    } else {
      startTest()
    }
  }, [isReviewMode, loadReviewMode, startTest])

  // Warn user before reload/leave during active test
  useEffect(() => {
    if (!hasStarted || isReviewMode) return

    const handleBeforeUnload = (e: BeforeUnloadEvent) => {
      e.preventDefault()
    }

    const handleKeyDown = (e: KeyboardEvent) => {
      if (
        e.key === 'F5' ||
        ((e.ctrlKey || e.metaKey) && e.key === 'r')
      ) {
        e.preventDefault()
        setShowReloadWarning(true)
      }
    }

    // Push a state so back button triggers popstate instead of navigating
    window.history.pushState({ testInProgress: true }, '')

    const handlePopState = () => {
      // Re-push state to prevent navigation and show warning
      window.history.pushState({ testInProgress: true }, '')
      setShowReloadWarning(true)
    }

    window.addEventListener('beforeunload', handleBeforeUnload)
    window.addEventListener('keydown', handleKeyDown)
    window.addEventListener('popstate', handlePopState)
    return () => {
      window.removeEventListener('beforeunload', handleBeforeUnload)
      window.removeEventListener('keydown', handleKeyDown)
      window.removeEventListener('popstate', handlePopState)
    }
  }, [hasStarted, isReviewMode])

  const allQuestions = sections.flatMap(s => s.questions)
  const answeredCount = Object.values(answers).filter(a => a.answer.trim() !== '').length
  const totalQuestions = allQuestions.length

  const handleAnswer = (questionId: string, value: string) => {
    setAnswer(questionId, value)
  }

  const handleSubmit = async () => {
    if (!attemptId) return

    setIsSubmitting(true)
    try {
      const answersPayload: Record<string, string> = {}
      Object.entries(answers).forEach(([questionId, answer]) => {
        answersPayload[questionId] = answer.answer
      })

      const timeSpentSeconds = Math.floor((TEST_CONFIG.listening.totalTime - timeRemaining) / 1000)

      const res = await fetch('/api/listening/submit', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ attemptId, answers: answersPayload, timeSpentSeconds }),
      })

      if (!res.ok) {
        const data = await res.json()
        throw new Error(data.error || 'Failed to submit test')
      }

      const result = await res.json()
      resetTest()
      router.push(`/results/${result.attemptId}`)
    } catch (err) {
      alert(err instanceof Error ? err.message : 'Failed to submit test')
      setIsSubmitting(false)
    }
  }

  const handleTimeUp = () => {
    setShowSubmitDialog(true)
  }

  if (isLoading) {
    return (
      <div className="min-h-screen bg-muted/30 flex items-center justify-center">
        <div className="text-center space-y-4">
          <Loader2 className="h-8 w-8 animate-spin mx-auto" />
          <p className="text-muted-foreground">Loading test...</p>
        </div>
      </div>
    )
  }

  if (error) {
    return (
      <div className="min-h-screen bg-muted/30 flex items-center justify-center">
        <Card className="max-w-md">
          <CardHeader>
            <CardTitle>Error</CardTitle>
          </CardHeader>
          <CardContent className="space-y-4">
            <p className="text-destructive">{error}</p>
            <Button onClick={() => router.push('/dashboard/listening')}>
              Back to Tests
            </Button>
          </CardContent>
        </Card>
      </div>
    )
  }

  if (totalQuestions === 0) return null

  // Show start screen before beginning the test
  if (!hasStarted) {
    return (
      <div className="min-h-screen bg-muted/30 flex items-center justify-center">
        <Card className="max-w-2xl w-full mx-4">
          <CardHeader>
            <CardTitle className="text-2xl">IELTS Listening Test</CardTitle>
            <CardDescription>
              Please read the instructions carefully before starting
            </CardDescription>
          </CardHeader>
          <CardContent className="space-y-6">
            <div className="space-y-4">
              <div className="flex items-start gap-3">
                <div className="w-8 h-8 rounded-full bg-primary/10 flex items-center justify-center flex-shrink-0">
                  <Clock className="h-4 w-4 text-primary" />
                </div>
                <div>
                  <p className="font-medium">Time Limit</p>
                  <p className="text-sm text-muted-foreground">
                    You have {TEST_CONFIG.listening.totalTime / 60} minutes to complete this test
                  </p>
                </div>
              </div>

              <div className="flex items-start gap-3">
                <div className="w-8 h-8 rounded-full bg-primary/10 flex items-center justify-center flex-shrink-0">
                  <Headphones className="h-4 w-4 text-primary" />
                </div>
                <div>
                  <p className="font-medium">Listening Sections</p>
                  <p className="text-sm text-muted-foreground">
                    This test contains {sections.length} section{sections.length > 1 ? 's' : ''} with {totalQuestions} questions total
                  </p>
                </div>
              </div>

              <div className="flex items-start gap-3">
                <div className="w-8 h-8 rounded-full bg-primary/10 flex items-center justify-center flex-shrink-0">
                  <Send className="h-4 w-4 text-primary" />
                </div>
                <div>
                  <p className="font-medium">Instructions</p>
                  <ul className="text-sm text-muted-foreground space-y-1 mt-1 list-disc list-inside">
                    <li>Audio will start automatically when you begin the test</li>
                    <li>Listen carefully - audio plays only once and cannot be paused</li>
                    <li>Answer questions while listening or after audio finishes</li>
                    <li>The timer will start when you click "Begin Test"</li>
                  </ul>
                </div>
              </div>
            </div>

            <div className="flex gap-3 pt-4">
              <Button
                variant="outline"
                className="flex-1"
                onClick={() => router.push('/dashboard/listening')}
              >
                Cancel
              </Button>
              <Button
                className="flex-1"
                onClick={() => {
                  setHasStarted(true)
                  resumeTimer()
                }}
              >
                Begin Test
              </Button>
            </div>
          </CardContent>
        </Card>
      </div>
    )
  }

  return (
    <div className="min-h-screen bg-muted/30">
      {/* Header */}
      <header className="sticky top-0 z-50 bg-background border-b">
        <div className="container mx-auto px-4 h-16 flex items-center justify-between">
          <div className="flex items-center gap-4">
            {isReviewMode && (
              <Button
                variant="ghost"
                size="sm"
                onClick={() => router.push(`/results/${reviewAttemptId}`)}
                className="flex items-center gap-2"
              >
                <ArrowLeft className="h-4 w-4" />
                Back to Results
              </Button>
            )}
            <h1 className="text-lg font-semibold">
              IELTS Listening Test {isReviewMode && <span className="text-sm text-muted-foreground">(Review Mode)</span>}
            </h1>
            {!isReviewMode && (
              <span className="text-sm text-muted-foreground">
                {answeredCount} of {totalQuestions} answered
              </span>
            )}
          </div>
          {!isReviewMode && (
            <div className="flex items-center gap-4">
              <TestTimer onTimeUp={handleTimeUp} />
              <Button onClick={() => setShowSubmitDialog(true)}>
                <Send className="mr-2 h-4 w-4" />
                Submit
              </Button>
            </div>
          )}
        </div>
      </header>

      <div className="container mx-auto px-4 py-6 max-w-4xl">
        <div className="space-y-8">
          {sections.map((section) => (
            <div key={section.id} className="space-y-6">
              {/* Audio Player for each section */}
              <Card>
                <CardHeader>
                  <CardTitle>Section {section.sectionNumber} Audio</CardTitle>
                  <CardDescription>{section.transcript}</CardDescription>
                </CardHeader>
                <CardContent>
                  <AudioPlayer
                    audioUrl={section.audioUrl}
                    examMode={!isReviewMode}
                  />
                </CardContent>
              </Card>

              {/* All questions for this section */}
              <Card>
                <CardHeader>
                  <CardTitle>Section {section.sectionNumber} Questions</CardTitle>
                </CardHeader>
                <CardContent className="space-y-6">
                  {section.questions.map((question) => {
                    const review = reviewData[question.id]
                    const value = isReviewMode ? (review?.userAnswer || '') : (answers[question.id]?.answer || '')

                    const commonProps = {
                      questionId: question.id,
                      questionNumber: question.questionNumber,
                      questionText: question.text,
                      value,
                      onChange: (value: string) => handleAnswer(question.id, value),
                      disabled: isReviewMode,
                      reviewMode: isReviewMode,
                      correctAnswer: review?.correctAnswer,
                      isCorrect: review?.isCorrect,
                      isUnanswered: unansweredQuestions.has(question.id),
                    }

                    return (
                      <div key={question.id} className="border-b pb-6 last:border-b-0 last:pb-0">
                        {question.type === 'multiple_choice' && (
                          <MultipleChoice
                            {...commonProps}
                            options={question.options || []}
                          />
                        )}
                        {question.type === 'fill_in_blank' && (
                          <FillInBlank
                            {...commonProps}
                          />
                        )}
                      </div>
                    )
                  })}
                </CardContent>
              </Card>
            </div>
          ))}

          {/* Submit Button at the bottom */}
          {!isReviewMode && (
            <div className="flex justify-center pt-6">
              <Button
                size="lg"
                onClick={() => setShowSubmitDialog(true)}
                className="min-w-[200px]"
              >
                <Send className="mr-2 h-4 w-4" />
                Submit Test
              </Button>
            </div>
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
      />

      <ReloadWarningDialog
        open={showReloadWarning}
        onOpenChange={setShowReloadWarning}
        onConfirm={() => {
          setShowReloadWarning(false)
          // Go back twice: once for our pushed state, once for the actual back
          window.history.go(-2)
        }}
      />
    </div>
  )
}
