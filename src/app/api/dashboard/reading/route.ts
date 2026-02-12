import { NextResponse } from 'next/server'
import { createClient } from '@/lib/supabase/server'


export async function GET() {
  const supabase = await createClient()

  // Optimized: Fetch all data in one query
  const { data: passages } = await supabase
    .from('reading_passages')
    .select(`
      id,
      test_id,
      tests!inner (
        id,
        title,
        description,
        difficulty_level,
        is_published
      )
    `)
    .eq('tests.is_published', true)

  // Get all passage IDs for question counting
  const passageIds = (passages ?? []).map((p: any) => p.id)

  if (passageIds.length === 0) {
    return NextResponse.json([])
  }

  // Count questions per passage in one query
  const { data: questionCounts } = await supabase
    .from('questions')
    .select('section_id')
    .eq('module_type', 'reading')
    .in('section_id', passageIds)

  // Build question count map
  const questionCountMap: Record<string, number> = {}
  ;(questionCounts ?? []).forEach((q: any) => {
    questionCountMap[q.section_id] = (questionCountMap[q.section_id] || 0) + 1
  })

  // Group by test and calculate totals
  const testMap = new Map<string, any>()
  ;(passages ?? []).forEach((passage: any) => {
    const test = passage.tests
    if (!testMap.has(test.id)) {
      testMap.set(test.id, {
        id: test.id,
        title: test.title,
        description: test.description ?? '',
        difficulty: test.difficulty_level ?? 'medium',
        duration: 60,
        questions: 0,
        passages: 0,
      })
    }
    const testData = testMap.get(test.id)
    testData.passages += 1
    testData.questions += questionCountMap[passage.id] || 0
  })

  return NextResponse.json(Array.from(testMap.values()))
}
