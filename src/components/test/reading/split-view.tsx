'use client'

import { useState } from 'react'
import { cn } from '@/lib/utils'
import { GripVertical } from 'lucide-react'

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
      className="flex h-full"
      onMouseMove={handleMouseMove}
      onMouseUp={handleMouseUp}
      onMouseLeave={handleMouseUp}
    >
      {/* Left Panel - Passage */}
      <div
        className="overflow-y-auto border-r"
        style={{ width: `${ratio}%` }}
      >
        {leftPanel}
      </div>

      {/* Resizer */}
      <div
        className={cn(
          'w-2 flex items-center justify-center cursor-col-resize transition-colors hover:bg-primary/20',
          isDragging && 'bg-primary/30'
        )}
        onMouseDown={handleMouseDown}
      >
        <GripVertical className="h-6 w-6 text-muted-foreground" />
      </div>

      {/* Right Panel - Questions */}
      <div
        className="overflow-y-auto"
        style={{ width: `${100 - ratio}%` }}
      >
        {rightPanel}
      </div>
    </div>
  )
}
