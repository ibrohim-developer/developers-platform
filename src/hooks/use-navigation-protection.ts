"use client";

import { useEffect } from "react";

interface UseNavigationProtectionOptions {
  enabled: boolean;
  onShowWarning: () => void;
}

export function useNavigationProtection({
  enabled,
  onShowWarning,
}: UseNavigationProtectionOptions) {
  useEffect(() => {
    if (!enabled) return;

    const handleBeforeUnload = (e: BeforeUnloadEvent) => {
      e.preventDefault();
    };

    const handleKeyDown = (e: KeyboardEvent) => {
      if (e.key === "F5" || ((e.ctrlKey || e.metaKey) && e.key === "r")) {
        e.preventDefault();
        onShowWarning();
      }
    };

    window.history.pushState({ testInProgress: true }, "");

    const handlePopState = () => {
      window.history.pushState({ testInProgress: true }, "");
      onShowWarning();
    };

    window.addEventListener("beforeunload", handleBeforeUnload);
    window.addEventListener("keydown", handleKeyDown);
    window.addEventListener("popstate", handlePopState);
    return () => {
      window.removeEventListener("beforeunload", handleBeforeUnload);
      window.removeEventListener("keydown", handleKeyDown);
      window.removeEventListener("popstate", handlePopState);
    };
  }, [enabled, onShowWarning]);
}
