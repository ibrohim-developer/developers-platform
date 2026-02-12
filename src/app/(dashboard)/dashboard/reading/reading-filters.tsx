"use client";

import { Search } from "lucide-react";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";

export function ReadingTestFilters() {
  return (
    <div className="flex flex-col md:flex-row gap-4 items-center">
      <div className="relative flex-1 w-full">
        <Search className="absolute left-3 top-1/2 -translate-y-1/2 text-muted-foreground h-4 w-4" />
        <input
          className="w-full bg-card border border-neutral-200 dark:border-neutral-700 rounded-lg py-2.5 pl-10 pr-4 text-sm focus:ring-1 focus:ring-primary focus:border-primary outline-none"
          placeholder="Search tests..."
          type="text"
        />
      </div>
      <div className="flex gap-3 w-full md:w-auto">
        <Select defaultValue="all">
          <SelectTrigger className="w-full md:w-40 text-xs font-bold border-neutral-200 dark:border-neutral-700">
            <SelectValue placeholder="All Levels" />
          </SelectTrigger>
          <SelectContent>
            <SelectItem value="all">All Levels</SelectItem>
            <SelectItem value="easy">Easy</SelectItem>
            <SelectItem value="medium">Medium</SelectItem>
            <SelectItem value="hard">Hard</SelectItem>
          </SelectContent>
        </Select>

        <Select defaultValue="all">
          <SelectTrigger className="w-full md:w-40 text-xs font-bold border-neutral-200 dark:border-neutral-700">
            <SelectValue placeholder="All Types" />
          </SelectTrigger>
          <SelectContent>
            <SelectItem value="all">All Types</SelectItem>
            <SelectItem value="academic">Academic</SelectItem>
            <SelectItem value="general">General</SelectItem>
          </SelectContent>
        </Select>

        <Select defaultValue="all">
          <SelectTrigger className="w-full md:w-40 text-xs font-bold border-neutral-200 dark:border-neutral-700">
            <SelectValue placeholder="All Parts" />
          </SelectTrigger>
          <SelectContent>
            <SelectItem value="all">All Parts</SelectItem>
            <SelectItem value="1">Part 1</SelectItem>
            <SelectItem value="2">Part 2</SelectItem>
            <SelectItem value="3">Part 3</SelectItem>
          </SelectContent>
        </Select>
      </div>
    </div>
  );
}
