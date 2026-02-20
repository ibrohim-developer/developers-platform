'use client'

import { useState } from 'react'
import { useRouter } from 'next/navigation'
import { createClient } from '@/lib/supabase/client'
import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input'
import { Loader2, MessageCircle, ChevronDown, ChevronUp } from 'lucide-react'

interface TelegramCodeInputProps {
  botName: string
}

export function TelegramCodeInput({ botName }: TelegramCodeInputProps) {
  const [isExpanded, setIsExpanded] = useState(false)
  const [code, setCode] = useState('')
  const [isLoading, setIsLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)
  const router = useRouter()

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault()
    if (!code.trim() || code.trim().length !== 6) {
      setError('Please enter a 6-character code')
      return
    }

    setIsLoading(true)
    setError(null)

    try {
      const response = await fetch('/api/auth/telegram/verify-code', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ code: code.trim().toUpperCase() }),
      })

      const data = await response.json()

      if (!response.ok || !data.token_hash) {
        setError(data.error || 'Invalid or expired code')
        setIsLoading(false)
        return
      }

      const supabase = createClient()
      const { error: otpError } = await supabase.auth.verifyOtp({
        token_hash: data.token_hash,
        type: 'magiclink',
      })

      if (otpError) {
        setError(otpError.message)
        setIsLoading(false)
        return
      }

      router.push('/dashboard')
    } catch {
      setError('Something went wrong. Please try again.')
      setIsLoading(false)
    }
  }

  return (
    <div>
      <button
        type="button"
        onClick={() => setIsExpanded(!isExpanded)}
        className="w-full flex items-center justify-center gap-2 text-sm text-muted-foreground hover:text-foreground transition-colors py-2"
      >
        <MessageCircle className="h-4 w-4" />
        Have a Telegram code?
        {isExpanded ? <ChevronUp className="h-3 w-3" /> : <ChevronDown className="h-3 w-3" />}
      </button>

      {isExpanded && (
        <div className="space-y-3 mt-2">
          <p className="text-xs text-muted-foreground text-center">
            Open{' '}
            <a
              href={`https://t.me/${botName}`}
              target="_blank"
              rel="noopener noreferrer"
              className="text-primary hover:underline font-medium"
            >
              @{botName}
            </a>
            {' '}in Telegram, share your contact, and enter the code below.
          </p>

          {error && (
            <div className="p-3 rounded-lg bg-destructive/10 text-destructive text-sm">
              {error}
            </div>
          )}

          <form onSubmit={handleSubmit} className="flex gap-2">
            <Input
              value={code}
              onChange={(e) => setCode(e.target.value.toUpperCase())}
              placeholder="Enter 6-digit code"
              maxLength={6}
              className="text-center font-mono tracking-widest uppercase"
              disabled={isLoading}
            />
            <Button type="submit" disabled={isLoading || code.trim().length !== 6}>
              {isLoading ? (
                <Loader2 className="h-4 w-4 animate-spin" />
              ) : (
                'Verify'
              )}
            </Button>
          </form>
        </div>
      )}
    </div>
  )
}
