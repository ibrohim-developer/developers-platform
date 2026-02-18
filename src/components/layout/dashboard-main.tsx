'use client'

import { usePathname } from 'next/navigation'
import { cn } from '@/lib/utils'

const testRoutePattern = /^\/dashboard\/((reading|listening|writing|speaking)\/[^/]+|results\/[^/]+)$/

export function DashboardMain({ children }: { children: React.ReactNode }) {
  const pathname = usePathname()
  const isTestPage = testRoutePattern.test(pathname)

  return (
    <main className={cn(
      'flex-1 flex flex-col min-w-0 overflow-y-auto bg-background',
      !isTestPage && 'pl-64'
    )}>
      <div className={cn(!isTestPage && 'p-8')}>
        {children}
      </div>
    </main>
  )
}
