import { NextRequest, NextResponse } from 'next/server'
import { createClient } from '@/lib/supabase/server'

export async function POST(request: NextRequest) {
  const body = await request.json()

  const { name, phone, learning_centre_name, students_size, message } = body

  if (!name || !phone || !learning_centre_name || !students_size) {
    return NextResponse.json(
      { error: 'Please fill in all required fields.' },
      { status: 400 }
    )
  }

  const supabase = await createClient()

  const { error } = await (supabase as any).from('business_inquiries').insert({
    name,
    phone,
    learning_centre_name,
    students_size: String(students_size),
    message: message || null,
  })

  if (error) {
    return NextResponse.json(
      { error: 'Failed to submit inquiry. Please try again.' },
      { status: 500 }
    )
  }

  return NextResponse.json({ message: 'Inquiry submitted successfully' })
}
