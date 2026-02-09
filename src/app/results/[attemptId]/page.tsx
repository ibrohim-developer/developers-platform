import Link from 'next/link'
import { createClient } from '@/lib/supabase/server'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Progress } from '@/components/ui/progress'
import { BAND_DESCRIPTORS } from '@/lib/constants/test-config'
import {
  Headphones,
  BookOpen,
  PenTool,
  CheckCircle,
  XCircle,
  ArrowLeft,
  Download,
  RotateCcw,
  Eye,
  Sparkles
} from 'lucide-react'
import { WritingFeedback } from '@/components/test/writing/writing-feedback'

/* eslint-disable @typescript-eslint/no-explicit-any */
interface ResultsPageProps {
  params: Promise<{ attemptId: string }>
}

interface AnswerResult {
  id: string
  questionNumber: number
  questionText: string
  userAnswer: string
  correctAnswer: string
  isCorrect: boolean
}

export default async function ResultsPage({ params }: ResultsPageProps) {
  const { attemptId } = await params
  const supabase = await createClient()

  // Fetch attempt
  const { data: attempt, error } = await supabase
    .from('test_attempts')
    .select('*')
    .eq('id', attemptId)
    .single()

  if (error || !attempt) {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <div className="flex flex-col items-center gap-4 text-center">
          <p className="text-destructive font-medium">Test attempt not found.</p>
          <Link href="/dashboard">
            <Button variant="outline">Back to Dashboard</Button>
          </Link>
        </div>
      </div>
    )
  }

  // Fetch user answers for this attempt
  const { data: userAnswers } = await supabase
    .from('user_answers')
    .select('id, user_answer, is_correct, question_id')
    .eq('attempt_id', attemptId)

  // Fetch question details for answered questions
  const questionIds = (userAnswers ?? []).map((ua: any) => ua.question_id)
  let questionsMap = new Map<string, any>()
  if (questionIds.length > 0) {
    const { data: questions } = await supabase
      .from('questions')
      .select('id, question_number, question_text, correct_answer')
      .in('id', questionIds)
    if (questions) {
      questionsMap = new Map(questions.map((q: any) => [q.id, q]))
    }
  }

  const answerResults: AnswerResult[] = (userAnswers ?? []).map((ua: any) => {
    const question = questionsMap.get(ua.question_id)
    return {
      id: ua.id,
      questionNumber: question?.question_number ?? 0,
      questionText: question?.question_text ?? '',
      userAnswer: ua.user_answer ?? '',
      correctAnswer: question?.correct_answer ?? '',
      isCorrect: ua.is_correct ?? false,
    }
  }).sort((a: AnswerResult, b: AnswerResult) => a.questionNumber - b.questionNumber)

  // Writing-specific results
  if ((attempt as any).module_type === 'writing') {
    const { data: writingSubmissions } = await supabase
      .from('writing_submissions')
      .select('*')
      .eq('attempt_id', attemptId)

    const { data: writingTasks } = await supabase
      .from('writing_tasks')
      .select('id, task_number, task_type, prompt, min_words')
      .eq('test_id', (attempt as any).test_id)
      .order('task_number')

    return (
      <WritingResultsContent
        attempt={attempt}
        tasks={writingTasks ?? []}
        submissions={writingSubmissions ?? []}
      />
    )
  }

  return <ResultsContent attempt={attempt} answerResults={answerResults} />
}

