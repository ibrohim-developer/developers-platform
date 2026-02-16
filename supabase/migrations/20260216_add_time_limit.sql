-- ============================================
-- Add time_limit column to listening, reading, and writing tables
-- time_limit is stored in seconds
-- ============================================

-- Add time_limit to listening_sections
ALTER TABLE public.listening_sections
ADD COLUMN time_limit INTEGER;

COMMENT ON COLUMN public.listening_sections.time_limit IS 'Time limit for this section in seconds';

-- Add time_limit to reading_passages
ALTER TABLE public.reading_passages
ADD COLUMN time_limit INTEGER;

COMMENT ON COLUMN public.reading_passages.time_limit IS 'Time limit for this passage in seconds';

-- Add time_limit to writing_tasks
ALTER TABLE public.writing_tasks
ADD COLUMN time_limit INTEGER;

COMMENT ON COLUMN public.writing_tasks.time_limit IS 'Time limit for this task in seconds';
