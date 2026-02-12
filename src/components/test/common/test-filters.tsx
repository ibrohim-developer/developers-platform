"use client";

import { Search } from "lucide-react";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";

interface FilterOption {
  value: string;
  label: string;
}

interface FilterConfig {
  placeholder: string;
  options: FilterOption[];
}

interface TestFiltersProps {
  searchPlaceholder?: string;
  filters: FilterConfig[];
}

export function TestFilters({
  searchPlaceholder = "Search tests...",
  filters,
}: TestFiltersProps) {
  return (
    <div className="flex flex-col md:flex-row gap-4 items-center">
      <div className="relative flex-1 w-full">
        <Search className="absolute left-3 top-1/2 -translate-y-1/2 text-muted-foreground h-4 w-4" />
        <input
          className="w-full bg-card border border-neutral-200 dark:border-neutral-700 rounded-lg py-2.5 pl-10 pr-4 text-sm focus:ring-1 focus:ring-primary focus:border-primary outline-none"
          placeholder={searchPlaceholder}
          type="text"
        />
      </div>
      <div className="flex gap-3 w-full md:w-auto">
        {filters.map((filter, i) => (
          <Select key={i} defaultValue="all">
            <SelectTrigger className="w-full md:w-40 text-xs font-bold border-neutral-200 dark:border-neutral-700">
              <SelectValue placeholder={filter.placeholder} />
            </SelectTrigger>
            <SelectContent>
              {filter.options.map((option) => (
                <SelectItem key={option.value} value={option.value}>
                  {option.label}
                </SelectItem>
              ))}
            </SelectContent>
          </Select>
        ))}
      </div>
    </div>
  );
}
