"use client"

import { create } from 'zustand'
import { persist, createJSONStorage } from 'zustand/middleware'

interface Answer {
  questionId: string
  answer: string
  answeredAt: Date
}

interface TestState {
  attemptId: string | null
  testId: string | null
  moduleType: 'listening' | 'reading' | 'writing' | null
  currentSection: number
  currentQuestion: number
  timeRemaining: number
  isTimerRunning: boolean
  answers: Record<string, Answer>

  // Actions
  initTest: (attemptId: string, testId: string, moduleType: 'listening' | 'reading' | 'writing', totalTime: number) => void
  setAnswer: (questionId: string, answer: string) => void
  goToQuestion: (section: number, question: number) => void
  tick: () => void
  pauseTimer: () => void
  resumeTimer: () => void
  resetTest: () => void
  setTimeRemaining: (time: number) => void
}

export const useTestStore = create<TestState>()(
  persist(
    (set) => ({
      attemptId: null,
      testId: null,
      moduleType: null,
      currentSection: 1,
      currentQuestion: 1,
      timeRemaining: 0,
      isTimerRunning: false,
      answers: {},

      initTest: (attemptId, testId, moduleType, totalTime) => set({
        attemptId,
        testId,
        moduleType,
        currentSection: 1,
        currentQuestion: 1,
        timeRemaining: totalTime,
        isTimerRunning: true,
        answers: {},
      }),

      setAnswer: (questionId, answer) => set((state) => ({
        answers: {
          ...state.answers,
          [questionId]: {
            questionId,
            answer,
            answeredAt: new Date(),
          },
        },
      })),

      goToQuestion: (section, question) => set({
        currentSection: section,
        currentQuestion: question,
      }),

      tick: () => set((state) => ({
        timeRemaining: Math.max(0, state.timeRemaining - 1),
      })),

      pauseTimer: () => set({ isTimerRunning: false }),
      resumeTimer: () => set({ isTimerRunning: true }),

      setTimeRemaining: (time) => set({ timeRemaining: time }),

      resetTest: () => set({
        attemptId: null,
        testId: null,
        moduleType: null,
        currentSection: 1,
        currentQuestion: 1,
        timeRemaining: 0,
        isTimerRunning: false,
        answers: {},
      }),
    }),
    {
      name: 'ielts-test-storage',
      storage: createJSONStorage(() => sessionStorage),
      partialize: (state) => ({
        attemptId: state.attemptId,
        testId: state.testId,
        moduleType: state.moduleType,
        currentSection: state.currentSection,
        currentQuestion: state.currentQuestion,
        timeRemaining: state.timeRemaining,
        answers: state.answers,
      }),
    }
  )
)