function ResultsContent({ attempt, answerResults }: {
  attempt: {
    id: string
    module_type: string
    status: string
    raw_score: number | null
    band_score: number | null
    time_spent_seconds: number | null
    created_at: string
    completed_at: string | null
  }
  answerResults: AnswerResult[]
}) {
  const bandScore = attempt.band_score || 0
  const rawScore = attempt.raw_score || 0
  const totalQuestions = answerResults.length || 40
  const correctPercentage = totalQuestions > 0 ? (rawScore / totalQuestions) * 100 : 0

  const moduleIcon = {
    listening: Headphones,
    reading: BookOpen,
    writing: PenTool,
  }[attempt.module_type] || BookOpen

  const ModuleIcon = moduleIcon

  const moduleColor = {
    listening: 'blue',
    reading: 'green',
    writing: 'purple',
  }[attempt.module_type] || 'blue'

  const formatTime = (seconds: number) => {
    const mins = Math.floor(seconds / 60)
    const secs = seconds % 60
    return `${mins}m ${secs}s`
  }

  return (
    <div className="min-h-screen bg-muted/30">
      {/* Header */}
      <header className="bg-background border-b">
        <div className="container mx-auto px-4 h-16 flex items-center justify-between">
          <Link href="/dashboard" className="flex items-center gap-2 text-muted-foreground hover:text-foreground">
            <ArrowLeft className="h-4 w-4" />
            Back to Dashboard
          </Link>
          <div className="flex items-center gap-2">
            <Button variant="outline" size="sm">
              <Download className="mr-2 h-4 w-4" />
              Download Report
            </Button>
          </div>
        </div>
      </header>

      <div className="container mx-auto px-4 py-8">
        {/* Score Hero */}
        <Card className={`mb-8 bg-gradient-to-r from-${moduleColor}-50 to-${moduleColor}-100 dark:from-${moduleColor}-950/30 dark:to-${moduleColor}-900/20 border-${moduleColor}-200 dark:border-${moduleColor}-800`}>
          <CardContent className="pt-8 pb-8">
            <div className="flex flex-col md:flex-row items-center justify-between gap-8">
              <div className="flex items-center gap-6">
                <div className={`w-20 h-20 rounded-2xl bg-${moduleColor}-100 dark:bg-${moduleColor}-900/50 flex items-center justify-center`}>
                  <ModuleIcon className={`w-10 h-10 text-${moduleColor}-600 dark:text-${moduleColor}-400`} />
                </div>
                <div>
                  <h1 className="text-2xl font-bold capitalize">{attempt.module_type} Test Results</h1>
                  <p className="text-muted-foreground">
                    Completed on {new Date(attempt.completed_at || attempt.created_at).toLocaleDateString('en-US', {
                      year: 'numeric',
                      month: 'long',
                      day: 'numeric'
                    })}
                  </p>
                </div>
              </div>

              <div className="text-center">
                <div className="text-6xl font-bold text-primary">{bandScore}</div>
                <div className="text-lg text-muted-foreground">Band Score</div>
                <Badge className="mt-2">
                  {BAND_DESCRIPTORS[Math.floor(bandScore)] || 'Good user'}
                </Badge>
              </div>
            </div>
          </CardContent>
        </Card>

        <div className="grid lg:grid-cols-3 gap-8">
          {/* Score Breakdown */}
          <div className="lg:col-span-2 space-y-6">
            <Card>
              <CardHeader>
                <CardTitle>Score Breakdown</CardTitle>
                <CardDescription>Your performance analysis</CardDescription>
              </CardHeader>
              <CardContent className="space-y-6">
                <div className="grid md:grid-cols-3 gap-6">
                  <div className="text-center p-4 rounded-lg bg-muted">
                    <div className="text-3xl font-bold text-green-600">{rawScore}</div>
                    <div className="text-sm text-muted-foreground">Correct Answers</div>
                  </div>
                  <div className="text-center p-4 rounded-lg bg-muted">
                    <div className="text-3xl font-bold text-red-600">{totalQuestions - rawScore}</div>
                    <div className="text-sm text-muted-foreground">Incorrect Answers</div>
                  </div>
                  <div className="text-center p-4 rounded-lg bg-muted">
                    <div className="text-3xl font-bold">{correctPercentage.toFixed(0)}%</div>
                    <div className="text-sm text-muted-foreground">Accuracy</div>
                  </div>
                </div>

                <div>
                  <div className="flex justify-between text-sm mb-2">
                    <span>Overall Progress</span>
                    <span>{correctPercentage.toFixed(0)}%</span>
                  </div>
                  <Progress value={correctPercentage} className="h-3" />
                </div>

                {attempt.time_spent_seconds && (
                  <div className="p-4 rounded-lg border">
                    <div className="flex items-center justify-between">
                      <span className="text-muted-foreground">Time Spent</span>
                      <span className="font-medium">{formatTime(attempt.time_spent_seconds)}</span>
                    </div>
                  </div>
                )}
              </CardContent>
            </Card>

            {/* Answer Review */}
            {answerResults.length > 0 && (
              <Card>
                <CardHeader>
                  <CardTitle>Answer Review</CardTitle>
                  <CardDescription>Review your answers</CardDescription>
                </CardHeader>
                <CardContent>
                  <div className="space-y-4">
                    {answerResults.map((result) => (
                      <div
                        key={result.id}
                        className={`flex items-center justify-between p-4 rounded-lg border ${
                          result.isCorrect ? 'bg-green-50 dark:bg-green-950/20 border-green-200 dark:border-green-800' : 'bg-red-50 dark:bg-red-950/20 border-red-200 dark:border-red-800'
                        }`}
                      >
                        <div className="flex items-center gap-4">
                          <span className="flex h-8 w-8 items-center justify-center rounded-full bg-background text-sm font-medium">
                            {result.questionNumber}
                          </span>
                          <div>
                            <p className="text-sm">
                              Your answer: <span className="font-medium">{result.userAnswer}</span>
                            </p>
                            {!result.isCorrect && (
                              <p className="text-sm text-green-600">
                                Correct: <span className="font-medium">{result.correctAnswer}</span>
                              </p>
                            )}
                          </div>
                        </div>
                        {result.isCorrect ? (
                          <CheckCircle className="h-5 w-5 text-green-600" />
                        ) : (
                          <XCircle className="h-5 w-5 text-red-600" />
                        )}
                      </div>
                    ))}
                  </div>
                </CardContent>
              </Card>
            )}
          </div>

          {/* Sidebar */}
          <div className="space-y-6">
            <Card>
              <CardHeader>
                <CardTitle>Band Score Guide</CardTitle>
              </CardHeader>
              <CardContent>
                <div className="space-y-3">
                  {[9, 8, 7, 6, 5].map((score) => (
                    <div
                      key={score}
                      className={`flex items-center justify-between p-3 rounded-lg ${
                        Math.floor(bandScore) === score ? 'bg-primary/10 border border-primary' : 'bg-muted'
                      }`}
                    >
                      <span className="font-medium">Band {score}</span>
                      <span className="text-sm text-muted-foreground">
                        {BAND_DESCRIPTORS[score]}
                      </span>
                    </div>
                  ))}
                </div>
              </CardContent>
            </Card>

            <Card>
              <CardHeader>
                <CardTitle>Next Steps</CardTitle>
              </CardHeader>
              <CardContent className="space-y-4">
                <Link href={`/${attempt.module_type}?review=true&attemptId=${attempt.id}`}>
                  <Button variant="secondary" className="w-full">
                    <Eye className="mr-2 h-4 w-4" />
                    Review Test
                  </Button>
                </Link>
                <Link href={`/dashboard/${attempt.module_type}`}>
                  <Button className="w-full">
                    <RotateCcw className="mr-2 h-4 w-4" />
                    Practice Again
                  </Button>
                </Link>
                <Link href="/dashboard">
                  <Button variant="outline" className="w-full">
                    View All Tests
                  </Button>
                </Link>
              </CardContent>
            </Card>
          </div>
        </div>
      </div>
    </div>
  )
}

