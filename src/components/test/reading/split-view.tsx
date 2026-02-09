'use client'

import { useState } from 'react'
import { cn } from '@/lib/utils'

interface SplitViewProps {
  leftPanel: React.ReactNode
  rightPanel: React.ReactNode
  defaultRatio?: number
}

export function SplitView({ leftPanel, rightPanel, defaultRatio = 50 }: SplitViewProps) {
  const [ratio, setRatio] = useState(defaultRatio)
  const [isDragging, setIsDragging] = useState(false)

  const handleMouseDown = () => {
    setIsDragging(true)
  }

  const handleMouseUp = () => {
    setIsDragging(false)
  }

  const handleMouseMove = (e: React.MouseEvent) => {
    if (!isDragging) return

    const container = e.currentTarget as HTMLElement
    const rect = container.getBoundingClientRect()
    const x = e.clientX - rect.left
    const newRatio = (x / rect.width) * 100

    // Clamp between 30% and 70%
    setRatio(Math.max(30, Math.min(70, newRatio)))
  }

  return (
    <div
      className="flex h-full bg-white"
      onMouseMove={handleMouseMove}
      onMouseUp={handleMouseUp}
      onMouseLeave={handleMouseUp}
    >
      {/* Left Panel - Passage */}
      <div
        className="overflow-y-auto border-r border-gray-200 bg-white"
        style={{ width: `${ratio}%` }}
      >
        {leftPanel}
      </div>

      {/* Resizer - thin draggable line */}
      <div
        className={cn(
          'w-0.75 bg-gray-200 cursor-col-resize hover:bg-gray-400 transition-colors flex items-center justify-center',
          isDragging && 'bg-gray-400'
        )}
        onMouseDown={handleMouseDown}
      >
        {/* Small drag indicator dot */}
        <div className="w-1.5 h-8 rounded-full bg-gray-300 opacity-0 hover:opacity-100 transition-opacity" />
      </div>

      {/* Right Panel - Questions */}
      <div
        className="overflow-y-auto bg-white"
        style={{ width: `${100 - ratio}%` }}
      >
        {rightPanel}
      </div>
    </div>
  )
}
