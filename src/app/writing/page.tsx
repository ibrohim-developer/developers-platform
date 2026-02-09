'use client'

import { useState, useEffect, useCallback } from 'react'
import { useRouter, useSearchParams } from 'next/navigation'
import Image from 'next/image'
import { Button } from '@/components/ui/button'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs'
import { TestTimer } from '@/components/test/common/test-timer'
import { SubmitDialog } from '@/components/test/common/submit-dialog'
import { ReloadWarningDialog } from '@/components/test/common/reload-warning-dialog'
import { WritingEditor } from '@/components/test/writing/writing-editor'
import { useTestStore } from '@/stores/test-store'
import { TEST_CONFIG } from '@/lib/constants/test-config'
import { Send, Loader2, Clock, PenTool, FileText, ArrowLeft, Sparkles } from 'lucide-react'

interface WritingTask {
  id: string
  taskNumber: number
  taskType: string | null
  prompt: string
  imageUrl: string | null
  minWords: number
}

interface ReviewSubmission {
  id: string
  taskId: string
  content: string
  wordCount: number
  taskAchievementScore: number | null
  coherenceScore: number | null
  lexicalScore: number | null
  grammarScore: number | null
  overallBandScore: number | null
  feedback: string | null
}

export default function WritingTestPage() {
  const router = useRouter()
  const searchParams = useSearchParams()
  const testId = searchParams.get('testId')
  const isReviewMode = searchParams.get('review') === 'true'
  const reviewAttemptId = searchParams.get('attemptId')

  const [showSubmitDialog, setShowSubmitDialog] = useState(false)
  const [isSubmitting, setIsSubmitting] = useState(false)
  const [tasks, setTasks] = useState<WritingTask[]>([])
  const [isLoading, setIsLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)
  const [hasStarted, setHasStarted] = useState(false)
  const [activeTaskId, setActiveTaskId] = useState<string>('')
  const [contents, setContents] = useState<Record<string, string>>({})
  const [showReloadWarning, setShowReloadWarning] = useState(false)
  const [reviewSubmissions, setReviewSubmissions] = useState<ReviewSubmission[]>([])
  const [totalTime, setTotalTime] = useState(TEST_CONFIG.writing.totalTime)

  const {
    attemptId,
    initTest,
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
      const res = await fetch(`/api/writing/review?attemptId=${reviewAttemptId}`)
      if (!res.ok) throw new Error('Failed to load review data')

      const data = await res.json()
      setTasks(data.tasks)
      setActiveTaskId(data.tasks[0]?.id ?? '')
      setReviewSubmissions(data.submissions)

      // Populate contents from submissions
      const contentMap: Record<string, string> = {}
      data.submissions.forEach((s: ReviewSubmission) => {
        contentMap[s.taskId] = s.content
      })
      setContents(contentMap)
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
      const res = await fetch('/api/writing/start', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ testId }),
      })

      if (!res.ok) {
        const data = await res.json()
        throw new Error(data.error || 'Failed to start test')
      }

      const data = await res.json()
      setTasks(data.tasks)
      setActiveTaskId(data.tasks[0]?.id ?? '')

      // Set timer based on number of tasks: 1 task = use recommended time, 2+ tasks = full 60 min
      let time = TEST_CONFIG.writing.totalTime
      if (data.tasks.length === 1) {
        const task = data.tasks[0]
        time = task.taskType === 'report'
          ? TEST_CONFIG.writing.task1.recommendedTime
          : TEST_CONFIG.writing.task2.recommendedTime
      }
      setTotalTime(time)
      initTest(data.attemptId, testId, 'writing', time, false)
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
      if (e.key === 'F5' || ((e.ctrlKey || e.metaKey) && e.key === 'r')) {
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

  const getWordCount = (text: string) =>
    text.trim().split(/\s+/).filter((w) => w).length

  const taskCompletions = tasks.map((task) => ({
    id: task.id,
    complete: getWordCount(contents[task.id] || '') >= task.minWords,
  }))
  const answeredCount = taskCompletions.filter((t) => t.complete).length

  const handleSubmit = async () => {
    if (!attemptId) return
    setIsSubmitting(true)

    try {
      const submissions = tasks.map((task) => ({
        taskId: task.id,
        content: contents[task.id] || '',
      }))

      const timeSpentSeconds = totalTime - timeRemaining

      const res = await fetch('/api/writing/submit', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          attemptId,
          submissions,
          timeSpentSeconds,
        }),
      })

      if (!res.ok) throw new Error('Failed to submit test')

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

  const getSubmissionForTask = (taskId: string) =>
    reviewSubmissions.find((s) => s.taskId === taskId)

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
          <Button variant="outline" onClick={() => router.push('/dashboard/writing')}>
            Back to Writing Tests
          </Button>
        </div>
      </div>
    )
  }

  if (tasks.length === 0) return null

  // Show start screen before beginning the test
  if (!hasStarted) {
    return (
      <div className="min-h-screen bg-muted/30 flex items-center justify-center">
        <Card className="max-w-2xl w-full mx-4">
          <CardHeader>
            <CardTitle className="text-2xl">IELTS Writing Test</CardTitle>
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
                    You have {totalTime / 60} minutes to complete this test
                  </p>
                </div>
              </div>

              <div className="flex items-start gap-3">
                <div className="w-8 h-8 rounded-full bg-primary/10 flex items-center justify-center flex-shrink-0">
                  <PenTool className="h-4 w-4 text-primary" />
                </div>
                <div>
                  <p className="font-medium">Writing Task</p>
                  <p className="text-sm text-muted-foreground">
                    {tasks[0]?.taskType === 'report'
                      ? 'Report Writing — describe charts, graphs, or diagrams'
                      : 'Essay Writing — present and support your argument'}
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
                    <li>Write at least {tasks[0]?.minWords ?? 150} words</li>
                    <li>Your essay will be evaluated by AI after submission</li>
                    <li>The timer will start when you click &quot;Begin Test&quot;</li>
                  </ul>
                </div>
              </div>
            </div>

            <div className="flex gap-3 pt-4">
              <Button
                variant="outline"
                className="flex-1"
                onClick={() => router.push('/dashboard/writing')}
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
              IELTS Writing Test{' '}
              {isReviewMode && (
                <span className="text-sm text-muted-foreground">(Review Mode)</span>
              )}
            </h1>
            {!isReviewMode && (
              <div className="flex items-center gap-2 text-sm text-muted-foreground">
                {tasks.map((task, i) => {
                  const isComplete = taskCompletions.find((t) => t.id === task.id)?.complete
                  return (
                    <span key={task.id}>
                      {i > 0 && <span className="mx-1">|</span>}
                      <span className={isComplete ? 'text-green-600' : ''}>
                        Task {task.taskNumber} {isComplete ? '\u2713' : ''}
                      </span>
                    </span>
                  )
                })}
              </div>
            )}
          </div>
          {!isReviewMode && (
            <div className="flex items-center gap-4">
              <TestTimer onTimeUp={handleTimeUp} />
              <Button
                onClick={() => setShowSubmitDialog(true)}
                disabled={isSubmitting}
              >
                {isSubmitting ? (
                  <>
                    <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                    Evaluating...
                  </>
                ) : (
                  <>
                    <Send className="mr-2 h-4 w-4" />
                    Submit
                  </>
                )}
              </Button>
            </div>
          )}
        </div>
      </header>

      <div className="container mx-auto px-4 py-6">
        <Tabs value={activeTaskId} onValueChange={setActiveTaskId}>
          {tasks.length > 1 && (
            <TabsList className="grid w-full max-w-md" style={{ gridTemplateColumns: `repeat(${tasks.length}, 1fr)` }}>
              {tasks.map((task) => {
                const isComplete = taskCompletions.find((t) => t.id === task.id)?.complete
                return (
                  <TabsTrigger key={task.id} value={task.id} className="flex items-center gap-2">
                    <FileText className="h-4 w-4" />
                    Task {task.taskNumber}
                    {isComplete && <span className="text-green-500">{'\u2713'}</span>}
                  </TabsTrigger>
                )
              })}
            </TabsList>
          )}

          {tasks.map((task) => {
            const submission = getSubmissionForTask(task.id)
            const recommendedTime = task.taskNumber === 1 ? 20 : 40

            return (
              <TabsContent key={task.id} value={task.id} className="mt-6">
                <div className="grid lg:grid-cols-2 gap-6">
                  {/* Task Prompt */}
                  <Card>
                    <CardHeader>
                      <div className="flex items-center justify-between">
                        <CardTitle>
                          Task {task.taskNumber} -{' '}
                          {task.taskType === 'report' ? 'Report Writing' : 'Essay Writing'}
                        </CardTitle>
                        <div className="flex items-center gap-1 text-sm text-muted-foreground">
                          <Clock className="h-4 w-4" />
                          ~{recommendedTime} min
                        </div>
                      </div>
                      <CardDescription>
                        You should spend about {recommendedTime} minutes on this task.
                      </CardDescription>
                    </CardHeader>
                    <CardContent>
                      {task.imageUrl && (
                        <div className="relative aspect-video rounded-lg overflow-hidden mb-4 border">
                          <Image
                            src={task.imageUrl}
                            alt={`Task ${task.taskNumber} image`}
                            fill
                            className="object-contain"
                          />
                        </div>
                      )}
                      <div className="prose dark:prose-invert max-w-none">
                        <p className="whitespace-pre-line">{task.prompt}</p>
                      </div>
                    </CardContent>
                  </Card>

                  {/* Writing Editor */}
                  <Card className="flex flex-col">
                    <CardHeader>
                      <CardTitle>Your Response</CardTitle>
                      <CardDescription>
                        Write at least {task.minWords} words
                      </CardDescription>
                    </CardHeader>
                    <CardContent className="flex-1">
                      <WritingEditor
                        value={contents[task.id] || ''}
                        onChange={(val) =>
                          setContents((prev) => ({ ...prev, [task.id]: val }))
                        }
                        minWords={task.minWords}
                        placeholder={`Write your Task ${task.taskNumber} response here...`}
                        disabled={isReviewMode}
                      />
                    </CardContent>
                  </Card>
                </div>

                {/* Review Mode: Show scores and feedback */}
                {isReviewMode && submission && submission.overallBandScore !== null && (
                  <Card className="mt-6">
                    <CardHeader>
                      <CardTitle className="flex items-center gap-2">
                        <Sparkles className="h-5 w-5 text-purple-500" />
                        AI Evaluation - Task {task.taskNumber}
                      </CardTitle>
                      <CardDescription>
                        Overall Band Score: {submission.overallBandScore}
                      </CardDescription>
                    </CardHeader>
                    <CardContent>
                      <div className="grid grid-cols-2 md:grid-cols-4 gap-4 mb-6">
                        <ScoreCard label="Task Achievement" score={submission.taskAchievementScore} />
                        <ScoreCard label="Coherence & Cohesion" score={submission.coherenceScore} />
                        <ScoreCard label="Lexical Resource" score={submission.lexicalScore} />
                        <ScoreCard label="Grammar" score={submission.grammarScore} />
                      </div>
                      {submission.feedback && (
                        <div>
                          <h4 className="text-sm font-medium mb-2">Detailed Feedback</h4>
                          <p className="text-sm text-muted-foreground whitespace-pre-line">
                            {submission.feedback}
                          </p>
                        </div>
                      )}
                    </CardContent>
                  </Card>
                )}
              </TabsContent>
            )
          })}
        </Tabs>
      </div>

      {!isReviewMode && (
        <>
          <SubmitDialog
            open={showSubmitDialog}
            onOpenChange={setShowSubmitDialog}
            onConfirm={handleSubmit}
            answeredCount={answeredCount}
            totalQuestions={tasks.length}
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
        </>
      )}
    </div>
  )
}

function ScoreCard({ label, score }: { label: string; score: number | null }) {
  if (score === null) {
    return (
      <div className="text-center p-3 rounded-lg bg-muted">
        <div className="text-2xl font-bold text-muted-foreground">-</div>
        <div className="text-xs text-muted-foreground mt-1">{label}</div>
      </div>
    )
  }

  const getColor = (s: number) => {
    if (s >= 7) return 'text-green-600'
    if (s >= 5) return 'text-amber-600'
    return 'text-red-600'
  }

  return (
    <div className="text-center p-3 rounded-lg bg-muted">
      <div className={`text-2xl font-bold ${getColor(score)}`}>{score}</div>
      <div className="text-xs text-muted-foreground mt-1">{label}</div>
    </div>
  )
}
