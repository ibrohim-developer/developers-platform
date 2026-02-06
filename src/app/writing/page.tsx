'use client'

import { useState, useEffect } from 'react'
import { useRouter } from 'next/navigation'
import { Button } from '@/components/ui/button'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs'
import { TestTimer } from '@/components/test/common/test-timer'
import { SubmitDialog } from '@/components/test/common/submit-dialog'
import { WritingEditor } from '@/components/test/writing/writing-editor'
import { useTestStore } from '@/stores/test-store'
import { TEST_CONFIG } from '@/lib/constants/test-config'
import { Send, FileText, Clock } from 'lucide-react'

// Sample writing tasks
const writingTasks = {
  task1: {
    id: 'task-1',
    title: 'Task 1 - Report Writing',
    description: 'You should spend about 20 minutes on this task.',
    prompt: `The chart below shows the percentage of households with access to the internet in three different countries between 2000 and 2020.

Summarize the information by selecting and reporting the main features, and make comparisons where relevant.

Write at least 150 words.`,
    minWords: 150,
    recommendedTime: 20,
  },
  task2: {
    id: 'task-2',
    title: 'Task 2 - Essay Writing',
    description: 'You should spend about 40 minutes on this task.',
    prompt: `Some people believe that technology has made our lives more complicated, while others think it has made life easier.

Discuss both views and give your own opinion.

Give reasons for your answer and include any relevant examples from your own knowledge or experience.

Write at least 250 words.`,
    minWords: 250,
    recommendedTime: 40,
  },
}

