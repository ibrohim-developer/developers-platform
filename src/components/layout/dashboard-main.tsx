'use client'

import { useCallback, useState } from 'react'
import { usePathname } from 'next/navigation'
import { cn } from '@/lib/utils'
import { ScrollContainerContext } from '@/components/test/common/scroll-container-context'

const testRoutePattern = /^\/dashboard\/((reading|listening|writing|speaking)\/[^/]+|results\/[^/]+)$/

export function DashboardMain({ children }: { children: React.ReactNode }) {
  const pathname = usePathname()
  const isTestPage = testRoutePattern.test(pathname)
  const [scrollElement, setScrollElement] = useState<HTMLElement | null>(null)

  const refCallback = useCallback((node: HTMLElement | null) => {
    setScrollElement(node)
  }, [])

  return (
    <ScrollContainerContext.Provider value={scrollElement}>
      <main
        ref={refCallback}
        className={cn(
          'flex-1 flex flex-col min-w-0 overflow-y-auto bg-background',
          !isTestPage && 'md:pl-64'
        )}
      >
        <div className={cn(!isTestPage && 'p-4 pb-24 md:p-8 md:pb-8')}>
          {children}
        </div>
      </main>
    </ScrollContainerContext.Provider>
  )
}
