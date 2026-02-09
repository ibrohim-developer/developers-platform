'use client'

import { useState, useEffect, useCallback } from 'react'
import { useRouter, useSearchParams } from 'next/navigation'
import { Button } from '@/components/ui/button'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { Tabs, TabsList, TabsTrigger } from '@/components/ui/tabs'
import { TestTimer } from '@/components/test/common/test-timer'
import { SubmitDialog } from '@/components/test/common/submit-dialog'
import { ReloadWarningDialog } from '@/components/test/common/reload-warning-dialog'
import { SplitView } from '@/components/test/reading/split-view'
import { PassageDisplay } from '@/components/test/reading/passage-display'
import { MultipleChoice } from '@/components/test/questions/multiple-choice'
import { TrueFalseNotGiven } from '@/components/test/questions/true-false-not-given'
import { FillInBlank } from '@/components/test/questions/fill-in-blank'
import { useTestStore } from '@/stores/test-store'
import { TEST_CONFIG } from '@/lib/constants/test-config'
import { Send, Loader2, Clock, BookOpen, ArrowLeft } from 'lucide-react'

interface Question {
  id: string
  questionNumber: number
  type: string
  text: string
  options: string[] | null
  metadata: Record<string, unknown> | null
}

interface Passage {
  id: string
  passageNumber: number
  title: string
  content: string
  wordCount: number | null
  questions: Question[]
}

