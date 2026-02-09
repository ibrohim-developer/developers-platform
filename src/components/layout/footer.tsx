import Link from 'next/link'
import { BookOpen } from 'lucide-react'

export function Footer() {
  return (
    <footer className="border-t bg-muted/30">
      <div className="container mx-auto px-4 py-12">
        <div className="grid grid-cols-1 md:grid-cols-4 gap-8">
          {/* Brand */}
          <div className="space-y-4">
            <Link href="/" className="flex items-center gap-2">
              <div className="w-8 h-8 bg-primary rounded-lg flex items-center justify-center">
                <BookOpen className="w-5 h-5 text-primary-foreground" />
              </div>
              <span className="font-bold text-xl">IELTS Mock</span>
            </Link>
            <p className="text-sm text-muted-foreground">
              Practice IELTS tests online with real exam conditions and instant feedback.
            </p>
          </div>

          {/* Tests */}
          <div className="space-y-4">
            <h3 className="font-semibold">Practice Tests</h3>
            <ul className="space-y-2 text-sm text-muted-foreground">
              <li><Link href="/listening" className="hover:text-foreground">Listening</Link></li>
              <li><Link href="/reading" className="hover:text-foreground">Reading</Link></li>
              <li><Link href="/writing" className="hover:text-foreground">Writing</Link></li>
            </ul>
          </div>

          {/* Resources */}
          <div className="space-y-4">
            <h3 className="font-semibold">Resources</h3>
            <ul className="space-y-2 text-sm text-muted-foreground">
              <li><Link href="#" className="hover:text-foreground">Band Score Guide</Link></li>
              <li><Link href="#" className="hover:text-foreground">Tips & Strategies</Link></li>
              <li><Link href="#" className="hover:text-foreground">FAQ</Link></li>
            </ul>
          </div>

          {/* Account */}
          <div className="space-y-4">
            <h3 className="font-semibold">Account</h3>
            <ul className="space-y-2 text-sm text-muted-foreground">
              <li><Link href="/sign-in" className="hover:text-foreground">Sign In</Link></li>
              <li><Link href="/sign-up" className="hover:text-foreground">Create Account</Link></li>
              <li><Link href="/dashboard" className="hover:text-foreground">Dashboard</Link></li>
            </ul>
          </div>
        </div>

        <div className="mt-12 pt-8 border-t text-center text-sm text-muted-foreground">
          <p>&copy; {new Date().getFullYear()} IELTS Mock. All rights reserved.</p>
        </div>
      </div>
    </footer>
  )
}
