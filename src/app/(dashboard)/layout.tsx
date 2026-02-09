import { Sidebar } from '@/components/layout/sidebar'
import { createClient } from '@/lib/supabase/server'

export default async function DashboardLayout({
  children,
}: {
  children: React.ReactNode
}) {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  return (
    <div className="min-h-screen bg-background">
      <Sidebar user={user} />
      <main className="pl-64 transition-all duration-300">
        <div className="container mx-auto p-6">
          {children}
        </div>
      </main>
    </div>
  )
}
