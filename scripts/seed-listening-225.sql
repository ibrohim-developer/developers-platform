-- ============================================
-- Auto-generated seed for: Eco-farm Tour
-- Source API ID: 225
-- Generated: 2026-02-27T10:14:17.883Z
-- ============================================

-- ============================================
-- Eco-farm Tour (Section 1)
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '72949f11-01db-4c7c-8bf5-7c75bc5f8bff',
    'Eco-farm Tour',
    'IELTS Listening - Eco-farm Tour',
    'medium',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.listening_sections (id, test_id, section_number, audio_url, audio_duration_seconds)
VALUES (
    'f8744611-38d0-4d5d-bf57-a7722e7e8ed4',
    '72949f11-01db-4c7c-8bf5-7c75bc5f8bff',
    1,
    'https://api.otaboyev-prep.uz/uploads/files/file_20251126_112902_ca0a6d83.mp3',
    390
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'ccff4562-f216-4af3-a291-4276e1ffe685',
    'listening',
    'f8744611-38d0-4d5d-bf57-a7722e7e8ed4',
    1,
    'gap_fill',
    '----',
    NULL,
    'Pennington',
    NULL,
    1,
    '{"instruction":"<p>Complete the note below. Write <strong>NO MORE THAN TWO WORDS AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3><strong>Eco-farm Tour</strong></h3><p><br></p><p><strong>Dates offered:</strong> 6–20 June</p><p><strong>Name:</strong> Helen ______ </p><p><strong>Email address:</strong> helen123@ ______ .com</p><p><strong>Home address:</strong>  ______ Road, Sheffield</p><p><strong>Source of information: ______ </strong></p><p><strong>Membership number:</strong>  ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '9f969bcc-d54e-480f-b319-00c07d9d3cc9',
    'listening',
    'f8744611-38d0-4d5d-bf57-a7722e7e8ed4',
    2,
    'gap_fill',
    '----',
    NULL,
    'greenfield',
    NULL,
    1,
    '{"instruction":"<p>Complete the note below. Write <strong>NO MORE THAN TWO WORDS AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3><strong>Eco-farm Tour</strong></h3><p><br></p><p><strong>Dates offered:</strong> 6–20 June</p><p><strong>Name:</strong> Helen ______ </p><p><strong>Email address:</strong> helen123@ ______ .com</p><p><strong>Home address:</strong>  ______ Road, Sheffield</p><p><strong>Source of information: ______ </strong></p><p><strong>Membership number:</strong>  ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '42c92dff-8584-4c7a-a233-adaf56203db9',
    'listening',
    'f8744611-38d0-4d5d-bf57-a7722e7e8ed4',
    3,
    'gap_fill',
    '----',
    NULL,
    '66 Lake',
    NULL,
    1,
    '{"instruction":"<p>Complete the note below. Write <strong>NO MORE THAN TWO WORDS AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3><strong>Eco-farm Tour</strong></h3><p><br></p><p><strong>Dates offered:</strong> 6–20 June</p><p><strong>Name:</strong> Helen ______ </p><p><strong>Email address:</strong> helen123@ ______ .com</p><p><strong>Home address:</strong>  ______ Road, Sheffield</p><p><strong>Source of information: ______ </strong></p><p><strong>Membership number:</strong>  ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '44cc5921-94c6-4216-9d72-f3184c84544e',
    'listening',
    'f8744611-38d0-4d5d-bf57-a7722e7e8ed4',
    4,
    'gap_fill',
    '----',
    NULL,
    'radio',
    NULL,
    1,
    '{"instruction":"<p>Complete the note below. Write <strong>NO MORE THAN TWO WORDS AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3><strong>Eco-farm Tour</strong></h3><p><br></p><p><strong>Dates offered:</strong> 6–20 June</p><p><strong>Name:</strong> Helen ______ </p><p><strong>Email address:</strong> helen123@ ______ .com</p><p><strong>Home address:</strong>  ______ Road, Sheffield</p><p><strong>Source of information: ______ </strong></p><p><strong>Membership number:</strong>  ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0859edf9-ada0-44b0-8d21-31b25a2af8c1',
    'listening',
    'f8744611-38d0-4d5d-bf57-a7722e7e8ed4',
    5,
    'gap_fill',
    '----',
    NULL,
    'UK765024EG',
    NULL,
    1,
    '{"instruction":"<p>Complete the note below. Write <strong>NO MORE THAN TWO WORDS AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3><strong>Eco-farm Tour</strong></h3><p><br></p><p><strong>Dates offered:</strong> 6–20 June</p><p><strong>Name:</strong> Helen ______ </p><p><strong>Email address:</strong> helen123@ ______ .com</p><p><strong>Home address:</strong>  ______ Road, Sheffield</p><p><strong>Source of information: ______ </strong></p><p><strong>Membership number:</strong>  ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'ab0039da-bc3e-470d-8b87-37b38c670d36',
    'listening',
    'f8744611-38d0-4d5d-bf57-a7722e7e8ed4',
    6,
    'gap_fill',
    '-----',
    NULL,
    'flat',
    NULL,
    1,
    '{"instruction":"<p>Complete the table below. Write<strong> ONE WORD ONLY </strong>for each answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '498f9483-320d-43f4-bd96-5a16699b5b57',
    'listening',
    'f8744611-38d0-4d5d-bf57-a7722e7e8ed4',
    7,
    'gap_fill',
    '-----',
    NULL,
    'forest',
    NULL,
    1,
    '{"instruction":"<p>Complete the table below. Write<strong> ONE WORD ONLY </strong>for each answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'e613ba6a-929c-469e-a7b7-dc3816958cb4',
    'listening',
    'f8744611-38d0-4d5d-bf57-a7722e7e8ed4',
    8,
    'gap_fill',
    '-----',
    NULL,
    'organic',
    NULL,
    1,
    '{"instruction":"<p>Complete the table below. Write<strong> ONE WORD ONLY </strong>for each answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'c78d9ec8-d13c-461c-8f3c-1e6a2cd2a378',
    'listening',
    'f8744611-38d0-4d5d-bf57-a7722e7e8ed4',
    9,
    'gap_fill',
    '-----',
    NULL,
    'bike',
    NULL,
    1,
    '{"instruction":"<p>Complete the table below. Write<strong> ONE WORD ONLY </strong>for each answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '876be9e2-25e7-4489-bd5b-68442cf49a90',
    'listening',
    'f8744611-38d0-4d5d-bf57-a7722e7e8ed4',
    10,
    'gap_fill',
    '-----',
    NULL,
    'dance',
    NULL,
    1,
    '{"instruction":"<p>Complete the table below. Write<strong> ONE WORD ONLY </strong>for each answer.</p>"}'::jsonb
);

