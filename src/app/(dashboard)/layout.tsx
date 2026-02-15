import { Sidebar } from '@/components/layout/sidebar'
import { DashboardMain } from '@/components/layout/dashboard-main'
import { ThemeProvider } from '@/components/theme-provider'
import { createClient } from '@/lib/supabase/server'

export default async function DashboardLayout({
  children,
}: {
  children: React.ReactNode
}) {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  return (
    <ThemeProvider
      attribute="class"
      defaultTheme="light"
      enableSystem
      disableTransitionOnChange
    >
      <div className="flex h-screen overflow-hidden">
        <Sidebar user={user} />
        <DashboardMain>
          {children}
        </DashboardMain>
      </div>
    </ThemeProvider>
  )
}
