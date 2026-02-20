import { Suspense } from 'react'
import { Sidebar } from '@/components/layout/sidebar'
import { DashboardMain } from '@/components/layout/dashboard-main'
import { ThemeProvider } from '@/components/theme-provider'
import { createClient } from '@/lib/supabase/server'

async function AuthSidebar() {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()
  return <Sidebar user={user} />
}

export default function DashboardLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <ThemeProvider
      attribute="class"
      defaultTheme="light"
      enableSystem
      disableTransitionOnChange
    >
      <div className="flex h-screen overflow-hidden">
        <Suspense fallback={<Sidebar />}>
          <AuthSidebar />
        </Suspense>
        <DashboardMain>
          {children}
        </DashboardMain>
      </div>
    </ThemeProvider>
  )
}
