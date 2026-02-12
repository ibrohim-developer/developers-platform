'use client'

import { useState } from 'react'
import { cn } from '@/lib/utils'
import { PanelLeft, PanelRight, Columns2 } from 'lucide-react'

type ViewMode = 'split' | 'passage' | 'questions'

interface SplitViewProps {
  leftPanel: React.ReactNode
  rightPanel: React.ReactNode
  defaultRatio?: number
}

export function SplitView({ leftPanel, rightPanel, defaultRatio = 50 }: SplitViewProps) {
  const [ratio, setRatio] = useState(defaultRatio)
  const [isDragging, setIsDragging] = useState(false)
  const [viewMode, setViewMode] = useState<ViewMode>('split')

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

  const viewOptions: { mode: ViewMode; icon: typeof Columns2; label: string }[] = [
    { mode: 'passage', icon: PanelLeft, label: 'Passage' },
    { mode: 'split', icon: Columns2, label: 'Split' },
    { mode: 'questions', icon: PanelRight, label: 'Questions' },
  ]

  return (
    <div className="flex flex-col h-full">
      {/* View Mode Toggle */}
      <div className="shrink-0 flex items-center justify-center gap-1 py-1.5 bg-gray-50 border-b border-gray-200">
        {viewOptions.map(({ mode, icon: Icon, label }) => (
          <button
            key={mode}
            onClick={() => setViewMode(mode)}
            className={cn(
              'flex items-center gap-1.5 px-3 py-1 rounded text-xs font-bold transition-colors',
              viewMode === mode
                ? 'bg-primary text-white'
                : 'text-gray-500 hover:bg-gray-200'
            )}
          >
            <Icon className="h-3.5 w-3.5" />
            {label}
          </button>
        ))}
      </div>

      {/* Panels */}
      <div
        className="flex flex-1 min-h-0 bg-white"
        onMouseMove={handleMouseMove}
        onMouseUp={handleMouseUp}
        onMouseLeave={handleMouseUp}
      >
        {/* Left Panel - Passage */}
        {viewMode !== 'questions' && (
          <div
            className={cn(
              'overflow-y-auto border-r border-gray-200 bg-white',
              viewMode === 'passage' ? 'w-full' : undefined
            )}
            style={viewMode === 'split' ? { width: `${ratio}%` } : undefined}
          >
            {leftPanel}
          </div>
        )}

        {/* Resizer */}
        {viewMode === 'split' && (
          <div
            className={cn(
              'w-0.75 bg-gray-200 cursor-col-resize hover:bg-gray-400 transition-colors flex items-center justify-center',
              isDragging && 'bg-gray-400'
            )}
            onMouseDown={handleMouseDown}
          >
            <div className="w-1.5 h-8 rounded-full bg-gray-300 opacity-0 hover:opacity-100 transition-opacity" />
          </div>
        )}

        {/* Right Panel - Questions */}
        {viewMode !== 'passage' && (
          <div
            className={cn(
              'overflow-y-auto bg-white',
              viewMode === 'questions' ? 'w-full' : undefined
            )}
            style={viewMode === 'split' ? { width: `${100 - ratio}%` } : undefined}
          >
            {rightPanel}
          </div>
        )}
      </div>
    </div>
  )
}
