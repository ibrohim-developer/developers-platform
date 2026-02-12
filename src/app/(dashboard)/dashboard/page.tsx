import Link from 'next/link'
import { createClient } from '@/lib/supabase/server'
import {
  Headphones,
  BookOpen,
  PenTool,
  TrendingUp,
  Clock,
  Target,
  ArrowRight,
  Play,
  Mic
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

  const skillModules = [
    { title: 'Reading', href: '/dashboard/reading', icon: BookOpen, count: readingTests, color: 'text-green-500' },
    { title: 'Listening', href: '/dashboard/listening', icon: Headphones, count: listeningTests, color: 'text-blue-500' },
    { title: 'Writing', href: '/dashboard/writing', icon: PenTool, count: writingTests, color: 'text-purple-500' },
    { title: 'Speaking', href: '/dashboard/speaking', icon: Mic, count: 0, color: 'text-orange-500' },
  ]

  return (
    <div className="space-y-10">
      {/* Welcome */}
      <div className="flex items-end justify-between">
        <div>
          <h1 className="text-3xl font-black mb-1">
            Welcome back, {profile?.full_name || 'Student'}
          </h1>
          <p className="text-xs text-muted-foreground font-bold uppercase tracking-widest">
            Continue your IELTS preparation
          </p>
        </div>
        <Link
          href="/dashboard/full-mock-test"
          className="flex items-center gap-2 bg-primary text-primary-foreground px-6 py-3 rounded-lg font-black text-xs tracking-widest hover:opacity-90 transition-all uppercase"
        >
          Start Mock Test
          <ArrowRight className="h-4 w-4" />
        </Link>
      </div>

      {/* Stats */}
      <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-4">
        <div className="bg-card border border-border p-6 rounded-xl">
          <div className="flex items-center justify-between mb-3">
            <span className="text-xs font-bold text-muted-foreground uppercase tracking-widest">Total Tests</span>
            <Target className="h-4 w-4 text-muted-foreground" />
          </div>
          <p className="text-3xl font-black">{totalTests}</p>
          <p className="text-xs text-muted-foreground mt-1">Tests completed</p>
        </div>

        <div className="bg-card border border-border p-6 rounded-xl">
          <div className="flex items-center justify-between mb-3">
            <span className="text-xs font-bold text-muted-foreground uppercase tracking-widest">Avg Score</span>
            <TrendingUp className="h-4 w-4 text-muted-foreground" />
          </div>
          <p className="text-3xl font-black">{avgScore}</p>
          <p className="text-xs text-muted-foreground mt-1">Band score average</p>
        </div>

        <div className="bg-card border border-border p-6 rounded-xl">
          <div className="flex items-center justify-between mb-3">
            <span className="text-xs font-bold text-muted-foreground uppercase tracking-widest">Target</span>
            <Target className="h-4 w-4 text-muted-foreground" />
          </div>
          <p className="text-3xl font-black">{profile?.target_band_score || '7.0'}</p>
          <p className="text-xs text-muted-foreground mt-1">Your goal</p>
        </div>

        <div className="bg-card border border-border p-6 rounded-xl">
          <div className="flex items-center justify-between mb-3">
            <span className="text-xs font-bold text-muted-foreground uppercase tracking-widest">This Week</span>
            <Clock className="h-4 w-4 text-muted-foreground" />
          </div>
          <p className="text-3xl font-black">{totalTests}</p>
          <p className="text-xs text-muted-foreground mt-1">Tests taken</p>
        </div>
      </div>

      {/* Skill Modules */}
      <div>
        <h2 className="text-2xl font-black mb-1">Practice by Skill</h2>
        <p className="text-xs text-muted-foreground font-bold uppercase tracking-widest mb-6">Choose a module to practice</p>

        <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-4">
          {skillModules.map((mod) => (
            <Link key={mod.href} href={mod.href}>
              <div className="bg-card border border-border p-6 rounded-xl hover:shadow-md transition-shadow group">
                <mod.icon className={`h-8 w-8 ${mod.color} mb-4`} />
                <h3 className="text-lg font-black mb-1">{mod.title}</h3>
                <p className="text-xs text-muted-foreground font-bold">{mod.count} tests completed</p>
                <div className="mt-4 flex items-center gap-2 text-xs font-black text-primary group-hover:gap-3 transition-all">
                  <Play className="h-3 w-3" />
                  Practice Now
                </div>
              </div>
            </Link>
          ))}
        </div>
      </div>

      {/* Recent Activity */}
      <div>
        <div className="flex items-end justify-between mb-6">
          <div>
            <h2 className="text-2xl font-black mb-1">Recent Activity</h2>
            <p className="text-xs text-muted-foreground font-bold uppercase tracking-widest">Your latest test attempts</p>
          </div>
          <Link
            href="/dashboard/history"
            className="flex items-center gap-2 text-xs font-bold px-4 py-2 border border-border rounded-lg hover:bg-card transition-colors"
          >
            <Clock className="h-3.5 w-3.5" />
            View All History
          </Link>
        </div>

        {recentAttempts && recentAttempts.length > 0 ? (
          <div className="space-y-3">
            {recentAttempts.map((attempt) => (
              <div
                key={attempt.id}
                className="bg-card border border-border p-5 rounded-xl flex items-center justify-between hover:shadow-md transition-shadow"
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
                    <p className="text-sm font-black capitalize">{attempt.module_type} Test</p>
                    <p className="text-xs text-muted-foreground">
                      {new Date(attempt.created_at).toLocaleDateString()}
                    </p>
                  </div>
                </div>
                <div className="flex items-center gap-4">
                  {attempt.status === 'completed' ? (
                    <>
                      <span className="px-3 py-1 bg-green-500 text-white text-[10px] font-black uppercase rounded flex items-center gap-1">
                        Band {attempt.band_score}
                      </span>
                      <Link
                        href={`/dashboard/results/${attempt.id}`}
                        className="text-xs font-bold text-primary hover:underline"
                      >
                        View Results
                      </Link>
                    </>
                  ) : (
                    <span className="px-3 py-1 bg-muted text-muted-foreground text-[10px] font-black uppercase rounded">
                      In Progress
                    </span>
                  )}
                </div>
              </div>
            ))}
          </div>
        ) : (
          <div className="bg-card border border-border rounded-xl p-12 text-center">
            <p className="text-muted-foreground mb-4">No tests taken yet. Start your first practice test!</p>
            <Link
              href="/dashboard/reading"
              className="inline-flex items-center gap-2 bg-primary text-primary-foreground px-6 py-3 rounded-lg font-black text-xs tracking-widest hover:opacity-90 transition-all uppercase"
            >
              Browse Tests
            </Link>
          </div>
        )}
      </div>
    </div>
  )
}
