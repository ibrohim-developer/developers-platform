"use client";

import { useEffect } from "react";
import { useRouter } from "next/navigation";
import { Loader2, Sparkles } from "lucide-react";

export function EvaluatingBanner() {
  const router = useRouter();

  useEffect(() => {
    const interval = setInterval(() => {
      router.refresh();
    }, 5000);

    return () => clearInterval(interval);
  }, [router]);

  return (
    <div className="border-1 border-purple-200 dark:border-purple-800 bg-purple-50/50 dark:bg-purple-950/20 rounded-xl p-8 mb-10">
      <div className="flex items-center gap-4">
        <div className="relative">
          <Sparkles className="h-8 w-8 text-purple-500" />
          <Loader2 className="h-5 w-5 text-purple-500 animate-spin absolute -bottom-1 -right-1" />
        </div>
        <div>
          <h3 className="text-lg font-bold">
            Your writing is being evaluated by AI...
          </h3>
          <p className="text-sm text-muted-foreground mt-1">
            This usually takes 15-30 seconds. Results will appear automatically.
          </p>
        </div>
      </div>
    </div>
  );
}
