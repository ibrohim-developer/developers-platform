'use client'

import { useState, useEffect } from 'react'
import { useRouter } from 'next/navigation'
import { Button } from '@/components/ui/button'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { TestTimer } from '@/components/test/common/test-timer'
import { QuestionNavigator } from '@/components/test/common/question-navigator'
import { SubmitDialog } from '@/components/test/common/submit-dialog'
import { AudioPlayer } from '@/components/test/listening/audio-player'
import { MultipleChoice } from '@/components/test/questions/multiple-choice'
import { FillInBlank } from '@/components/test/questions/fill-in-blank'
import { useTestStore } from '@/stores/test-store'
import { TEST_CONFIG } from '@/lib/constants/test-config'
import { ArrowLeft, ArrowRight, Send } from 'lucide-react'

// Sample questions data
const sampleQuestions = [
  {
    id: 'q-1',
    type: 'multiple_choice',
    text: 'What is the main purpose of the speaker\'s visit?',
    options: ['To discuss a project', 'To attend a meeting', 'To give a presentation', 'To meet a client'],
    section: 1,
  },
  {
    id: 'q-2',
    type: 'fill_in_blank',
    text: 'The conference will be held at the _____ center.',
    section: 1,
  },
  {
    id: 'q-3',
    type: 'multiple_choice',
    text: 'How many participants are expected?',
    options: ['50', '100', '150', '200'],
    section: 1,
  },
  // Add more sample questions...
]

export default function ListeningTestPage() {
  const router = useRouter()
  const [showSubmitDialog, setShowSubmitDialog] = useState(false)
  const [isSubmitting, setIsSubmitting] = useState(false)
  const [currentQuestionIndex, setCurrentQuestionIndex] = useState(0)

  const {
    initTest,
    answers,
    setAnswer,
    currentSection,
    goToQuestion,
    resetTest,
  } = useTestStore()

  useEffect(() => {
    // Initialize test with 30 minutes
    initTest('demo-attempt', 'demo-test', 'listening', TEST_CONFIG.listening.totalTime)

    return () => {
      // Cleanup on unmount
    }
  }, [initTest])

  const currentQuestion = sampleQuestions[currentQuestionIndex]
  const answeredCount = Object.keys(answers).length
  const totalQuestions = sampleQuestions.length

  const handleAnswer = (value: string) => {
    setAnswer(currentQuestion.id, value)
  }

  const handleNext = () => {
    if (currentQuestionIndex < sampleQuestions.length - 1) {
      setCurrentQuestionIndex(currentQuestionIndex + 1)
    }
  }

  const handlePrevious = () => {
    if (currentQuestionIndex > 0) {
      setCurrentQuestionIndex(currentQuestionIndex - 1)
    }
  }

  const handleQuestionSelect = (section: number, question: number) => {
    // Calculate index based on section and question
    const index = (section - 1) * 10 + (question - 1)
    if (index < sampleQuestions.length) {
      setCurrentQuestionIndex(index)
      goToQuestion(section, question)
    }
  }

  const handleSubmit = async () => {
    setIsSubmitting(true)
    // Simulate submission
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
            <h1 className="text-lg font-semibold">IELTS Listening Test</h1>
            <span className="text-sm text-muted-foreground">
              Question {currentQuestionIndex + 1} of {totalQuestions}
            </span>
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
        <div className="grid lg:grid-cols-4 gap-6">
          {/* Main Content */}
          <div className="lg:col-span-3 space-y-6">
            {/* Audio Player */}
            <Card>
              <CardHeader>
                <CardTitle>Section {currentSection} Audio</CardTitle>
              </CardHeader>
              <CardContent>
                <AudioPlayer
                  audioUrl="/audio/sample-listening.mp3"
                  allowReplay={true} // For demo purposes
                />
              </CardContent>
            </Card>

            {/* Question */}
            <Card>
              <CardContent className="pt-6">
                {currentQuestion.type === 'multiple_choice' && (
                  <MultipleChoice
                    questionId={currentQuestion.id}
                    questionNumber={currentQuestionIndex + 1}
                    questionText={currentQuestion.text}
                    options={currentQuestion.options || []}
                    value={answers[currentQuestion.id]?.answer || ''}
                    onChange={handleAnswer}
                  />
                )}
                {currentQuestion.type === 'fill_in_blank' && (
                  <FillInBlank
                    questionId={currentQuestion.id}
                    questionNumber={currentQuestionIndex + 1}
                    questionText={currentQuestion.text}
                    value={answers[currentQuestion.id]?.answer || ''}
                    onChange={handleAnswer}
                  />
                )}
              </CardContent>
            </Card>

            {/* Navigation */}
            <div className="flex justify-between">
              <Button
                variant="outline"
                onClick={handlePrevious}
                disabled={currentQuestionIndex === 0}
              >
                <ArrowLeft className="mr-2 h-4 w-4" />
                Previous
              </Button>
              <Button
                onClick={handleNext}
                disabled={currentQuestionIndex === sampleQuestions.length - 1}
              >
                Next
                <ArrowRight className="ml-2 h-4 w-4" />
              </Button>
            </div>
          </div>

          {/* Sidebar - Question Navigator */}
          <div className="lg:col-span-1">
            <div className="sticky top-24">
              <QuestionNavigator
                totalQuestions={totalQuestions}
                questionsPerSection={[3]} // For demo
                onQuestionSelect={handleQuestionSelect}
              />
            </div>
          </div>
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
    </div>
  )
}
