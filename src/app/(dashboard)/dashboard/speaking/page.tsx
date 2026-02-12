import Link from "next/link";
import { Clock, MessageSquare } from "lucide-react";
import { DifficultyDots } from "@/components/test/common/difficulty-dots";
import { TestFilters } from "@/components/test/common/test-filters";

const speakingTests = [
  {
    id: "1",
    title: "Speaking Practice Test 1",
    description: "Complete speaking test with all three parts",
    difficulty: "medium",
    duration: 14,
    parts: 3,
  },
  {
    id: "2",
    title: "Speaking Practice Test 2",
    description: "Introduction, cue card, and discussion",
    difficulty: "easy",
    duration: 12,
    parts: 3,
  },
  {
    id: "3",
    title: "Speaking Practice Test 3",
    description: "Advanced speaking with complex topics",
    difficulty: "hard",
    duration: 14,
    parts: 3,
  },
];

const speakingFilters = [
  {
    placeholder: "All Levels",
    options: [
      { value: "all", label: "All Levels" },
      { value: "easy", label: "Easy" },
      { value: "medium", label: "Medium" },
      { value: "hard", label: "Hard" },
    ],
  },
  {
    placeholder: "All Parts",
    options: [
      { value: "all", label: "All Parts" },
      { value: "1", label: "Part 1" },
      { value: "2", label: "Part 2" },
      { value: "3", label: "Part 3" },
    ],
  },
];

export default function SpeakingTestsPage() {
  return (
    <div className="space-y-8 pb-12">
      <TestFilters filters={speakingFilters} />

      <div className="flex items-end justify-between">
        <div>
          <h2 className="text-3xl font-black mb-1">Speaking Challenge</h2>
          <p className="text-xs text-muted-foreground font-bold uppercase tracking-widest">
            {speakingTests.length} Available Tests
          </p>
        </div>
        <Link
          href="/dashboard/history"
          className="flex items-center gap-2 text-xs font-bold px-4 py-2 border border-border rounded-lg hover:bg-card transition-colors"
        >
          <Clock className="h-3.5 w-3.5" />
          Completed Tests
        </Link>
      </div>

      <div className="space-y-4">
        {speakingTests.map((test, index) => (
          <div
            key={test.id}
            className="bg-card border border-border p-6 rounded-xl flex items-center justify-between"
          >
            <div className="flex-1">
              <div className="flex items-center gap-3 mb-2">
                <h3 className="text-lg font-black">
                  Day {index + 1}: {test.title}
                </h3>
              </div>
              <p className="text-[11px] text-muted-foreground font-bold uppercase mb-4">
                {test.parts} Parts - AI Feedback
              </p>
              <div className="flex items-center gap-8 text-xs font-bold text-muted-foreground">
                <DifficultyDots difficulty={test.difficulty} />
                <span className="flex items-center gap-1.5">
                  <Clock className="h-4 w-4" />
                  {test.duration} mins
                </span>
                <span className="flex items-center gap-1.5">
                  <MessageSquare className="h-4 w-4" />
                  {test.parts} parts
                </span>
              </div>
            </div>
            <Link
              href={`/dashboard/speaking/${test.id}`}
              className="bg-primary text-primary-foreground px-8 py-3 rounded-lg font-black text-xs tracking-widest hover:opacity-90 transition-all uppercase"
            >
              Start Test
            </Link>
          </div>
        ))}
      </div>
    </div>
  );
}
