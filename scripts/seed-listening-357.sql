-- ============================================
-- Auto-generated seed for: Volunteering 
-- Source API ID: 357
-- Generated: 2026-02-27T10:14:14.152Z
-- ============================================

-- ============================================
-- Volunteering  (Section 2)
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    'd45088b7-4df3-4631-a60f-8a95a5304956',
    'Volunteering ',
    'IELTS Listening - Volunteering ',
    'medium',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.listening_sections (id, test_id, section_number, audio_url, audio_duration_seconds)
VALUES (
    '827538ba-6481-4aa1-bb14-dae78b6170c7',
    'd45088b7-4df3-4631-a60f-8a95a5304956',
    2,
    'https://api.otaboyev-prep.uz/uploads/files/file_20251130_182658_733b5e1f.mp3',
    60
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'acaee144-5e6e-4551-927e-78f53ad45d0f',
    'listening',
    '827538ba-6481-4aa1-bb14-dae78b6170c7',
    11,
    'mcq_multiple',
    '----',
    '["feeding them","noting their food preferences","making space to put their meal","encouraging them to eat","putting food on plates"]'::jsonb,
    'C,D',
    NULL,
    1,
    '{"instruction":"<p>Choose <strong>TWO</strong> correct answers.</p>","context":"<p>In which <strong>TWO</strong> ways are ward volunteers expected to help patients at lunchtimes?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '9bc9e797-8b03-463e-8571-575f0d3d9baa',
    'listening',
    '827538ba-6481-4aa1-bb14-dae78b6170c7',
    12,
    'mcq_multiple',
    '----',
    '["feeding them","noting their food preferences","making space to put their meal","encouraging them to eat","putting food on plates"]'::jsonb,
    'C,D',
    NULL,
    1,
    '{"instruction":"<p>Choose <strong>TWO</strong> correct answers.</p>","context":"<p>In which <strong>TWO</strong> ways are ward volunteers expected to help patients at lunchtimes?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd3ed74f6-f6e0-4505-82f5-435a2f242607',
    'listening',
    '827538ba-6481-4aa1-bb14-dae78b6170c7',
    13,
    'mcq_multiple',
    '----',
    '["ability to cope with upsetting situations","understanding of the effects of different illnesses","ability to show initiative","willingness to follow rules","ability to make patients feel cheerful"]'::jsonb,
    'A,D',
    NULL,
    1,
    '{"instruction":"<p>Choose <strong>TWO</strong> correct answers. </p>","context":"<p>Which <strong>TWO</strong> qualities are required in ward volunteers?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '70ddd162-ff5b-4971-8a12-e5116ae5a88e',
    'listening',
    '827538ba-6481-4aa1-bb14-dae78b6170c7',
    14,
    'mcq_multiple',
    '----',
    '["ability to cope with upsetting situations","understanding of the effects of different illnesses","ability to show initiative","willingness to follow rules","ability to make patients feel cheerful"]'::jsonb,
    'A,D',
    NULL,
    1,
    '{"instruction":"<p>Choose <strong>TWO</strong> correct answers. </p>","context":"<p>Which <strong>TWO</strong> qualities are required in ward volunteers?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '291e3426-dd1a-4624-b0ca-37646ac4ae6f',
    'listening',
    '827538ba-6481-4aa1-bb14-dae78b6170c7',
    15,
    'matching_info',
    '----',
    '["being welcomed by patients","feeling part of a team","gaining self-confidence","having a regular routine","having expert support","hearing about patients'' lives","seeing patients get better","understanding patients'' needs"]'::jsonb,
    'C',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer from the box for each question.</p>","context":"<p><strong>Which aspect of volunteering does each of the following volunteers comment on?</strong></p><ul><li>Chris   ______ </li><li>Shaheen   ______ </li><li>Loc    ______ </li><li>Stephen  ______ </li><li>Magda   ______ </li><li>Richard   ______ </li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '770ffc2f-0e2d-4cf0-af3d-3466f4c7c961',
    'listening',
    '827538ba-6481-4aa1-bb14-dae78b6170c7',
    16,
    'matching_info',
    '----',
    '["being welcomed by patients","feeling part of a team","gaining self-confidence","having a regular routine","having expert support","hearing about patients'' lives","seeing patients get better","understanding patients'' needs"]'::jsonb,
    'F',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer from the box for each question.</p>","context":"<p><strong>Which aspect of volunteering does each of the following volunteers comment on?</strong></p><ul><li>Chris   ______ </li><li>Shaheen   ______ </li><li>Loc    ______ </li><li>Stephen  ______ </li><li>Magda   ______ </li><li>Richard   ______ </li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'dd186251-eca9-4925-9659-fa203027b75c',
    'listening',
    '827538ba-6481-4aa1-bb14-dae78b6170c7',
    17,
    'matching_info',
    '----',
    '["being welcomed by patients","feeling part of a team","gaining self-confidence","having a regular routine","having expert support","hearing about patients'' lives","seeing patients get better","understanding patients'' needs"]'::jsonb,
    'B',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer from the box for each question.</p>","context":"<p><strong>Which aspect of volunteering does each of the following volunteers comment on?</strong></p><ul><li>Chris   ______ </li><li>Shaheen   ______ </li><li>Loc    ______ </li><li>Stephen  ______ </li><li>Magda   ______ </li><li>Richard   ______ </li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'e53569f4-828c-4cad-b9b2-97e7ebc02381',
    'listening',
    '827538ba-6481-4aa1-bb14-dae78b6170c7',
    18,
    'matching_info',
    '----',
    '["being welcomed by patients","feeling part of a team","gaining self-confidence","having a regular routine","having expert support","hearing about patients'' lives","seeing patients get better","understanding patients'' needs"]'::jsonb,
    'H',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer from the box for each question.</p>","context":"<p><strong>Which aspect of volunteering does each of the following volunteers comment on?</strong></p><ul><li>Chris   ______ </li><li>Shaheen   ______ </li><li>Loc    ______ </li><li>Stephen  ______ </li><li>Magda   ______ </li><li>Richard   ______ </li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '642b90ac-19d9-4c25-97e3-e652467005df',
    'listening',
    '827538ba-6481-4aa1-bb14-dae78b6170c7',
    19,
    'matching_info',
    '----',
    '["being welcomed by patients","feeling part of a team","gaining self-confidence","having a regular routine","having expert support","hearing about patients'' lives","seeing patients get better","understanding patients'' needs"]'::jsonb,
    'D',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer from the box for each question.</p>","context":"<p><strong>Which aspect of volunteering does each of the following volunteers comment on?</strong></p><ul><li>Chris   ______ </li><li>Shaheen   ______ </li><li>Loc    ______ </li><li>Stephen  ______ </li><li>Magda   ______ </li><li>Richard   ______ </li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0fe672fe-e32f-4893-8b8c-9c4b88c4b3e8',
    'listening',
    '827538ba-6481-4aa1-bb14-dae78b6170c7',
    20,
    'matching_info',
    '----',
    '["being welcomed by patients","feeling part of a team","gaining self-confidence","having a regular routine","having expert support","hearing about patients'' lives","seeing patients get better","understanding patients'' needs"]'::jsonb,
    'A',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer from the box for each question.</p>","context":"<p><strong>Which aspect of volunteering does each of the following volunteers comment on?</strong></p><ul><li>Chris   ______ </li><li>Shaheen   ______ </li><li>Loc    ______ </li><li>Stephen  ______ </li><li>Magda   ______ </li><li>Richard   ______ </li></ul>"}'::jsonb
);