export default function WritingTestPage() {
  const router = useRouter()
  const [showSubmitDialog, setShowSubmitDialog] = useState(false)
  const [isSubmitting, setIsSubmitting] = useState(false)
  const [activeTask, setActiveTask] = useState<'task1' | 'task2'>('task1')
  const [task1Content, setTask1Content] = useState('')
  const [task2Content, setTask2Content] = useState('')

  const { initTest, resetTest } = useTestStore()

  useEffect(() => {
    initTest('demo-attempt', 'demo-test', 'writing', TEST_CONFIG.writing.totalTime)
  }, [initTest])

  const currentTask = writingTasks[activeTask]
  const task1Complete = task1Content.trim().split(/\s+/).filter(w => w).length >= writingTasks.task1.minWords
  const task2Complete = task2Content.trim().split(/\s+/).filter(w => w).length >= writingTasks.task2.minWords
  const answeredCount = (task1Complete ? 1 : 0) + (task2Complete ? 1 : 0)

  const handleSubmit = async () => {
    setIsSubmitting(true)
    await new Promise(resolve => setTimeout(resolve, 1500))
    resetTest()
    router.push('/dashboard')
  }

  const handleTimeUp = () => {
    setShowSubmitDialog(true)
  }

  return (
    <div className="min-h-screen bg-muted/30">
      {/* Header */}
      <header className="sticky top-0 z-50 bg-background border-b">
        <div className="container mx-auto px-4 h-16 flex items-center justify-between">
          <div className="flex items-center gap-4">
            <h1 className="text-lg font-semibold">IELTS Writing Test</h1>
            <div className="flex items-center gap-2 text-sm text-muted-foreground">
              <span className={task1Complete ? 'text-green-600' : ''}>
                Task 1 {task1Complete ? '✓' : ''}
              </span>
              <span>|</span>
              <span className={task2Complete ? 'text-green-600' : ''}>
                Task 2 {task2Complete ? '✓' : ''}
              </span>
            </div>
          </div>
          <div className="flex items-center gap-4">
            <TestTimer onTimeUp={handleTimeUp} />
            <Button onClick={() => setShowSubmitDialog(true)}>
              <Send className="mr-2 h-4 w-4" />
              Submit
            </Button>
          </div>
        </div>
      </header>

      <div className="container mx-auto px-4 py-6">
        <Tabs value={activeTask} onValueChange={(v) => setActiveTask(v as 'task1' | 'task2')}>
          <TabsList className="grid w-full max-w-md grid-cols-2">
            <TabsTrigger value="task1" className="flex items-center gap-2">
              <FileText className="h-4 w-4" />
              Task 1
              {task1Complete && <span className="text-green-500">✓</span>}
            </TabsTrigger>
            <TabsTrigger value="task2" className="flex items-center gap-2">
              <FileText className="h-4 w-4" />
              Task 2
              {task2Complete && <span className="text-green-500">✓</span>}
            </TabsTrigger>
          </TabsList>

          <TabsContent value="task1" className="mt-6">
            <div className="grid lg:grid-cols-2 gap-6">
              {/* Task Prompt */}
              <Card>
                <CardHeader>
                  <div className="flex items-center justify-between">
                    <CardTitle>{writingTasks.task1.title}</CardTitle>
                    <div className="flex items-center gap-1 text-sm text-muted-foreground">
                      <Clock className="h-4 w-4" />
                      ~{writingTasks.task1.recommendedTime} min
                    </div>
                  </div>
                  <CardDescription>{writingTasks.task1.description}</CardDescription>
                </CardHeader>
                <CardContent>
                  {/* Placeholder for chart image */}
                  <div className="aspect-video bg-muted rounded-lg flex items-center justify-center mb-4 border-2 border-dashed">
                    <span className="text-muted-foreground">Chart/Graph would appear here</span>
                  </div>
                  <div className="prose dark:prose-invert max-w-none">
                    <p className="whitespace-pre-line">{writingTasks.task1.prompt}</p>
                  </div>
                </CardContent>
              </Card>

              {/* Writing Editor */}
              <Card className="flex flex-col">
                <CardHeader>
                  <CardTitle>Your Response</CardTitle>
                  <CardDescription>Write at least {writingTasks.task1.minWords} words</CardDescription>
                </CardHeader>
                <CardContent className="flex-1">
                  <WritingEditor
                    value={task1Content}
                    onChange={setTask1Content}
                    minWords={writingTasks.task1.minWords}
                    placeholder="Write your Task 1 response here..."
                  />
                </CardContent>
              </Card>
            </div>
          </TabsContent>

          <TabsContent value="task2" className="mt-6">
            <div className="grid lg:grid-cols-2 gap-6">
              {/* Task Prompt */}
              <Card>
                <CardHeader>
                  <div className="flex items-center justify-between">
                    <CardTitle>{writingTasks.task2.title}</CardTitle>
                    <div className="flex items-center gap-1 text-sm text-muted-foreground">
                      <Clock className="h-4 w-4" />
                      ~{writingTasks.task2.recommendedTime} min
                    </div>
                  </div>
                  <CardDescription>{writingTasks.task2.description}</CardDescription>
                </CardHeader>
                <CardContent>
                  <div className="prose dark:prose-invert max-w-none">
                    <p className="whitespace-pre-line">{writingTasks.task2.prompt}</p>
                  </div>
                </CardContent>
              </Card>

              {/* Writing Editor */}
              <Card className="flex flex-col">
                <CardHeader>
                  <CardTitle>Your Response</CardTitle>
                  <CardDescription>Write at least {writingTasks.task2.minWords} words</CardDescription>
                </CardHeader>
                <CardContent className="flex-1">
                  <WritingEditor
                    value={task2Content}
                    onChange={setTask2Content}
                    minWords={writingTasks.task2.minWords}
                    placeholder="Write your Task 2 essay here..."
                  />
                </CardContent>
              </Card>
            </div>
          </TabsContent>
        </Tabs>
      </div>

      <SubmitDialog
        open={showSubmitDialog}
        onOpenChange={setShowSubmitDialog}
        onConfirm={handleSubmit}
        answeredCount={answeredCount}
        totalQuestions={2}
        isSubmitting={isSubmitting}
      />
    </div>
  )
}