export default function ReadingTestPage() {
  const router = useRouter()
  const searchParams = useSearchParams()
  const testId = searchParams.get('testId')
  const isReviewMode = searchParams.get('review') === 'true'
  const reviewAttemptId = searchParams.get('attemptId')

  const [showSubmitDialog, setShowSubmitDialog] = useState(false)
  const [isSubmitting, setIsSubmitting] = useState(false)
  const [passages, setPassages] = useState<Passage[]>([])
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
    resetTest,
    timeRemaining,
    resumeTimer,
  } = useTestStore()

  const [activePassageId, setActivePassageId] = useState<string>('')

  const loadReviewMode = useCallback(async () => {
    if (!reviewAttemptId) {
      setError('No attempt ID provided for review')
      setIsLoading(false)
      return
    }

    try {
      const res = await fetch(`/api/reading/review?attemptId=${reviewAttemptId}`)

      if (!res.ok) {
        throw new Error('Failed to load review data')
      }

      const data = await res.json()
      setPassages(data.passages)
      setActivePassageId(data.passages[0]?.id ?? '')

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
      const res = await fetch('/api/reading/start', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ testId }),
      })

      if (!res.ok) {
        const data = await res.json()
        throw new Error(data.error || 'Failed to start test')
      }

      const data = await res.json()
      setPassages(data.passages)
      setActivePassageId(data.passages[0]?.id ?? '')
      // Initialize test but don't start timer yet (false parameter)
      initTest(data.attemptId, testId, 'reading', TEST_CONFIG.reading.totalTime, false)
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

  const currentPassage = passages.find(p => p.id === activePassageId)
  const allQuestions = passages.flatMap(p => p.questions)
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
      for (const [qId, ans] of Object.entries(answers)) {
        answersPayload[qId] = ans.answer
      }

      const timeSpentSeconds = TEST_CONFIG.reading.totalTime - timeRemaining

      const res = await fetch('/api/reading/submit', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          attemptId,
          answers: answersPayload,
          timeSpentSeconds,
        }),
      })

      if (!res.ok) {
        throw new Error('Failed to submit test')
      }

      const result = await res.json()
      resetTest()
      router.push(`/results/${result.attemptId}`)
    } catch {
      setIsSubmitting(false)
    }
  }

  const handleTimeUp = () => {
    setShowSubmitDialog(true)
  }

  const renderQuestion = (question: Question, index: number) => {
    const globalIndex = passages
      .slice(0, passages.findIndex(p => p.id === activePassageId))
      .reduce((acc, p) => acc + p.questions.length, 0) + index

    const review = reviewData[question.id]
    const value = isReviewMode ? (review?.userAnswer || '') : (answers[question.id]?.answer || '')

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
    }

    switch (question.type) {
      case 'multiple_choice':
        return (
          <MultipleChoice
            key={question.id}
            {...commonProps}
            options={question.options ?? []}
          />
        )
      case 'true_false_not_given':
        return (
          <TrueFalseNotGiven
            key={question.id}
            {...commonProps}
          />
        )
      case 'fill_in_blank':
      case 'sentence_completion':
        return (
          <FillInBlank
            key={question.id}
            {...commonProps}
          />
        )
      default:
        return null
    }
  }

  if (isLoading) {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <div className="flex flex-col items-center gap-4">
          <Loader2 className="h-8 w-8 animate-spin text-muted-foreground" />
          <p className="text-muted-foreground">Loading test...</p>
        </div>
      </div>
    )
  }

  if (error) {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <div className="flex flex-col items-center gap-4 text-center">
          <p className="text-destructive font-medium">{error}</p>
          <Button variant="outline" onClick={() => router.push('/dashboard/reading')}>
            Back to Reading Tests
          </Button>
        </div>
      </div>
    )
  }

  if (!currentPassage) return null

  // Show start screen before beginning the test
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
                <div className="w-8 h-8 rounded-full bg-primary/10 flex items-center justify-center flex-shrink-0">
                  <Clock className="h-4 w-4 text-primary" />
                </div>
                <div>
                  <p className="font-medium">Time Limit</p>
                  <p className="text-sm text-muted-foreground">
                    You have {TEST_CONFIG.reading.totalTime / 60} minutes to complete this test
                  </p>
                </div>
              </div>

              <div className="flex items-start gap-3">
                <div className="w-8 h-8 rounded-full bg-primary/10 flex items-center justify-center flex-shrink-0">
                  <BookOpen className="h-4 w-4 text-primary" />
                </div>
                <div>
                  <p className="font-medium">Reading Passages</p>
                  <p className="text-sm text-muted-foreground">
                    This test contains {passages.length} passage{passages.length > 1 ? 's' : ''} with {totalQuestions} questions total
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
                    <li>Read each passage carefully before answering questions</li>
                    <li>You can navigate between passages using the tabs</li>
                    <li>The timer will start when you click "Begin Test"</li>
                    <li>You can submit your test at any time</li>
                  </ul>
                </div>
              </div>
            </div>

            <div className="flex gap-3 pt-4">
              <Button
                variant="outline"
                className="flex-1"
                onClick={() => router.push('/dashboard/reading')}
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
    <div className="min-h-screen bg-muted/30 flex flex-col">
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
              IELTS Reading Test {isReviewMode && <span className="text-sm text-muted-foreground">(Review Mode)</span>}
            </h1>
            <Tabs value={activePassageId} onValueChange={setActivePassageId}>
              <TabsList>
                {passages.map((passage, index) => (
                  <TabsTrigger key={passage.id} value={passage.id}>
                    Passage {index + 1}
                  </TabsTrigger>
                ))}
              </TabsList>
            </Tabs>
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

      {/* Main Content - Split View */}
      <div className="flex-1">
        <SplitView
          leftPanel={
            <PassageDisplay
              title={currentPassage.title}
              content={currentPassage.content}
            />
          }
          rightPanel={
            <div className="p-6 space-y-8">
              <div className="flex items-center justify-between">
                <h3 className="font-semibold">Questions {
                  passages.slice(0, passages.findIndex(p => p.id === activePassageId))
                    .reduce((acc, p) => acc + p.questions.length, 0) + 1
                } - {
                  passages.slice(0, passages.findIndex(p => p.id === activePassageId) + 1)
                    .reduce((acc, p) => acc + p.questions.length, 0)
                }</h3>
                <span className="text-sm text-muted-foreground">
                  {currentPassage.questions.filter(q => answers[q.id]).length} / {currentPassage.questions.length} answered
                </span>
              </div>
              <div className="space-y-8">
                {currentPassage.questions.map((question, index) => (
                  <div key={question.id} className="pb-6 border-b last:border-0">
                    {renderQuestion(question, index)}
                  </div>
                ))}
              </div>
            </div>
          }
        />
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
