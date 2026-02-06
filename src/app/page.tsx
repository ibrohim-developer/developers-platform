import Link from 'next/link'
import { Header } from '@/components/layout/header'
import { Footer } from '@/components/layout/footer'
import { Button } from '@/components/ui/button'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import {
  Headphones,
  BookOpen,
  PenTool,
  Clock,
  Target,
  BarChart3,
  CheckCircle,
  ArrowRight,
  Users,
  Award,
  TrendingUp
} from 'lucide-react'

export default function HomePage() {
  return (
    <div className="min-h-screen flex flex-col">
      <Header />

      <main className="flex-1">
        {/* Hero Section */}
        <section className="relative overflow-hidden bg-gradient-to-b from-blue-50 to-white dark:from-gray-900 dark:to-background py-20 md:py-32">
          <div className="container mx-auto px-4">
            <div className="max-w-4xl mx-auto text-center space-y-8">
              <Badge variant="secondary" className="px-4 py-1.5">
                Practice like the real exam
              </Badge>

              <h1 className="text-4xl md:text-6xl font-bold tracking-tight">
                Ace Your IELTS Exam with{' '}
                <span className="text-primary">Practice Tests</span>
              </h1>

              <p className="text-xl text-muted-foreground max-w-2xl mx-auto">
                Prepare for IELTS with our comprehensive mock tests. Experience real exam conditions,
                get instant feedback, and track your progress towards your target band score.
              </p>

              <div className="flex flex-col sm:flex-row gap-4 justify-center">
                <Link href="/sign-up">
                  <Button size="lg" className="text-lg px-8">
                    Start Free Practice
                    <ArrowRight className="ml-2 w-5 h-5" />
                  </Button>
                </Link>
                <Link href="/dashboard">
                  <Button size="lg" variant="outline" className="text-lg px-8">
                    View All Tests
                  </Button>
                </Link>
              </div>

              {/* Stats */}
              <div className="grid grid-cols-3 gap-8 pt-12 max-w-2xl mx-auto">
                <div className="text-center">
                  <div className="text-3xl font-bold text-primary">10K+</div>
                  <div className="text-sm text-muted-foreground">Active Users</div>
                </div>
                <div className="text-center">
                  <div className="text-3xl font-bold text-primary">50+</div>
                  <div className="text-sm text-muted-foreground">Practice Tests</div>
                </div>
                <div className="text-center">
                  <div className="text-3xl font-bold text-primary">7.5</div>
                  <div className="text-sm text-muted-foreground">Avg. Band Score</div>
                </div>
              </div>
            </div>
          </div>
        </section>

        {/* Test Modules Section */}
        <section className="py-20 bg-background">
          <div className="container mx-auto px-4">
            <div className="text-center mb-16">
              <h2 className="text-3xl md:text-4xl font-bold mb-4">
                Complete IELTS Preparation
              </h2>
              <p className="text-xl text-muted-foreground max-w-2xl mx-auto">
                Practice all four IELTS modules with our realistic mock tests
              </p>
            </div>

            <div className="grid md:grid-cols-3 gap-8">
              {/* Listening */}
              <Card className="group hover:shadow-lg transition-all duration-300 hover:-translate-y-1">
                <CardHeader>
                  <div className="w-14 h-14 rounded-2xl bg-blue-100 dark:bg-blue-900/30 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                    <Headphones className="w-7 h-7 text-blue-600 dark:text-blue-400" />
                  </div>
                  <CardTitle className="text-2xl">Listening</CardTitle>
                  <CardDescription className="text-base">
                    Practice with authentic audio recordings and improve your listening comprehension
                  </CardDescription>
                </CardHeader>
                <CardContent>
                  <ul className="space-y-3 mb-6">
                    <li className="flex items-center gap-2 text-sm">
                      <CheckCircle className="w-4 h-4 text-green-500" />
                      4 sections, 40 questions
                    </li>
                    <li className="flex items-center gap-2 text-sm">
                      <CheckCircle className="w-4 h-4 text-green-500" />
                      30 minutes duration
                    </li>
                    <li className="flex items-center gap-2 text-sm">
                      <CheckCircle className="w-4 h-4 text-green-500" />
                      Real exam conditions
                    </li>
                  </ul>
                  <Link href="/listening">
                    <Button className="w-full" variant="outline">
                      Start Listening Test
                    </Button>
                  </Link>
                </CardContent>
              </Card>

              {/* Reading */}
              <Card className="group hover:shadow-lg transition-all duration-300 hover:-translate-y-1">
                <CardHeader>
                  <div className="w-14 h-14 rounded-2xl bg-green-100 dark:bg-green-900/30 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                    <BookOpen className="w-7 h-7 text-green-600 dark:text-green-400" />
                  </div>
                  <CardTitle className="text-2xl">Reading</CardTitle>
                  <CardDescription className="text-base">
                    Improve your reading speed and comprehension with academic passages
                  </CardDescription>
                </CardHeader>
                <CardContent>
                  <ul className="space-y-3 mb-6">
                    <li className="flex items-center gap-2 text-sm">
                      <CheckCircle className="w-4 h-4 text-green-500" />
                      3 passages, 40 questions
                    </li>
                    <li className="flex items-center gap-2 text-sm">
                      <CheckCircle className="w-4 h-4 text-green-500" />
                      60 minutes duration
                    </li>
                    <li className="flex items-center gap-2 text-sm">
                      <CheckCircle className="w-4 h-4 text-green-500" />
                      Various question types
                    </li>
                  </ul>
                  <Link href="/reading">
                    <Button className="w-full" variant="outline">
                      Start Reading Test
                    </Button>
                  </Link>
                </CardContent>
              </Card>

              {/* Writing */}
              <Card className="group hover:shadow-lg transition-all duration-300 hover:-translate-y-1">
                <CardHeader>
                  <div className="w-14 h-14 rounded-2xl bg-purple-100 dark:bg-purple-900/30 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                    <PenTool className="w-7 h-7 text-purple-600 dark:text-purple-400" />
                  </div>
                  <CardTitle className="text-2xl">Writing</CardTitle>
                  <CardDescription className="text-base">
                    Practice Task 1 and Task 2 with detailed scoring criteria
                  </CardDescription>
                </CardHeader>
                <CardContent>
                  <ul className="space-y-3 mb-6">
                    <li className="flex items-center gap-2 text-sm">
                      <CheckCircle className="w-4 h-4 text-green-500" />
                      Task 1 & Task 2
                    </li>
                    <li className="flex items-center gap-2 text-sm">
                      <CheckCircle className="w-4 h-4 text-green-500" />
                      60 minutes duration
                    </li>
                    <li className="flex items-center gap-2 text-sm">
                      <CheckCircle className="w-4 h-4 text-green-500" />
                      Word count tracking
                    </li>
                  </ul>
                  <Link href="/writing">
                    <Button className="w-full" variant="outline">
                      Start Writing Test
                    </Button>
                  </Link>
                </CardContent>
              </Card>
            </div>
          </div>
        </section>

        {/* Features Section */}
        <section className="py-20 bg-muted/30">
          <div className="container mx-auto px-4">
            <div className="text-center mb-16">
              <h2 className="text-3xl md:text-4xl font-bold mb-4">
                Why Practice with Us?
              </h2>
              <p className="text-xl text-muted-foreground max-w-2xl mx-auto">
                Everything you need to prepare for your IELTS exam
              </p>
            </div>

            <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
              <div className="flex gap-4">
                <div className="w-12 h-12 rounded-xl bg-primary/10 flex items-center justify-center shrink-0">
                  <Clock className="w-6 h-6 text-primary" />
                </div>
                <div>
                  <h3 className="font-semibold text-lg mb-2">Timed Practice</h3>
                  <p className="text-muted-foreground">
                    Practice under real exam conditions with accurate time limits for each section
                  </p>
                </div>
              </div>

              <div className="flex gap-4">
                <div className="w-12 h-12 rounded-xl bg-primary/10 flex items-center justify-center shrink-0">
                  <Target className="w-6 h-6 text-primary" />
                </div>
                <div>
                  <h3 className="font-semibold text-lg mb-2">Accurate Scoring</h3>
                  <p className="text-muted-foreground">
                    Get your band score instantly after completing each test section
                  </p>
                </div>
              </div>

              <div className="flex gap-4">
                <div className="w-12 h-12 rounded-xl bg-primary/10 flex items-center justify-center shrink-0">
                  <BarChart3 className="w-6 h-6 text-primary" />
                </div>
                <div>
                  <h3 className="font-semibold text-lg mb-2">Progress Tracking</h3>
                  <p className="text-muted-foreground">
                    Monitor your improvement over time with detailed analytics and insights
                  </p>
                </div>
              </div>

              <div className="flex gap-4">
                <div className="w-12 h-12 rounded-xl bg-primary/10 flex items-center justify-center shrink-0">
                  <Users className="w-6 h-6 text-primary" />
                </div>
                <div>
                  <h3 className="font-semibold text-lg mb-2">Real Questions</h3>
                  <p className="text-muted-foreground">
                    Practice with questions similar to the actual IELTS exam format
                  </p>
                </div>
              </div>

              <div className="flex gap-4">
                <div className="w-12 h-12 rounded-xl bg-primary/10 flex items-center justify-center shrink-0">
                  <Award className="w-6 h-6 text-primary" />
                </div>
                <div>
                  <h3 className="font-semibold text-lg mb-2">Detailed Feedback</h3>
                  <p className="text-muted-foreground">
                    Review your answers with explanations to understand your mistakes
                  </p>
                </div>
              </div>

              <div className="flex gap-4">
                <div className="w-12 h-12 rounded-xl bg-primary/10 flex items-center justify-center shrink-0">
                  <TrendingUp className="w-6 h-6 text-primary" />
                </div>
                <div>
                  <h3 className="font-semibold text-lg mb-2">Improve Faster</h3>
                  <p className="text-muted-foreground">
                    Identify your weak areas and focus your practice for maximum improvement
                  </p>
                </div>
              </div>
            </div>
          </div>
        </section>

        {/* CTA Section */}
        <section className="py-20 bg-primary text-primary-foreground">
          <div className="container mx-auto px-4 text-center">
            <h2 className="text-3xl md:text-4xl font-bold mb-4">
              Ready to Start Practicing?
            </h2>
            <p className="text-xl opacity-90 max-w-2xl mx-auto mb-8">
              Join thousands of students who have improved their IELTS scores with our mock tests.
            </p>
            <Link href="/sign-up">
              <Button size="lg" variant="secondary" className="text-lg px-8">
                Create Free Account
                <ArrowRight className="ml-2 w-5 h-5" />
              </Button>
            </Link>
          </div>
        </section>
      </main>

      <Footer />
    </div>
  )
}
