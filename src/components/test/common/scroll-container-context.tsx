"use client";

import { createContext, useContext, type RefObject } from "react";

export const ScrollContainerContext =
  createContext<RefObject<HTMLElement | null> | null>(null);

export function useScrollContainer() {
  const ref = useContext(ScrollContainerContext);
  return ref?.current ?? null;
}
