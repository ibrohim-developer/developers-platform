'use client'

import Link from '@/components/no-prefetch-link'
import { usePathname } from 'next/navigation'
import { cn } from '@/lib/utils'
import {
  BookOpenCheck,
  Headphones,
  PenTool,
  Mic,
  ClipboardList,
  LogOut,
  Sun,
  Moon
} from 'lucide-react'
import { Avatar, AvatarFallback, AvatarImage } from '@/components/ui/avatar'
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu'
import { signOut } from '@/actions/auth'
import { useTheme } from 'next-themes'

interface SidebarProps {
  user?: {
    id: string
    email?: string
    user_metadata?: {
      full_name?: string
      avatar_url?: string
    }
  } | null
}

const menuItems = [
  {
    title: 'Reading',
    href: '/dashboard/reading',
    icon: BookOpenCheck,
  },
  {
    title: 'Listening',
    href: '/dashboard/listening',
    icon: Headphones,
  },
  {
    title: 'Writing',
    href: '/dashboard/writing',
    icon: PenTool,
  },
  {
    title: 'Speaking',
    href: '/dashboard/speaking',
    icon: Mic,
    soon: true,
  },
    {
    title: 'Full Mock Test',
    href: '/dashboard/full-mock-test',
    icon: ClipboardList,
    soon: true,
  }
]

const testRoutePattern = /^\/dashboard\/((reading|listening|writing|speaking|full-mock-test)\/[^/]+|results\/[^/]+)$/

export function Sidebar({ user }: SidebarProps) {
  const pathname = usePathname()
  const { theme, setTheme } = useTheme()

  // Hide sidebar on test pages
  if (testRoutePattern.test(pathname)) {
    return null
  }

  const userInitials = user?.user_metadata?.full_name
    ?.split(' ')
    .map(n => n[0])
    .join('')
    .toUpperCase()
    .slice(0, 2) || user?.email?.[0]?.toUpperCase() || 'U'

  return (
    <aside className="fixed left-0 top-0 z-40 h-screen w-64 bg-card border-r border-border flex flex-col shrink-0">
      {/* Logo */}
      <div className="p-8">
        <Link href="/dashboard" className="inline-block">
          <span className="text-2xl font-black tracking-tighter text-foreground">
            band<span className="text-primary">.</span>up
          </span>
        </Link>
      </div>

      {/* Navigation */}
      <nav className="flex-1 px-4 space-y-1">
        {menuItems.map((item) => {
          const isActive = item.href === '/dashboard'
            ? pathname === '/dashboard'
            : pathname.startsWith(item.href)

          return (
            <div key={item.href}>
              <Link
                href={item.href}
                className={cn(
                  'flex items-center gap-3 px-4 py-3 text-sm font-bold transition-all rounded-lg',
                  isActive
                    ? 'bg-primary text-primary-foreground'
                    : 'text-muted-foreground hover:bg-muted'
                )}
              >
                <item.icon className="h-5 w-5 shrink-0" />
                <span>{item.title}</span>
                {item.soon && (
                  <span className={cn(
                    'ml-auto text-[10px] font-black uppercase tracking-wider px-1.5 py-0.5 rounded',
                    isActive
                      ? 'bg-primary-foreground/20 text-primary-foreground'
                      : 'bg-primary/10 text-primary'
                  )}>
                    Soon
                  </span>
                )}
              </Link>
            </div>
          )
        })}
      </nav>

      {/* Theme Toggle */}
      <div className="px-4 pb-2">
        <button
          onClick={() => setTheme(theme === 'dark' ? 'light' : 'dark')}
          className="flex items-center gap-3 px-4 py-3 text-sm font-bold transition-all rounded-lg w-full text-muted-foreground hover:bg-muted"
        >
          <Sun className="h-5 w-5 shrink-0 rotate-0 scale-100 transition-all dark:-rotate-90 dark:scale-0" />
          <Moon className="absolute h-5 w-5 shrink-0 rotate-90 scale-0 transition-all dark:rotate-0 dark:scale-100" />
          <span>Toggle Theme</span>
        </button>
      </div>

      {/* User Profile */}
      <div className="p-4 border-t border-border">
        {user ? (
          <DropdownMenu>
            <DropdownMenuTrigger asChild>
              <button className="flex items-center gap-3 w-full text-left px-2 py-1 rounded-lg hover:bg-muted transition-colors">
                <Avatar className="h-10 w-10">
                  <AvatarImage src={user?.user_metadata?.avatar_url} alt={user?.user_metadata?.full_name || 'User'} />
                  <AvatarFallback className="bg-muted text-muted-foreground font-bold">
                    {userInitials}
                  </AvatarFallback>
                </Avatar>
                <div className="flex flex-col flex-1 min-w-0">
                  <span className="text-xs font-bold truncate">
                    {user?.user_metadata?.full_name || 'User'}
                  </span>
                </div>
              </button>
            </DropdownMenuTrigger>
            <DropdownMenuContent align="start" side="top" className="w-64 p-4">
              <div className="flex flex-col items-center gap-3">
                <Avatar className="h-16 w-16">
                  <AvatarImage src={user?.user_metadata?.avatar_url} alt={user?.user_metadata?.full_name || 'User'} />
                  <AvatarFallback className="bg-muted text-muted-foreground font-bold text-lg">
                    {userInitials}
                  </AvatarFallback>
                </Avatar>
                <div className="flex flex-col items-center text-center">
                  <span className="text-sm font-bold">
                    {user?.user_metadata?.full_name || 'User'}
                  </span>
                  {user?.email && (
                    <span className="text-xs text-muted-foreground truncate max-w-full">
                      {user.email}
                    </span>
                  )}
                </div>
                <DropdownMenuSeparator className="w-full" />
                <DropdownMenuItem
                  className="cursor-pointer w-full justify-center group"
                  onClick={() => signOut()}
                >
                  <LogOut className="mr-2 h-4 w-4 text-foreground group-hover:text-white dark:group-hover:text-white" />
                  <span>Sign Out</span>
                </DropdownMenuItem>
              </div>
            </DropdownMenuContent>
          </DropdownMenu>
        ) : (
          <Link
            href="/sign-in"
            className="flex items-center justify-center gap-2 w-full px-4 py-3 bg-primary text-primary-foreground rounded-lg font-bold text-sm hover:opacity-90 transition-all"
          >
            <LogOut className="h-4 w-4" />
            Sign In
          </Link>
        )}
      </div>
    </aside>
  )
}
