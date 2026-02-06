import { Sidebar } from '@/components/layout/sidebar'

export default function DashboardLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <div className="min-h-screen bg-muted/30">
      <Sidebar />
      <main className="pl-64 transition-all duration-300">
        <div className="container mx-auto p-6">
          {children}
        </div>
      </main>
    </div>
  )
}
