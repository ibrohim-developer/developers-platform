import { NextResponse } from 'next/server'

const BOT_TOKEN = process.env.TELEGRAM_BOT_TOKEN!

export async function GET(request: Request) {
  const { searchParams } = new URL(request.url)
  const secret = searchParams.get('secret')

  // Simple protection — require a secret to set up the webhook
  if (secret !== process.env.SUPABASE_SERVICE_ROLE_KEY?.slice(0, 16)) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
  }

  const webhookUrl = `${process.env.NEXT_PUBLIC_SITE_URL || 'http://localhost:3000'}/api/telegram/webhook`
  const webhookSecret = process.env.TELEGRAM_WEBHOOK_SECRET

  const body: Record<string, string> = { url: webhookUrl }
  if (webhookSecret) {
    body.secret_token = webhookSecret
  }

  const response = await fetch(
    `https://api.telegram.org/bot${BOT_TOKEN}/setWebhook`,
    {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(body),
    }
  )

  const result = await response.json()
  return NextResponse.json(result)
}
