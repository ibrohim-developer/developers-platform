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
  RotateCcw
} from 'lucide-react'
import { notFound } from 'next/navigation'

interface ResultsPageProps {
  params: Promise<{ attemptId: string }>
}

export default async function ResultsPage({ params }: ResultsPageProps) {
  const { attemptId } = await params
  const supabase = await createClient()

  // Fetch attempt with related data
  const { data: attempt, error } = await supabase
    .from('test_attempts')
    .select('*')
    .eq('id', attemptId)
    .single()

  if (error || !attempt) {
    // For demo, show sample results
    const sampleAttempt = {
      id: attemptId,
      module_type: 'reading',
      status: 'completed',
      raw_score: 32,
      band_score: 7.5,
      time_spent_seconds: 3420,
      created_at: new Date().toISOString(),
      completed_at: new Date().toISOString(),
    }

    return <ResultsContent attempt={sampleAttempt} />
  }

  return <ResultsContent attempt={attempt} />
}

function ResultsContent({ attempt }: { attempt: {
  id: string
  module_type: string
  status: string
  raw_score: number | null
  band_score: number | null
  time_spent_seconds: number | null
  created_at: string
  completed_at: string | null
}}) {
  const bandScore = attempt.band_score || 7.0
  const rawScore = attempt.raw_score || 32
  const totalQuestions = 40
  const correctPercentage = (rawScore / totalQuestions) * 100

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

  // Sample question results for demo
  const sampleResults = [
    { id: 1, correct: true, userAnswer: 'B', correctAnswer: 'B' },
    { id: 2, correct: true, userAnswer: 'neutrality', correctAnswer: 'neutrality' },
    { id: 3, correct: false, userAnswer: 'TRUE', correctAnswer: 'FALSE' },
    { id: 4, correct: true, userAnswer: 'TRUE', correctAnswer: 'TRUE' },
    { id: 5, correct: true, userAnswer: 'C', correctAnswer: 'C' },
  ]

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
            <Card>
              <CardHeader>
                <CardTitle>Answer Review</CardTitle>
                <CardDescription>Review your answers</CardDescription>
              </CardHeader>
              <CardContent>
                <div className="space-y-4">
                  {sampleResults.map((result) => (
                    <div
                      key={result.id}
                      className={`flex items-center justify-between p-4 rounded-lg border ${
                        result.correct ? 'bg-green-50 dark:bg-green-950/20 border-green-200 dark:border-green-800' : 'bg-red-50 dark:bg-red-950/20 border-red-200 dark:border-red-800'
                      }`}
                    >
                      <div className="flex items-center gap-4">
                        <span className="flex h-8 w-8 items-center justify-center rounded-full bg-background text-sm font-medium">
                          {result.id}
                        </span>
                        <div>
                          <p className="text-sm">
                            Your answer: <span className="font-medium">{result.userAnswer}</span>
                          </p>
                          {!result.correct && (
                            <p className="text-sm text-green-600">
                              Correct: <span className="font-medium">{result.correctAnswer}</span>
                            </p>
                          )}
                        </div>
                      </div>
                      {result.correct ? (
                        <CheckCircle className="h-5 w-5 text-green-600" />
                      ) : (
                        <XCircle className="h-5 w-5 text-red-600" />
                      )}
                    </div>
                  ))}
                </div>
              </CardContent>
            </Card>
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
