-- ============================================
-- Update existing seed data with time limits
-- Standard IELTS time allocations:
-- - Listening: ~10 minutes per section (with 30 sec buffer for instructions)
-- - Reading: 20 minutes per passage (60 min total / 3 passages)
-- - Writing Task 1 (report): 20 minutes (1200 seconds)
-- - Writing Task 2 (essay): 40 minutes (2400 seconds)
-- ============================================

-- Update listening_sections with time_limit (10 minutes = 600 seconds per section)
UPDATE public.listening_sections
SET time_limit = 600
WHERE time_limit IS NULL;

-- Update reading_passages with time_limit (20 minutes = 1200 seconds per passage)
UPDATE public.reading_passages
SET time_limit = 1200
WHERE time_limit IS NULL;

-- Update writing_tasks with time_limit based on task_type
-- Task 1 (report): 20 minutes = 1200 seconds
-- Task 2 (essay): 40 minutes = 2400 seconds
UPDATE public.writing_tasks
SET time_limit = CASE
    WHEN task_type = 'report' THEN 1200
    WHEN task_type = 'essay' THEN 2400
    ELSE 1200  -- default to 20 minutes if task_type is null
END
WHERE time_limit IS NULL;
