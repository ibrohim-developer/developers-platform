-- ============================================
-- Auto-generated seed for: International Club
-- Source API ID: 870
-- Generated: 2026-02-27T10:14:07.934Z
-- ============================================

-- ============================================
-- International Club (Section 1)
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    'fdbda096-3735-49b1-9497-7fa6380dfbea',
    'International Club',
    'IELTS Listening - International Club',
    'easy',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.listening_sections (id, test_id, section_number, audio_url, audio_duration_seconds)
VALUES (
    'b313c6c5-b950-41e2-b706-47f5f7f2e2e4',
    'fdbda096-3735-49b1-9497-7fa6380dfbea',
    1,
    'https://api.otaboyev-prep.uz/uploads/files/file_20251215_124316_c4446345.mp3',
    366
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '7c490fb5-dbc5-4f4b-acad-a730651e1ee5',
    'listening',
    'b313c6c5-b950-41e2-b706-47f5f7f2e2e4',
    1,
    'gap_fill',
    '-----',
    NULL,
    '15',
    NULL,
    1,
    '{"instruction":"<p>Complete the table below. Write <strong>NO MORE THAN TWO WORDS AND/OR A NUMBER</strong> for each answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'ffd3e9b0-6e39-427b-bab5-bc17d93f62bd',
    'listening',
    'b313c6c5-b950-41e2-b706-47f5f7f2e2e4',
    2,
    'gap_fill',
    '-----',
    NULL,
    'ice skating',
    NULL,
    1,
    '{"instruction":"<p>Complete the table below. Write <strong>NO MORE THAN TWO WORDS AND/OR A NUMBER</strong> for each answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '6bde80fd-cbdc-4a5c-a817-93939fc63fbf',
    'listening',
    'b313c6c5-b950-41e2-b706-47f5f7f2e2e4',
    3,
    'gap_fill',
    '-----',
    NULL,
    'Sundays',
    NULL,
    1,
    '{"instruction":"<p>Complete the table below. Write <strong>NO MORE THAN TWO WORDS AND/OR A NUMBER</strong> for each answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'c7d75b40-6454-4bca-a398-a5a3fa111af6',
    'listening',
    'b313c6c5-b950-41e2-b706-47f5f7f2e2e4',
    4,
    'gap_fill',
    '-----',
    NULL,
    '16th October',
    NULL,
    1,
    '{"instruction":"<p>Complete the table below. Write <strong>NO MORE THAN TWO WORDS AND/OR A NUMBER</strong> for each answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '08f60128-2d18-472c-a8b3-7374605442e2',
    'listening',
    'b313c6c5-b950-41e2-b706-47f5f7f2e2e4',
    5,
    'gap_fill',
    '-----',
    NULL,
    '3',
    NULL,
    1,
    '{"instruction":"<p>Complete the table below. Write <strong>NO MORE THAN TWO WORDS AND/OR A NUMBER</strong> for each answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '137da841-3c49-4cc5-9c1c-ae365aa8c61a',
    'listening',
    'b313c6c5-b950-41e2-b706-47f5f7f2e2e4',
    6,
    'gap_fill',
    '-----',
    NULL,
    'free drinks',
    NULL,
    1,
    '{"instruction":"<p>Complete the table below. Write <strong>NO MORE THAN TWO WORDS AND/OR A NUMBER</strong> for each answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd062317a-b9aa-4d8c-8fd3-410f94272b72',
    'listening',
    'b313c6c5-b950-41e2-b706-47f5f7f2e2e4',
    7,
    'gap_fill',
    '-----',
    NULL,
    'local museum',
    NULL,
    1,
    '{"instruction":"<p>Complete the table below. Write <strong>NO MORE THAN TWO WORDS AND/OR A NUMBER</strong> for each answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '017d59e8-e847-4a84-84cc-04240ed59a13',
    'listening',
    'b313c6c5-b950-41e2-b706-47f5f7f2e2e4',
    8,
    'mcq_multiple',
    '----',
    '["Lecture","Film","Saturday excursion","Excursion","Culture evening","Night tour","Yoga classes"]'::jsonb,
    'A,C,E',
    NULL,
    1,
    '{"instruction":"<p>Choose <strong>THREE</strong> correct answers.</p>","context":"<p>Which <strong>THREE</strong> events are held every month by the club?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'b38a26b4-34c4-4e85-90e2-25dd8b0b750d',
    'listening',
    'b313c6c5-b950-41e2-b706-47f5f7f2e2e4',
    9,
    'mcq_multiple',
    '----',
    '["Lecture","Film","Saturday excursion","Excursion","Culture evening","Night tour","Yoga classes"]'::jsonb,
    'A,C,E',
    NULL,
    1,
    '{"instruction":"<p>Choose <strong>THREE</strong> correct answers.</p>","context":"<p>Which <strong>THREE</strong> events are held every month by the club?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd1b3bac7-4df0-4ec3-bdb1-5cc060c7c005',
    'listening',
    'b313c6c5-b950-41e2-b706-47f5f7f2e2e4',
    10,
    'mcq_multiple',
    '----',
    '["Lecture","Film","Saturday excursion","Excursion","Culture evening","Night tour","Yoga classes"]'::jsonb,
    'A,C,E',
    NULL,
    1,
    '{"instruction":"<p>Choose <strong>THREE</strong> correct answers.</p>","context":"<p>Which <strong>THREE</strong> events are held every month by the club?</p>"}'::jsonb
);

