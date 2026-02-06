'use client'

interface PassageDisplayProps {
  title: string
  content: string
}

export function PassageDisplay({ title, content }: PassageDisplayProps) {
  // Split content into paragraphs
  const paragraphs = content.split('\n\n').filter(p => p.trim())

  return (
    <article className="p-6 space-y-6">
      <h2 className="text-2xl font-bold">{title}</h2>
      <div className="prose prose-lg dark:prose-invert max-w-none">
        {paragraphs.map((paragraph, index) => (
          <p key={index} className="relative pl-8 leading-relaxed">
            <span className="absolute left-0 top-0 text-xs text-muted-foreground font-medium">
              {index + 1}
            </span>
            {paragraph}
          </p>
        ))}
      </div>
    </article>
  )
}
