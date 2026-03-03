import { NextResponse } from 'next/server'
import { createServiceClient } from '@/lib/supabase/service'
import { findOrCreateTelegramUser } from '@/app/api/auth/telegram/verify-code/route'
import crypto from 'crypto'

const BOT_TOKEN = process.env.TELEGRAM_BOT_TOKEN!

function validateInitData(initDataRaw: string): { valid: boolean; user?: { id: number; first_name?: string; last_name?: string; username?: string; photo_url?: string } } {
  const params = new URLSearchParams(initDataRaw)
  const hash = params.get('hash')
  if (!hash) return { valid: false }

  params.delete('hash')
  const entries = Array.from(params.entries())
  entries.sort(([a], [b]) => a.localeCompare(b))
  const dataCheckString = entries.map(([k, v]) => `${k}=${v}`).join('\n')

  const secretKey = crypto
    .createHmac('sha256', 'WebAppData')
    .update(BOT_TOKEN)
    .digest()

  const computedHash = crypto
    .createHmac('sha256', secretKey)
    .update(dataCheckString)
    .digest('hex')

  if (computedHash !== hash) return { valid: false }

  const authDate = parseInt(params.get('auth_date') || '0', 10)
  if (Math.floor(Date.now() / 1000) - authDate > 3600) return { valid: false }

  const userStr = params.get('user')
  if (!userStr) return { valid: false }

  try {
    return { valid: true, user: JSON.parse(userStr) }
  } catch {
    return { valid: false }
  }
}

export async function POST(request: Request) {
  const { initData } = await request.json()
  if (!initData || typeof initData !== 'string') {
    console.log('[TG Mini App] Missing initData')
    return NextResponse.json({ error: 'Missing initData' }, { status: 400 })
  }

  const { valid, user } = validateInitData(initData)
  if (!valid || !user) {
    console.log('[TG Mini App] Invalid initData signature or expired')
    return NextResponse.json({ error: 'Invalid initData' }, { status: 401 })
  }

  console.log(`[TG Mini App] Authenticated user: ${user.id} (@${user.username})`)

  const supabase = createServiceClient()
  const { token_hash, error } = await findOrCreateTelegramUser(supabase, {
    telegram_id: user.id,
    first_name: user.first_name || null,
    last_name: user.last_name || null,
    username: user.username || null,
    phone: null,
    photo_url: user.photo_url || null,
  })

  if (error) {
    console.error(`[TG Mini App] findOrCreateTelegramUser failed:`, error)
    return NextResponse.json({ error }, { status: 500 })
  }

  console.log(`[TG Mini App] Token generated for user ${user.id}`)
  return NextResponse.json({ token_hash })
}
