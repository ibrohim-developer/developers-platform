import { Sidebar } from '@/components/layout/sidebar'
import { DashboardMain } from '@/components/layout/dashboard-main'
import { createClient } from '@/lib/supabase/server'

export default async function DashboardLayout({
  children,
}: {
  children: React.ReactNode
}) {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  return (
    <div className="flex h-screen overflow-hidden">
      <Sidebar user={user} />
      <DashboardMain>
        {children}
      </DashboardMain>
    </div>
  )
}
