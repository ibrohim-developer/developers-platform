'use client'

import { useState, useEffect } from 'react'
import { useRouter } from 'next/navigation'
import { Button } from '@/components/ui/button'
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs'
import { TestTimer } from '@/components/test/common/test-timer'
import { SubmitDialog } from '@/components/test/common/submit-dialog'
import { SplitView } from '@/components/test/reading/split-view'
import { PassageDisplay } from '@/components/test/reading/passage-display'
import { MultipleChoice } from '@/components/test/questions/multiple-choice'
import { TrueFalseNotGiven } from '@/components/test/questions/true-false-not-given'
import { FillInBlank } from '@/components/test/questions/fill-in-blank'
import { useTestStore } from '@/stores/test-store'
import { TEST_CONFIG } from '@/lib/constants/test-config'
import { Send } from 'lucide-react'

// Sample passage and questions
const passages = [
  {
    id: 'passage-1',
    title: 'The Rise of Renewable Energy',
    content: `The global transition to renewable energy sources has accelerated dramatically in recent years. Solar and wind power have become increasingly cost-competitive with traditional fossil fuels, leading to widespread adoption across both developed and developing nations.

This shift is driven by multiple factors, including growing awareness of climate change, technological advancements, and supportive government policies. Many countries have set ambitious targets for renewable energy adoption, with some aiming for carbon neutrality by 2050.

The economic benefits of renewable energy are also becoming increasingly apparent. The sector has created millions of jobs worldwide and has attracted significant investment. Solar panel manufacturing, wind turbine production, and related industries have become major economic drivers in many regions.

However, challenges remain. The intermittent nature of solar and wind power requires advances in energy storage technology. Grid infrastructure must be updated to handle distributed energy generation. Despite these challenges, the momentum toward renewable energy appears unstoppable.`,
    questions: [
      {
        id: 'q-1',
        type: 'true_false_not_given',
        text: 'Solar and wind power are now cheaper than fossil fuels in all countries.',
      },
      {
        id: 'q-2',
        type: 'multiple_choice',
        text: 'According to the passage, what is driving the shift to renewable energy?',
        options: [
          'Only government policies',
          'Multiple factors including climate awareness and technology',
          'Purely economic reasons',
          'International pressure'
        ],
      },
      {
        id: 'q-3',
        type: 'fill_in_blank',
        text: 'Some countries aim to achieve carbon _____ by 2050.',
      },
      {
        id: 'q-4',
        type: 'true_false_not_given',
        text: 'The renewable energy sector has created employment opportunities.',
      },
      {
        id: 'q-5',
        type: 'multiple_choice',
        text: 'What challenge of renewable energy is mentioned in the passage?',
        options: [
          'High costs',
          'Lack of investment',
          'Intermittent power generation',
          'Government opposition'
        ],
      },
    ],
  },
]

export default function ReadingTestPage() {
  const router = useRouter()
  const [showSubmitDialog, setShowSubmitDialog] = useState(false)
  const [isSubmitting, setIsSubmitting] = useState(false)
  const [activePassage, setActivePassage] = useState('passage-1')

  const {
    initTest,
    answers,
    setAnswer,
    resetTest,
  } = useTestStore()

  useEffect(() => {
    initTest('demo-attempt', 'demo-test', 'reading', TEST_CONFIG.reading.totalTime)
  }, [initTest])

  const currentPassage = passages.find(p => p.id === activePassage)!
  const allQuestions = passages.flatMap(p => p.questions)
  const answeredCount = Object.keys(answers).length
  const totalQuestions = allQuestions.length

  const handleAnswer = (questionId: string, value: string) => {
    setAnswer(questionId, value)
  }

  const handleSubmit = async () => {
    setIsSubmitting(true)
    await new Promise(resolve => setTimeout(resolve, 1500))
    resetTest()
    router.push('/dashboard')
  }

  const handleTimeUp = () => {
    setShowSubmitDialog(true)
  }

  const renderQuestion = (question: typeof currentPassage.questions[0], index: number) => {
    const globalIndex = passages
      .slice(0, passages.findIndex(p => p.id === activePassage))
      .reduce((acc, p) => acc + p.questions.length, 0) + index

    switch (question.type) {
      case 'multiple_choice':
        return (
          <MultipleChoice
            key={question.id}
            questionId={question.id}
            questionNumber={globalIndex + 1}
            questionText={question.text}
            options={question.options || []}
            value={answers[question.id]?.answer || ''}
            onChange={(value) => handleAnswer(question.id, value)}
          />
        )
      case 'true_false_not_given':
        return (
          <TrueFalseNotGiven
            key={question.id}
            questionId={question.id}
            questionNumber={globalIndex + 1}
            questionText={question.text}
            value={answers[question.id]?.answer || ''}
            onChange={(value) => handleAnswer(question.id, value)}
          />
        )
      case 'fill_in_blank':
        return (
          <FillInBlank
            key={question.id}
            questionId={question.id}
            questionNumber={globalIndex + 1}
            questionText={question.text}
            value={answers[question.id]?.answer || ''}
            onChange={(value) => handleAnswer(question.id, value)}
          />
        )
      default:
        return null
    }
  }

  return (
    <div className="min-h-screen bg-muted/30 flex flex-col">
      {/* Header */}
      <header className="sticky top-0 z-50 bg-background border-b">
        <div className="container mx-auto px-4 h-16 flex items-center justify-between">
          <div className="flex items-center gap-4">
            <h1 className="text-lg font-semibold">IELTS Reading Test</h1>
            <Tabs value={activePassage} onValueChange={setActivePassage}>
              <TabsList>
                {passages.map((passage, index) => (
                  <TabsTrigger key={passage.id} value={passage.id}>
                    Passage {index + 1}
                  </TabsTrigger>
                ))}
              </TabsList>
            </Tabs>
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
                  passages.slice(0, passages.findIndex(p => p.id === activePassage))
                    .reduce((acc, p) => acc + p.questions.length, 0) + 1
                } - {
                  passages.slice(0, passages.findIndex(p => p.id === activePassage) + 1)
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
    </div>
  )
}
