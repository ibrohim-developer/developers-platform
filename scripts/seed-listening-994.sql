-- ============================================
-- Auto-generated seed for: Making mistakes
-- Source API ID: 994
-- Generated: 2026-02-27T10:14:13.163Z
-- ============================================

-- ============================================
-- Making mistakes (Section 2)
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '052707a4-46db-4b74-9dc2-459e8f4e408e',
    'Making mistakes',
    'IELTS Listening - Making mistakes',
    'medium',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.listening_sections (id, test_id, section_number, audio_url, audio_duration_seconds)
VALUES (
    'f4766a67-aac8-4fcf-b533-50a74cbc64e0',
    '052707a4-46db-4b74-9dc2-459e8f4e408e',
    2,
    'https://api.otaboyev-prep.uz/uploads/files/file_20260109_150201_4d173740.mp3',
    362
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '1da08aad-1184-44f4-977f-557acebbd262',
    'listening',
    'f4766a67-aac8-4fcf-b533-50a74cbc64e0',
    11,
    'mcq_single',
    'What is the most important attitude towards making mistakes according to Arthur?',
    NULL,
    'B',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '7012dd7b-de26-4818-9055-4425536e2593',
    'listening',
    'f4766a67-aac8-4fcf-b533-50a74cbc64e0',
    12,
    'mcq_single',
    'What’s true about self-confidence according to Arthur?',
    NULL,
    'A',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd769a586-05cf-49af-ba2a-00932aa7ed02',
    'listening',
    'f4766a67-aac8-4fcf-b533-50a74cbc64e0',
    13,
    'mcq_single',
    'What advice does Arthur give to new business leaders?',
    NULL,
    'C',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '337e0df5-e250-48b1-be5e-1b16f13b8a25',
    'listening',
    'f4766a67-aac8-4fcf-b533-50a74cbc64e0',
    14,
    'mcq_single',
    'How does Arthur deal with difficult problems?',
    NULL,
    'B',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '55bbc909-3df9-478c-a00b-4ff206243c39',
    'listening',
    'f4766a67-aac8-4fcf-b533-50a74cbc64e0',
    15,
    'mcq_single',
    'What’s the common quality of leaders?',
    NULL,
    'C',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'fc26f201-060a-4595-80e9-56ab669041dc',
    'listening',
    'f4766a67-aac8-4fcf-b533-50a74cbc64e0',
    16,
    'mcq_single',
    'How should companies take risks?',
    NULL,
    'A',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'ebb3ebed-6cf2-4a86-a8d4-2fd27215c99f',
    'listening',
    'f4766a67-aac8-4fcf-b533-50a74cbc64e0',
    17,
    'mcq_multiple',
    '----',
    '["Fix realistic prices","Create products better than the competitors’","Be committed","Pay attention to detail","Apply complete strategy"]'::jsonb,
    'C,D',
    NULL,
    1,
    '{"instruction":"<p>Choose <strong>TWO</strong> correct answers.</p>","context":"<p>Which <strong>TWO</strong> factors are important when starting a business?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'e3e1a25a-7bfe-4793-9dfd-b1d445f5b2ce',
    'listening',
    'f4766a67-aac8-4fcf-b533-50a74cbc64e0',
    18,
    'mcq_multiple',
    '----',
    '["Fix realistic prices","Create products better than the competitors’","Be committed","Pay attention to detail","Apply complete strategy"]'::jsonb,
    'C,D',
    NULL,
    1,
    '{"instruction":"<p>Choose <strong>TWO</strong> correct answers.</p>","context":"<p>Which <strong>TWO</strong> factors are important when starting a business?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'fd4b06e4-ac57-4894-851d-731aafff7aad',
    'listening',
    'f4766a67-aac8-4fcf-b533-50a74cbc64e0',
    19,
    'mcq_multiple',
    '----',
    '["Family support","Good business advice with new ideas","Support of the bank loan","Friends’ support","Governmental funding"]'::jsonb,
    'A,C',
    NULL,
    1,
    '{"instruction":"<p>Choose <strong>TWO</strong> correct answers.</p>","context":"<p>Which <strong>TWO</strong> kinds of support are important for Arthur?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0d9b732d-d898-4d21-8944-49016d290ed4',
    'listening',
    'f4766a67-aac8-4fcf-b533-50a74cbc64e0',
    20,
    'mcq_multiple',
    '----',
    '["Family support","Good business advice with new ideas","Support of the bank loan","Friends’ support","Governmental funding"]'::jsonb,
    'A,C',
    NULL,
    1,
    '{"instruction":"<p>Choose <strong>TWO</strong> correct answers.</p>","context":"<p>Which <strong>TWO</strong> kinds of support are important for Arthur?</p>"}'::jsonb
);

