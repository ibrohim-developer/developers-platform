import { createClient } from '@/lib/supabase/server'
import { redirect } from 'next/navigation'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Alert, AlertDescription, AlertTitle } from '@/components/ui/alert'
import {
  ClipboardList,
  Clock,
  Headphones,
  BookOpen,
  PenTool,
  Mic,
  AlertCircle,
  CheckCircle2,
  Timer
} from 'lucide-react'
import Link from '@/components/no-prefetch-link'

/* eslint-disable @typescript-eslint/no-explicit-any */
export default async function FullMockTestPage() {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  if (!user) {
    redirect('/sign-in')
  }

  // Get the user's last full mock test attempt
  const { data: lastAttempt } = await supabase
    .from('full_mock_test_attempts')
    .select('*')
    .eq('user_id', user.id)
    .order('created_at', { ascending: false })
    .limit(1)
    .single()

  // Check if user can take the test (24-hour restriction)
  let canTakeTest = true
  let timeRemaining = 0
  let nextAvailableTime = null

  if (lastAttempt) {
    const lastAttemptTime = new Date(lastAttempt.created_at).getTime()
    const now = new Date().getTime()
    const hoursPassed = (now - lastAttemptTime) / (1000 * 60 * 60)

    if (hoursPassed < 24) {
      canTakeTest = false
      const remainingMs = (24 * 60 * 60 * 1000) - (now - lastAttemptTime)
      timeRemaining = Math.ceil(remainingMs / (1000 * 60 * 60)) // Convert to hours
      nextAvailableTime = new Date(lastAttemptTime + (24 * 60 * 60 * 1000))
    }
  }

  // Get all tests available for full mock test
  const { data: tests } = await supabase
    .from('tests')
    .select('*')
    .eq('is_published', true)
    .order('created_at', { ascending: false })

  // Get user's completed full mock tests
  const { data: completedTests } = await supabase
    .from('full_mock_test_attempts')
    .select('*')
    .eq('user_id', user.id)
    .eq('status', 'completed')
    .order('created_at', { ascending: false })

  const totalCompleted = completedTests?.length || 0
  const averageScore = completedTests?.length
    ? (completedTests.reduce((sum, t) => sum + (t.overall_band_score || 0), 0) / completedTests.length).toFixed(1)
    : '0.0'

  return (
    <div className="space-y-8">
      {/* Header */}
      <div>
        <h1 className="text-3xl font-bold flex items-center gap-3">
          <ClipboardList className="w-8 h-8" />
          Full Mock Test
        </h1>
        <p className="text-muted-foreground mt-2">
          Complete a full IELTS mock test including all four modules
        </p>
      </div>

      {/* Stats */}
      <div className="grid gap-4 md:grid-cols-3">
        <Card>
          <CardHeader className="flex flex-row items-center justify-between pb-2">
            <CardTitle className="text-sm font-medium">Completed Tests</CardTitle>
            <CheckCircle2 className="h-4 w-4 text-muted-foreground" />
          </CardHeader>
          <CardContent>
            <div className="text-2xl font-bold">{totalCompleted}</div>
            <p className="text-xs text-muted-foreground">Full mock tests taken</p>
          </CardContent>
        </Card>

        <Card>
          <CardHeader className="flex flex-row items-center justify-between pb-2">
            <CardTitle className="text-sm font-medium">Average Score</CardTitle>
            <ClipboardList className="h-4 w-4 text-muted-foreground" />
          </CardHeader>
          <CardContent>
            <div className="text-2xl font-bold">{averageScore}</div>
            <p className="text-xs text-muted-foreground">Overall band score</p>
          </CardContent>
        </Card>

        <Card>
          <CardHeader className="flex flex-row items-center justify-between pb-2">
            <CardTitle className="text-sm font-medium">Test Availability</CardTitle>
            <Timer className="h-4 w-4 text-muted-foreground" />
          </CardHeader>
          <CardContent>
            <div className="text-2xl font-bold">
              {canTakeTest ? (
                <span className="text-green-600">Available</span>
              ) : (
                <span className="text-orange-600">{timeRemaining}h</span>
              )}
            </div>
            <p className="text-xs text-muted-foreground">
              {canTakeTest ? 'Ready to start' : 'Time until next test'}
            </p>
          </CardContent>
        </Card>
      </div>

      {/* 24-hour Restriction Alert */}
      {!canTakeTest && (
        <Alert className="border-orange-200 bg-orange-50 dark:border-orange-900/50 dark:bg-orange-900/10">
          <AlertCircle className="h-4 w-4 text-orange-600" />
          <AlertTitle className="text-orange-900 dark:text-orange-100">Test Cooldown Period</AlertTitle>
          <AlertDescription className="text-orange-800 dark:text-orange-200">
            You can only take one full mock test every 24 hours. Your next test will be available on{' '}
            <strong>{nextAvailableTime?.toLocaleString()}</strong> (in approximately {timeRemaining} hours).
            <br />
            <span className="text-sm mt-1 block">
              This restriction helps simulate real exam conditions and gives you time to review your performance.
            </span>
          </AlertDescription>
        </Alert>
      )}

      {/* Test Information */}
      <Card>
        <CardHeader>
          <CardTitle>About the Full Mock Test</CardTitle>
          <CardDescription>
            A complete simulation of the IELTS examination
          </CardDescription>
        </CardHeader>
        <CardContent className="space-y-6">
          <div className="grid gap-4 md:grid-cols-2">
            <div className="space-y-2">
              <h3 className="font-semibold flex items-center gap-2">
                <Clock className="w-4 h-4" />
                Test Duration
              </h3>
              <p className="text-sm text-muted-foreground">
                Approximately 2 hours 45 minutes total
              </p>
            </div>

            <div className="space-y-2">
              <h3 className="font-semibold flex items-center gap-2">
                <ClipboardList className="w-4 h-4" />
                Test Format
              </h3>
              <p className="text-sm text-muted-foreground">
                All four modules in exam order
              </p>
            </div>
          </div>

          <div className="space-y-3">
            <h3 className="font-semibold">Test Modules:</h3>
            <div className="grid gap-3 md:grid-cols-2">
              <div className="flex items-start gap-3 p-3 rounded-lg border">
                <div className="w-10 h-10 rounded-lg bg-blue-100 dark:bg-blue-900/30 flex items-center justify-center shrink-0">
                  <Headphones className="w-5 h-5 text-blue-600 dark:text-blue-400" />
                </div>
                <div>
                  <h4 className="font-medium">Listening</h4>
                  <p className="text-sm text-muted-foreground">30 minutes + 10 min transfer</p>
                </div>
              </div>

              <div className="flex items-start gap-3 p-3 rounded-lg border">
                <div className="w-10 h-10 rounded-lg bg-green-100 dark:bg-green-900/30 flex items-center justify-center shrink-0">
                  <BookOpen className="w-5 h-5 text-green-600 dark:text-green-400" />
                </div>
                <div>
                  <h4 className="font-medium">Reading</h4>
                  <p className="text-sm text-muted-foreground">60 minutes</p>
                </div>
              </div>

              <div className="flex items-start gap-3 p-3 rounded-lg border">
                <div className="w-10 h-10 rounded-lg bg-purple-100 dark:bg-purple-900/30 flex items-center justify-center shrink-0">
                  <PenTool className="w-5 h-5 text-purple-600 dark:text-purple-400" />
                </div>
                <div>
                  <h4 className="font-medium">Writing</h4>
                  <p className="text-sm text-muted-foreground">60 minutes (Task 1 & 2)</p>
                </div>
              </div>

              <div className="flex items-start gap-3 p-3 rounded-lg border">
                <div className="w-10 h-10 rounded-lg bg-red-100 dark:bg-red-900/30 flex items-center justify-center shrink-0">
                  <Mic className="w-5 h-5 text-red-600 dark:text-red-400" />
                </div>
                <div>
                  <h4 className="font-medium">Speaking</h4>
                  <p className="text-sm text-muted-foreground">11-14 minutes (Coming soon)</p>
                </div>
              </div>
            </div>
          </div>

          <Alert>
            <AlertCircle className="h-4 w-4" />
            <AlertTitle>Important Notes</AlertTitle>
            <AlertDescription className="space-y-1">
              <p>• Once started, you must complete the test in one sitting</p>
              <p>• Time limits for each section will be strictly enforced</p>
              <p>• You cannot pause or save progress during the test</p>
              <p>• Results will be available immediately after completion</p>
            </AlertDescription>
          </Alert>
        </CardContent>
      </Card>

      {/* Available Tests */}
      <Card>
        <CardHeader>
          <CardTitle>Available Mock Tests</CardTitle>
          <CardDescription>
            Select a test to begin your full mock examination
          </CardDescription>
        </CardHeader>
        <CardContent>
          {tests && tests.length > 0 ? (
            <div className="space-y-3">
              {tests.map((test) => (
                <div
                  key={test.id}
                  className="flex items-center justify-between p-4 rounded-lg border hover:border-primary transition-colors"
                >
                  <div className="flex-1">
                    <h3 className="font-medium">{test.title}</h3>
                    <p className="text-sm text-muted-foreground mt-1">
                      {test.description || 'Complete IELTS mock test simulation'}
                    </p>
                    {test.difficulty_level && (
                      <Badge variant="secondary" className="mt-2">
                        {test.difficulty_level}
                      </Badge>
                    )}
                  </div>
                  <div className="ml-4">
                    {canTakeTest ? (
                      <Link href={`/dashboard/full-mock-test/${test.id}/start`}>
                        <Button>
                          Start Test
                          <ClipboardList className="ml-2 h-4 w-4" />
                        </Button>
                      </Link>
                    ) : (
                      <Button disabled>
                        <Clock className="mr-2 h-4 w-4" />
                        Locked
                      </Button>
                    )}
                  </div>
                </div>
              ))}
            </div>
          ) : (
            <div className="text-center py-8 text-muted-foreground">
              <p>No tests available at the moment. Please check back later.</p>
            </div>
          )}
        </CardContent>
      </Card>

      {/* Recent Attempts */}
      {completedTests && completedTests.length > 0 && (
        <Card>
          <CardHeader>
            <CardTitle>Recent Full Mock Tests</CardTitle>
            <CardDescription>Your previous test attempts and scores</CardDescription>
          </CardHeader>
          <CardContent>
            <div className="space-y-3">
              {completedTests.slice(0, 5).map((attempt: any) => (
                <div
                  key={attempt.id}
                  className="flex items-center justify-between p-4 rounded-lg border"
                >
                  <div>
                    <p className="font-medium">
                      {new Date(attempt.created_at).toLocaleDateString('en-US', {
                        year: 'numeric',
                        month: 'long',
                        day: 'numeric'
                      })}
                    </p>
                    <div className="flex gap-4 mt-2 text-sm text-muted-foreground">
                      <span>L: {attempt.listening_score || 'N/A'}</span>
                      <span>R: {attempt.reading_score || 'N/A'}</span>
                      <span>W: {attempt.writing_score || 'N/A'}</span>
                      <span>S: {attempt.speaking_score || 'N/A'}</span>
                    </div>
                  </div>
                  <div className="text-right">
                    <Badge variant="default" className="text-lg px-3 py-1">
                      Band {attempt.overall_band_score || 'N/A'}
                    </Badge>
                  </div>
                </div>
              ))}
            </div>
          </CardContent>
        </Card>
      )}
    </div>
  )
}
