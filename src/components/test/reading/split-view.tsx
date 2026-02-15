"use client";

import { useState } from "react";
import { cn } from "@/lib/utils";
import { GripVertical } from "lucide-react";

type ViewMode = "split" | "passage" | "questions";

interface SplitViewProps {
  leftPanel: React.ReactNode;
  rightPanel: React.ReactNode;
  defaultRatio?: number;
}

export function SplitView({
  leftPanel,
  rightPanel,
  defaultRatio = 50,
}: SplitViewProps) {
  const [ratio, setRatio] = useState(defaultRatio);
  const [isDragging, setIsDragging] = useState(false);

  const handleMouseDown = () => {
    setIsDragging(true);
  };

  const handleMouseUp = () => {
    setIsDragging(false);
  };

  const handleMouseMove = (e: React.MouseEvent) => {
    if (!isDragging) return;

    const container = e.currentTarget as HTMLElement;
    const rect = container.getBoundingClientRect();
    const x = e.clientX - rect.left;
    const newRatio = (x / rect.width) * 100;

    // Clamp between 30% and 70%
    setRatio(Math.max(30, Math.min(70, newRatio)));
  };

  return (
    <div className="flex flex-col h-full">
      {/* Panels */}
      <div
        className={cn("flex flex-1 min-h-0 bg-white", isDragging && "select-none")}
        onMouseMove={handleMouseMove}
        onMouseUp={handleMouseUp}
        onMouseLeave={handleMouseUp}
      >
        {/* Left Panel - Passage */}
        <div
          className={cn("overflow-y-auto border-r border-gray-200 bg-white")}
          style={{ width: `${ratio}%` }}
        >
          {leftPanel}
        </div>

        {/* Resizer */}
        <div
          className={cn(
            "flex flex-col w-2 bg-gray-200 cursor-col-resize hover:bg-gray-300 transition-colors flex items-center justify-center",
            isDragging && "bg-gray-300",
          )}
          onMouseDown={handleMouseDown}
        >
          <GripVertical className="h-5 w-3 text-gray-400" />
          <GripVertical className="h-5 w-3 text-gray-400 -mt-2.5" />

        </div>

        {/* Right Panel - Questions */}
        <div
          className={cn("overflow-y-auto bg-white")}
          style={{ width: `${100 - ratio}%` }}
        >
          {rightPanel}
        </div>
      </div>
    </div>
  );
}
