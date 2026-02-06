'use client'

import Link from 'next/link'
import { BookOpen, Menu, X } from 'lucide-react'
import { Button } from '@/components/ui/button'
import { useState } from 'react'

interface HeaderProps {
  isLoggedIn?: boolean
}

export function Header({ isLoggedIn = false }: HeaderProps) {
  const [isMenuOpen, setIsMenuOpen] = useState(false)

  return (
    <header className="sticky top-0 z-50 w-full border-b bg-background/95 backdrop-blur supports-[backdrop-filter]:bg-background/60">
      <div className="container mx-auto px-4">
        <div className="flex h-16 items-center justify-between">
          {/* Logo */}
          <Link href="/" className="flex items-center gap-2">
            <div className="w-8 h-8 bg-primary rounded-lg flex items-center justify-center">
              <BookOpen className="w-5 h-5 text-primary-foreground" />
            </div>
            <span className="font-bold text-xl">IELTS Mock</span>
          </Link>

          {/* Desktop Navigation */}
          <nav className="hidden md:flex items-center gap-6">
            <Link href="/reading" className="text-sm font-medium text-muted-foreground hover:text-foreground transition-colors">
              Reading
            </Link>
            <Link href="/writing" className="text-sm font-medium text-muted-foreground hover:text-foreground transition-colors">
              Writing
            </Link>
            <Link href="/listening" className="text-sm font-medium text-muted-foreground hover:text-foreground transition-colors">
              Listening
            </Link>
          </nav>

          {/* Auth Buttons */}
          <div className="hidden md:flex items-center gap-3">
            {isLoggedIn ? (
              <Link href="/dashboard">
                <Button>Dashboard</Button>
              </Link>
            ) : (
              <>
                <Link href="/sign-in">
                  <Button variant="ghost">Sign In</Button>
                </Link>
                <Link href="/sign-up">
                  <Button>Get Started</Button>
                </Link>
              </>
            )}
          </div>

          {/* Mobile Menu Button */}
          <button
            className="md:hidden p-2"
            onClick={() => setIsMenuOpen(!isMenuOpen)}
          >
            {isMenuOpen ? <X className="w-6 h-6" /> : <Menu className="w-6 h-6" />}
          </button>
        </div>

        {/* Mobile Menu */}
        {isMenuOpen && (
          <div className="md:hidden py-4 border-t">
            <nav className="flex flex-col gap-4">
              <Link href="/reading" className="text-sm font-medium text-muted-foreground hover:text-foreground">
                Reading
              </Link>
              <Link href="/writing" className="text-sm font-medium text-muted-foreground hover:text-foreground">
                Writing
              </Link>
              <Link href="/listening" className="text-sm font-medium text-muted-foreground hover:text-foreground">
                Listening
              </Link>
              <div className="flex flex-col gap-2 pt-4 border-t">
                {isLoggedIn ? (
                  <Link href="/dashboard">
                    <Button className="w-full">Dashboard</Button>
                  </Link>
                ) : (
                  <>
                    <Link href="/sign-in">
                      <Button variant="outline" className="w-full">Sign In</Button>
                    </Link>
                    <Link href="/sign-up">
                      <Button className="w-full">Get Started</Button>
                    </Link>
                  </>
                )}
              </div>
            </nav>
          </div>
        )}
      </div>
    </header>
  )
}
