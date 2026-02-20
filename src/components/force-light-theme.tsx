'use client'

import { useEffect } from 'react'

export function ForceLightTheme() {
  useEffect(() => {
    const html = document.documentElement
    const wasDark = html.classList.contains('dark')
    html.classList.remove('dark')
    html.style.colorScheme = 'light'

    return () => {
      // Restore dark class when navigating back to dashboard
      // next-themes will handle re-applying the correct theme
      if (wasDark) {
        html.classList.add('dark')
        html.style.colorScheme = 'dark'
      }
    }
  }, [])

  return null
}
