'use client'

interface PassageDisplayProps {
  title: string
  content: string
}

export function PassageDisplay({ title, content }: PassageDisplayProps) {
  // Split content - first line after title may be subtitle/author
  const paragraphs = content.split('\n\n').filter(p => p.trim())

  // Check if first paragraph looks like a subtitle (short, no period at end)
  const hasSubtitle = paragraphs.length > 1 && paragraphs[0].length < 150 && !paragraphs[0].endsWith('.')
  const subtitle = hasSubtitle ? paragraphs[0] : null
  const bodyParagraphs = hasSubtitle ? paragraphs.slice(1) : paragraphs

  return (
    <article className="p-8 space-y-4 bg-white text-gray-900">
      <h2 className="text-xl font-bold text-gray-900">{title}</h2>
      {subtitle && (
        <p className="text-sm italic text-gray-600">{subtitle}</p>
      )}
      <div className="space-y-4">
        {bodyParagraphs.map((paragraph, index) => (
          <p key={index} className="text-sm leading-relaxed text-gray-800">
            {paragraph}
          </p>
        ))}
      </div>
    </article>
  )
}
