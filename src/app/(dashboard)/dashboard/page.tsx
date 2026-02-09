import Link from 'next/link'
import { createClient } from '@/lib/supabase/server'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Progress } from '@/components/ui/progress'
import {
  Headphones,
  BookOpen,
  PenTool,
  TrendingUp,
  Clock,
  Target,
  ArrowRight,
  Play
} from 'lucide-react'

/* eslint-disable @typescript-eslint/no-explicit-any */
export default async function DashboardPage() {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  let profile: any = null
  let recentAttempts: any[] | null = null
  let allAttempts: any[] | null = null

  if (user) {
    const { data: profileData } = await supabase
      .from('profiles')
      .select('*')
      .eq('id', user.id)
      .single()
    profile = profileData

    const { data: recentData } = await supabase
      .from('test_attempts')
      .select('*')
      .eq('user_id', user.id)
      .order('created_at', { ascending: false })
      .limit(5)
    recentAttempts = recentData

    const { data: allData } = await supabase
      .from('test_attempts')
      .select('*')
      .eq('user_id', user.id)
      .eq('status', 'completed')
    allAttempts = allData
  }

  const totalTests = allAttempts?.length || 0
  const avgScore = allAttempts?.length
    ? (allAttempts.reduce((sum, a) => sum + (a.band_score || 0), 0) / allAttempts.length).toFixed(1)
    : '0.0'

  const listeningTests = allAttempts?.filter(a => a.module_type === 'listening').length || 0
  const readingTests = allAttempts?.filter(a => a.module_type === 'reading').length || 0
  const writingTests = allAttempts?.filter(a => a.module_type === 'writing').length || 0

  return (
    <div className="space-y-8">
      {/* Welcome Section */}
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-3xl font-bold">
            Welcome back, {profile?.full_name || 'Student'}!
          </h1>
          <p className="text-muted-foreground mt-1">
            Continue your IELTS preparation journey
          </p>
        </div>
        <Link href="/dashboard/tests">
          <Button>
            Start New Test
            <ArrowRight className="ml-2 h-4 w-4" />
          </Button>
        </Link>
      </div>

      {/* Stats Cards */}
      <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-4">
        <Card>
          <CardHeader className="flex flex-row items-center justify-between pb-2">
            <CardTitle className="text-sm font-medium">Total Tests</CardTitle>
            <Target className="h-4 w-4 text-muted-foreground" />
          </CardHeader>
          <CardContent>
            <div className="text-2xl font-bold">{totalTests}</div>
            <p className="text-xs text-muted-foreground">Tests completed</p>
          </CardContent>
        </Card>

        <Card>
          <CardHeader className="flex flex-row items-center justify-between pb-2">
            <CardTitle className="text-sm font-medium">Average Score</CardTitle>
            <TrendingUp className="h-4 w-4 text-muted-foreground" />
          </CardHeader>
          <CardContent>
            <div className="text-2xl font-bold">{avgScore}</div>
            <p className="text-xs text-muted-foreground">Band score average</p>
          </CardContent>
        </Card>

        <Card>
          <CardHeader className="flex flex-row items-center justify-between pb-2">
            <CardTitle className="text-sm font-medium">Target Score</CardTitle>
            <Target className="h-4 w-4 text-muted-foreground" />
          </CardHeader>
          <CardContent>
            <div className="text-2xl font-bold">{profile?.target_band_score || '7.0'}</div>
            <p className="text-xs text-muted-foreground">Your goal</p>
          </CardContent>
        </Card>

        <Card>
          <CardHeader className="flex flex-row items-center justify-between pb-2">
            <CardTitle className="text-sm font-medium">This Week</CardTitle>
            <Clock className="h-4 w-4 text-muted-foreground" />
          </CardHeader>
          <CardContent>
            <div className="text-2xl font-bold">{totalTests}</div>
            <p className="text-xs text-muted-foreground">Tests taken</p>
          </CardContent>
        </Card>
      </div>

      {/* Quick Start Cards */}
      <div className="grid gap-6 md:grid-cols-3">
        <Card className="group hover:shadow-md transition-shadow">
          <CardHeader>
            <div className="flex items-center gap-3">
              <div className="w-10 h-10 rounded-lg bg-blue-100 dark:bg-blue-900/30 flex items-center justify-center">
                <Headphones className="w-5 h-5 text-blue-600 dark:text-blue-400" />
              </div>
              <div>
                <CardTitle className="text-lg">Listening</CardTitle>
                <CardDescription>{listeningTests} tests completed</CardDescription>
              </div>
            </div>
          </CardHeader>
          <CardContent>
            <Progress value={(listeningTests / 10) * 100} className="h-2 mb-4" />
            <Link href="/dashboard/listening">
              <Button variant="outline" className="w-full group-hover:bg-primary group-hover:text-primary-foreground transition-colors">
                <Play className="mr-2 h-4 w-4" />
                Practice Listening
              </Button>
            </Link>
          </CardContent>
        </Card>

        <Card className="group hover:shadow-md transition-shadow">
          <CardHeader>
            <div className="flex items-center gap-3">
              <div className="w-10 h-10 rounded-lg bg-green-100 dark:bg-green-900/30 flex items-center justify-center">
                <BookOpen className="w-5 h-5 text-green-600 dark:text-green-400" />
              </div>
              <div>
                <CardTitle className="text-lg">Reading</CardTitle>
                <CardDescription>{readingTests} tests completed</CardDescription>
              </div>
            </div>
          </CardHeader>
          <CardContent>
            <Progress value={(readingTests / 10) * 100} className="h-2 mb-4" />
            <Link href="/dashboard/reading">
              <Button variant="outline" className="w-full group-hover:bg-primary group-hover:text-primary-foreground transition-colors">
                <Play className="mr-2 h-4 w-4" />
                Practice Reading
              </Button>
            </Link>
          </CardContent>
        </Card>

        <Card className="group hover:shadow-md transition-shadow">
          <CardHeader>
            <div className="flex items-center gap-3">
              <div className="w-10 h-10 rounded-lg bg-purple-100 dark:bg-purple-900/30 flex items-center justify-center">
                <PenTool className="w-5 h-5 text-purple-600 dark:text-purple-400" />
              </div>
              <div>
                <CardTitle className="text-lg">Writing</CardTitle>
                <CardDescription>{writingTests} tests completed</CardDescription>
              </div>
            </div>
          </CardHeader>
          <CardContent>
            <Progress value={(writingTests / 10) * 100} className="h-2 mb-4" />
            <Link href="/dashboard/writing">
              <Button variant="outline" className="w-full group-hover:bg-primary group-hover:text-primary-foreground transition-colors">
                <Play className="mr-2 h-4 w-4" />
                Practice Writing
              </Button>
            </Link>
          </CardContent>
        </Card>
      </div>

      {/* Recent Activity */}
      <Card>
        <CardHeader>
          <CardTitle>Recent Activity</CardTitle>
          <CardDescription>Your latest test attempts</CardDescription>
        </CardHeader>
        <CardContent>
          {recentAttempts && recentAttempts.length > 0 ? (
            <div className="space-y-4">
              {recentAttempts.map((attempt) => (
                <div
                  key={attempt.id}
                  className="flex items-center justify-between p-4 rounded-lg border bg-card"
                >
                  <div className="flex items-center gap-4">
                    <div className={`w-10 h-10 rounded-lg flex items-center justify-center ${
                      attempt.module_type === 'listening' ? 'bg-blue-100 dark:bg-blue-900/30' :
                      attempt.module_type === 'reading' ? 'bg-green-100 dark:bg-green-900/30' :
                      'bg-purple-100 dark:bg-purple-900/30'
                    }`}>
                      {attempt.module_type === 'listening' && <Headphones className="w-5 h-5 text-blue-600 dark:text-blue-400" />}
                      {attempt.module_type === 'reading' && <BookOpen className="w-5 h-5 text-green-600 dark:text-green-400" />}
                      {attempt.module_type === 'writing' && <PenTool className="w-5 h-5 text-purple-600 dark:text-purple-400" />}
                    </div>
                    <div>
                      <p className="font-medium capitalize">{attempt.module_type} Test</p>
                      <p className="text-sm text-muted-foreground">
                        {new Date(attempt.created_at).toLocaleDateString()}
                      </p>
                    </div>
                  </div>
                  <div className="flex items-center gap-4">
                    <Badge variant={attempt.status === 'completed' ? 'default' : 'secondary'}>
                      {attempt.status === 'completed' ? `Band ${attempt.band_score}` : 'In Progress'}
                    </Badge>
                    {attempt.status === 'completed' && (
                      <Link href={`/results/${attempt.id}`}>
                        <Button variant="ghost" size="sm">
                          View Results
                        </Button>
                      </Link>
                    )}
                  </div>
                </div>
              ))}
            </div>
          ) : (
            <div className="text-center py-8 text-muted-foreground">
              <p>No tests taken yet. Start your first practice test!</p>
              <Link href="/dashboard/tests" className="mt-4 inline-block">
                <Button>Browse Tests</Button>
              </Link>
            </div>
          )}
        </CardContent>
      </Card>
    </div>
  )
}
