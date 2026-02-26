"use client"

import { useState } from "react"
import { useRouter } from "next/navigation"
import { createClient } from "@/lib/supabase/client"
import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
  DialogDescription,
  DialogFooter,
} from "@/components/ui/dialog"
import { Button } from "@/components/ui/button"
import Link from "@/components/no-prefetch-link"

interface LoginRequiredLinkProps {
  href: string
  className?: string
  children: React.ReactNode
}

export function LoginRequiredLink({ href, className, children }: LoginRequiredLinkProps) {
  const [open, setOpen] = useState(false)
  const router = useRouter()

  const handleClick = async () => {
    const supabase = createClient()
    const { data: { session } } = await supabase.auth.getSession()

    if (session?.user) {
      router.push(href)
    } else {
      setOpen(true)
    }
  }

  return (
    <>
      <button onClick={handleClick} className={className}>
        {children}
      </button>

      <Dialog open={open} onOpenChange={setOpen}>
        <DialogContent className="sm:max-w-xl p-8">
          <DialogHeader className="space-y-3">
            <DialogTitle className="text-2xl font-black">Login Required</DialogTitle>
            <DialogDescription className="text-base">
              You need to login to access this test. Please sign in or create an account to continue.
            </DialogDescription>
          </DialogHeader>
          <DialogFooter className="mt-4 gap-3 sm:gap-3">
            <Button variant="outline" size="lg" asChild>
              <Link href="/sign-up">Sign Up</Link>
            </Button>
            <Button size="lg" asChild>
              <Link href="/sign-in">Sign In</Link>
            </Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>
    </>
  )
}