function WritingResultsContent({ attempt, tasks, submissions }: {
  attempt: {
    id: string
    module_type: string
    status: string
    raw_score: number | null
    band_score: number | null
    time_spent_seconds: number | null
    created_at: string
    completed_at: string | null
  }
  tasks: any[]
  submissions: any[]
}) {
  const bandScore = attempt.band_score || 0

  const formatTime = (seconds: number) => {
    const mins = Math.floor(seconds / 60)
    const secs = seconds % 60
    return `${mins}m ${secs}s`
  }

  const getScoreColor = (score: number | null) => {
    if (score === null) return 'text-muted-foreground'
    if (score >= 7) return 'text-green-600'
    if (score >= 5) return 'text-amber-600'
    return 'text-red-600'
  }

  // Calculate average scores across all submissions
  const scoredSubmissions = submissions.filter((s: any) => s.overall_band_score !== null)
  const avgTaskAchievement = scoredSubmissions.length > 0
    ? scoredSubmissions.reduce((sum: number, s: any) => sum + (s.task_achievement_score || 0), 0) / scoredSubmissions.length
    : null
  const avgCoherence = scoredSubmissions.length > 0
    ? scoredSubmissions.reduce((sum: number, s: any) => sum + (s.coherence_score || 0), 0) / scoredSubmissions.length
    : null
  const avgLexical = scoredSubmissions.length > 0
    ? scoredSubmissions.reduce((sum: number, s: any) => sum + (s.lexical_score || 0), 0) / scoredSubmissions.length
    : null
  const avgGrammar = scoredSubmissions.length > 0
    ? scoredSubmissions.reduce((sum: number, s: any) => sum + (s.grammar_score || 0), 0) / scoredSubmissions.length
    : null

  return (
    <div className="min-h-screen bg-muted/30">
      {/* Header */}
      <header className="bg-background border-b">
        <div className="container mx-auto px-4 h-16 flex items-center justify-between">
          <Link href="/dashboard" className="flex items-center gap-2 text-muted-foreground hover:text-foreground">
            <ArrowLeft className="h-4 w-4" />
            Back to Dashboard
          </Link>
          <div className="flex items-center gap-2">
            <Button variant="outline" size="sm">
              <Download className="mr-2 h-4 w-4" />
              Download Report
            </Button>
          </div>
        </div>
      </header>

      <div className="container mx-auto px-4 py-8">
        {/* Score Hero */}
        <Card className="mb-8 bg-gradient-to-r from-purple-50 to-purple-100 dark:from-purple-950/30 dark:to-purple-900/20 border-purple-200 dark:border-purple-800">
          <CardContent className="pt-8 pb-8">
            <div className="flex flex-col md:flex-row items-center justify-between gap-8">
              <div className="flex items-center gap-6">
                <div className="w-20 h-20 rounded-2xl bg-purple-100 dark:bg-purple-900/50 flex items-center justify-center">
                  <PenTool className="w-10 h-10 text-purple-600 dark:text-purple-400" />
                </div>
                <div>
                  <h1 className="text-2xl font-bold">Writing Test Results</h1>
                  <p className="text-muted-foreground">
                    Completed on {new Date(attempt.completed_at || attempt.created_at).toLocaleDateString('en-US', {
                      year: 'numeric',
                      month: 'long',
                      day: 'numeric'
                    })}
                  </p>
                </div>
              </div>

              <div className="text-center">
                <div className="text-6xl font-bold text-primary">{bandScore}</div>
                <div className="text-lg text-muted-foreground">Band Score</div>
                <Badge className="mt-2">
                  {BAND_DESCRIPTORS[Math.floor(bandScore)] || 'Good user'}
                </Badge>
              </div>
            </div>
          </CardContent>
        </Card>

        <div className="grid lg:grid-cols-3 gap-8">
          <div className="lg:col-span-2 space-y-6">
            {/* Criteria Breakdown */}
            <Card>
              <CardHeader>
                <CardTitle className="flex items-center gap-2">
                  <Sparkles className="h-5 w-5 text-purple-500" />
                  AI Evaluation Summary
                </CardTitle>
                <CardDescription>Average scores across all tasks</CardDescription>
              </CardHeader>
              <CardContent className="space-y-6">
                <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
                  <div className="text-center p-4 rounded-lg bg-muted">
                    <div className={`text-3xl font-bold ${getScoreColor(avgTaskAchievement)}`}>
                      {avgTaskAchievement !== null ? avgTaskAchievement.toFixed(1) : '-'}
                    </div>
                    <div className="text-sm text-muted-foreground mt-1">Task Achievement</div>
                  </div>
                  <div className="text-center p-4 rounded-lg bg-muted">
                    <div className={`text-3xl font-bold ${getScoreColor(avgCoherence)}`}>
                      {avgCoherence !== null ? avgCoherence.toFixed(1) : '-'}
                    </div>
                    <div className="text-sm text-muted-foreground mt-1">Coherence & Cohesion</div>
                  </div>
                  <div className="text-center p-4 rounded-lg bg-muted">
                    <div className={`text-3xl font-bold ${getScoreColor(avgLexical)}`}>
                      {avgLexical !== null ? avgLexical.toFixed(1) : '-'}
                    </div>
                    <div className="text-sm text-muted-foreground mt-1">Lexical Resource</div>
                  </div>
                  <div className="text-center p-4 rounded-lg bg-muted">
                    <div className={`text-3xl font-bold ${getScoreColor(avgGrammar)}`}>
                      {avgGrammar !== null ? avgGrammar.toFixed(1) : '-'}
                    </div>
                    <div className="text-sm text-muted-foreground mt-1">Grammar</div>
                  </div>
                </div>

                {attempt.time_spent_seconds && (
                  <div className="p-4 rounded-lg border">
                    <div className="flex items-center justify-between">
                      <span className="text-muted-foreground">Time Spent</span>
                      <span className="font-medium">{formatTime(attempt.time_spent_seconds)}</span>
                    </div>
                  </div>
                )}
              </CardContent>
            </Card>

            {/* Per-Task Review */}
            {tasks.map((task: any) => {
              const submission = submissions.find((s: any) => s.task_id === task.id)
              if (!submission) return null

              return (
                <Card key={task.id}>
                  <CardHeader>
                    <CardTitle>
                      Task {task.task_number} - {task.task_type === 'report' ? 'Report Writing' : 'Essay Writing'}
                    </CardTitle>
                    <CardDescription>
                      {submission.word_count} words written (minimum: {task.min_words})
                      {submission.overall_band_score !== null && (
                        <span className="ml-2 font-medium">
                          | Band Score: {submission.overall_band_score}
                        </span>
                      )}
                    </CardDescription>
                  </CardHeader>
                  <CardContent className="space-y-4">
                    {/* Individual scores */}
                    {submission.overall_band_score !== null && (
                      <div className="grid grid-cols-2 md:grid-cols-4 gap-3">
                        <div className="text-center p-2 rounded bg-muted">
                          <div className={`text-xl font-bold ${getScoreColor(submission.task_achievement_score)}`}>
                            {submission.task_achievement_score ?? '-'}
                          </div>
                          <div className="text-xs text-muted-foreground">Task Achievement</div>
                        </div>
                        <div className="text-center p-2 rounded bg-muted">
                          <div className={`text-xl font-bold ${getScoreColor(submission.coherence_score)}`}>
                            {submission.coherence_score ?? '-'}
                          </div>
                          <div className="text-xs text-muted-foreground">Coherence</div>
                        </div>
                        <div className="text-center p-2 rounded bg-muted">
                          <div className={`text-xl font-bold ${getScoreColor(submission.lexical_score)}`}>
                            {submission.lexical_score ?? '-'}
                          </div>
                          <div className="text-xs text-muted-foreground">Lexical</div>
                        </div>
                        <div className="text-center p-2 rounded bg-muted">
                          <div className={`text-xl font-bold ${getScoreColor(submission.grammar_score)}`}>
                            {submission.grammar_score ?? '-'}
                          </div>
                          <div className="text-xs text-muted-foreground">Grammar</div>
                        </div>
                      </div>
                    )}

                    {/* Essay content */}
                    <div>
                      <h4 className="text-sm font-medium mb-2">Your Essay</h4>
                      <div className="p-4 rounded-lg bg-muted/50 border text-sm whitespace-pre-line max-h-60 overflow-y-auto">
                        {submission.content}
                      </div>
                    </div>

                    {/* AI Feedback */}
                    {submission.feedback && (
                      <div>
                        <h4 className="text-sm font-medium mb-2 flex items-center gap-1">
                          <Sparkles className="h-4 w-4 text-purple-500" />
                          AI Feedback
                        </h4>
                        <div className="p-4 rounded-lg border border-purple-200 dark:border-purple-800 bg-purple-50/50 dark:bg-purple-950/20">
                          <WritingFeedback feedback={submission.feedback} />
                        </div>
                      </div>
                    )}

                    {submission.overall_band_score === null && (
                      <div className="p-4 rounded-lg border border-amber-200 dark:border-amber-800 bg-amber-50/50 dark:bg-amber-950/20 text-sm text-amber-700 dark:text-amber-400">
                        Evaluation pending - scores are not yet available for this task.
                      </div>
                    )}
                  </CardContent>
                </Card>
              )
            })}
          </div>

          {/* Sidebar */}
          <div className="space-y-6">
            <Card>
              <CardHeader>
                <CardTitle>Band Score Guide</CardTitle>
              </CardHeader>
              <CardContent>
                <div className="space-y-3">
                  {[9, 8, 7, 6, 5].map((score) => (
                    <div
                      key={score}
                      className={`flex items-center justify-between p-3 rounded-lg ${
                        Math.floor(bandScore) === score ? 'bg-primary/10 border border-primary' : 'bg-muted'
                      }`}
                    >
                      <span className="font-medium">Band {score}</span>
                      <span className="text-sm text-muted-foreground">
                        {BAND_DESCRIPTORS[score]}
                      </span>
                    </div>
                  ))}
                </div>
              </CardContent>
            </Card>

            <Card>
              <CardHeader>
                <CardTitle>Next Steps</CardTitle>
              </CardHeader>
              <CardContent className="space-y-4">
                <Link href={`/writing?review=true&attemptId=${attempt.id}`}>
                  <Button variant="secondary" className="w-full">
                    <Eye className="mr-2 h-4 w-4" />
                    Review Test
                  </Button>
                </Link>
                <Link href="/dashboard/writing">
                  <Button className="w-full">
                    <RotateCcw className="mr-2 h-4 w-4" />
                    Practice Again
                  </Button>
                </Link>
                <Link href="/dashboard">
                  <Button variant="outline" className="w-full">
                    View All Tests
                  </Button>
                </Link>
              </CardContent>
            </Card>
          </div>
        </div>
      </div>
    </div>
  )
}
