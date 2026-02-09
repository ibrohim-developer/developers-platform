'use client'

import { useState, useEffect, useCallback, Suspense } from 'react'
import { useRouter, useSearchParams } from 'next/navigation'
import { Button } from '@/components/ui/button'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
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
import { Send, Loader2, Clock, BookOpen, ArrowLeft, Maximize2, Minimize2, Bell, Menu, PenSquare, ChevronLeft, ChevronRight, Check } from 'lucide-react'

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
  return (
    <Suspense fallback={
      <div className="min-h-screen flex items-center justify-center">
        <div className="flex flex-col items-center gap-4">
          <Loader2 className="h-8 w-8 animate-spin text-muted-foreground" />
          <p className="text-muted-foreground">Loading test...</p>
        </div>
      </div>
    }>
      <ReadingTestContent />
    </Suspense>
  )
}

function ReadingTestContent() {
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
  const [activeQuestionNumber, setActiveQuestionNumber] = useState(1)

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
  const [isFullscreen, setIsFullscreen] = useState(false)

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

    window.history.pushState({ testInProgress: true }, '')

    const handlePopState = () => {
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

  // Get the active passage index
  const activePassageIndex = passages.findIndex(p => p.id === activePassageId)
  const currentPassage = passages.find(p => p.id === activePassageId)
  const allQuestions = passages.flatMap(p => p.questions)
  const answeredCount = Object.values(answers).filter(a => a.answer.trim() !== '').length
  const totalQuestions = allQuestions.length

  // Calculate question number offset for current passage
  const questionOffset = passages
    .slice(0, activePassageIndex)
    .reduce((acc, p) => acc + p.questions.length, 0)

  // Get first and last question numbers for the current passage
  const firstQuestionNum = questionOffset + 1
  const lastQuestionNum = questionOffset + (currentPassage?.questions.length ?? 0)

  // Get question group info for current passage (group by type)
  const getQuestionGroups = () => {
    if (!currentPassage) return []
    const groups: { type: string; startNum: number; endNum: number; questions: Question[] }[] = []
    let currentType = ''

    currentPassage.questions.forEach((q, idx) => {
      const qNum = questionOffset + idx + 1
      if (q.type !== currentType) {
        if (currentType !== '') {
          groups[groups.length - 1].endNum = qNum - 1
        }
        currentType = q.type
        groups.push({ type: q.type, startNum: qNum, endNum: qNum, questions: [q] })
      } else {
        groups[groups.length - 1].questions.push(q)
        groups[groups.length - 1].endNum = qNum
      }
    })

    return groups
  }

  const questionGroups = getQuestionGroups()

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

  const toggleFullscreen = () => {
    if (!document.fullscreenElement) {
      document.documentElement.requestFullscreen()
      setIsFullscreen(true)
    } else {
      document.exitFullscreen()
      setIsFullscreen(false)
    }
  }

  useEffect(() => {
    const handleFullscreenChange = () => {
      setIsFullscreen(!!document.fullscreenElement)
    }
    document.addEventListener('fullscreenchange', handleFullscreenChange)
    return () => document.removeEventListener('fullscreenchange', handleFullscreenChange)
  }, [])

  const getTypeInstruction = (type: string) => {
    switch (type) {
      case 'true_false_not_given':
        return 'Choose TRUE if the statement agrees with the information given in the text, choose FALSE if the statement contradicts the information, or choose NOT GIVEN if there is no information on this.'
      case 'multiple_choice':
        return 'Choose the correct letter, A, B, C or D.'
      case 'fill_in_blank':
      case 'sentence_completion':
        return 'Complete the sentences below. Write NO MORE THAN TWO WORDS from the passage for each answer.'
      default:
        return ''
    }
  }

  const renderQuestion = (question: Question, index: number) => {
    const globalIndex = questionOffset + index

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
                <div className="w-8 h-8 rounded-full bg-primary/10 flex items-center justify-center shrink-0">
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
                <div className="w-8 h-8 rounded-full bg-primary/10 flex items-center justify-center shrink-0">
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
                <div className="w-8 h-8 rounded-full bg-primary/10 flex items-center justify-center shrink-0">
                  <Send className="h-4 w-4 text-primary" />
                </div>
                <div>
                  <p className="font-medium">Instructions</p>
                  <ul className="text-sm text-muted-foreground space-y-1 mt-1 list-disc list-inside">
                    <li>Read each passage carefully before answering questions</li>
                    <li>You can navigate between passages using the tabs</li>
                    <li>The timer will start when you click &quot;Begin Test&quot;</li>
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
    <div className="h-screen bg-white flex flex-col overflow-hidden">
      {/* Top Header Bar */}
      <header className="shrink-0 bg-white border-b border-gray-200 h-12 flex items-center px-4 justify-between">
        <div className="flex items-center gap-3">
          {/* Back button */}
          <button
            onClick={() => isReviewMode ? router.push(`/results/${reviewAttemptId}`) : router.push('/dashboard/reading')}
            className="flex items-center gap-1 text-gray-700 hover:text-gray-900 text-sm"
          >
            <ArrowLeft className="h-4 w-4" />
            <span>Back</span>
          </button>

          {/* IELTS badge */}
          <div className="bg-red-600 text-white px-3 py-0.5 text-sm font-bold rounded">
            IELTS
          </div>

          {/* Test ID */}
          <span className="text-gray-500 text-sm">
            ID: {attemptId?.slice(0, 5) || '-----'}
          </span>
        </div>

        {/* Center - Timer and Start */}
        <div className="flex items-center gap-3">
          {!isReviewMode && (
            <>
              <TestTimer onTimeUp={handleTimeUp} className="bg-transparent text-gray-800 px-2 py-1 text-base" />
              <button
                onClick={() => setShowSubmitDialog(true)}
                className="bg-red-500 hover:bg-red-600 text-white text-sm font-medium px-4 py-1 rounded transition-colors"
              >
                Start
              </button>
            </>
          )}
        </div>

        {/* Right icons */}
        <div className="flex items-center gap-2">
          <button
            onClick={toggleFullscreen}
            className="p-1.5 text-gray-500 hover:text-gray-700 transition-colors"
          >
            {isFullscreen ? <Minimize2 className="h-5 w-5" /> : <Maximize2 className="h-5 w-5" />}
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
        <p className="font-bold text-sm text-gray-900">Part {activePassageIndex + 1}</p>
        <p className="text-sm text-gray-700">Read the text and answer questions {firstQuestionNum}-{lastQuestionNum}.</p>
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
                  {/* Group header */}
                  <div className="mb-4">
                    <h3 className="font-bold text-base text-gray-900 mb-2">
                      Questions {group.startNum}-{group.endNum}
                    </h3>
                    <p className="text-sm text-gray-700 leading-relaxed">
                      {getTypeInstruction(group.type)}
                    </p>
                  </div>

                  {/* Questions */}
                  <div className="space-y-6">
                    {group.questions.map((question) => {
                      const globalIdx = currentPassage.questions.indexOf(question)
                      return (
                        <div key={question.id}>
                          {renderQuestion(question, globalIdx)}
                        </div>
                      )
                    })}
                  </div>

                  {/* Separator between groups */}
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
        {/* Left: Part label */}
        <div className="flex items-center gap-1">
          <span className="text-sm font-bold text-gray-700 mr-2">Part {activePassageIndex + 1}</span>
          {/* Question number buttons */}
          {currentPassage.questions.map((q, idx) => {
            const qNum = questionOffset + idx + 1
            const isAnswered = !!answers[q.id]?.answer?.trim()
            const isActive = activeQuestionNumber === qNum
            return (
              <button
                key={q.id}
                onClick={() => {
                  setActiveQuestionNumber(qNum)
                  // Scroll to question
                  const el = document.getElementById(`question-${q.id}`)
                  el?.scrollIntoView({ behavior: 'smooth', block: 'center' })
                }}
                className={`w-7 h-7 text-xs font-medium rounded-sm border transition-colors ${
                  isActive
                    ? 'border-blue-500 bg-white text-blue-600 font-bold'
                    : isAnswered
                    ? 'border-gray-300 bg-gray-100 text-gray-700'
                    : 'border-gray-300 bg-white text-gray-600'
                }`}
              >
                {qNum}
              </button>
            )
          })}
        </div>

        {/* Right: Navigation arrows and submit */}
        <div className="flex items-center gap-1">
          <button
            onClick={() => {
              const currentQIdx = activeQuestionNumber - questionOffset - 1
              if (currentQIdx > 0) {
                const prevNum = activeQuestionNumber - 1
                setActiveQuestionNumber(prevNum)
                const prevQ = currentPassage.questions[currentQIdx - 1]
                const el = document.getElementById(`question-${prevQ.id}`)
                el?.scrollIntoView({ behavior: 'smooth', block: 'center' })
              }
            }}
            className="w-8 h-8 flex items-center justify-center bg-gray-700 text-white rounded-sm hover:bg-gray-600 transition-colors"
          >
            <ChevronLeft className="h-4 w-4" />
          </button>
          <button
            onClick={() => {
              const currentQIdx = activeQuestionNumber - questionOffset - 1
              if (currentQIdx < currentPassage.questions.length - 1) {
                const nextNum = activeQuestionNumber + 1
                setActiveQuestionNumber(nextNum)
                const nextQ = currentPassage.questions[currentQIdx + 1]
                const el = document.getElementById(`question-${nextQ.id}`)
                el?.scrollIntoView({ behavior: 'smooth', block: 'center' })
              }
            }}
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
      />

      <ReloadWarningDialog
        open={showReloadWarning}
        onOpenChange={setShowReloadWarning}
        onConfirm={() => {
          setShowReloadWarning(false)
          window.history.go(-2)
        }}
      />
    </div>
  )
}
