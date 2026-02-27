-- ============================================
-- Auto-generated seed for: Farm Stay Information
-- Source API ID: 868
-- Generated: 2026-02-27T10:14:10.011Z
-- ============================================

-- ============================================
-- Farm Stay Information (Section 1)
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    'a30ef17e-e730-47c9-9389-13d86f3d22d0',
    'Farm Stay Information',
    'IELTS Listening - Farm Stay Information',
    'easy',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.listening_sections (id, test_id, section_number, audio_url, audio_duration_seconds)
VALUES (
    'f9298354-ab28-46e7-947c-3cfcf8338667',
    'a30ef17e-e730-47c9-9389-13d86f3d22d0',
    1,
    'https://api.otaboyev-prep.uz/uploads/files/file_20251215_120254_2272acdd.mp3',
    531
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'acd17b9c-d70b-4a3c-8ed2-237f16f3b63f',
    'listening',
    'f9298354-ab28-46e7-947c-3cfcf8338667',
    1,
    'mcq_single',
    'The centre has enough accommodation for',
    NULL,
    'C',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'a4fef59f-5f0b-46b5-809a-ee497e2a70d1',
    'listening',
    'f9298354-ab28-46e7-947c-3cfcf8338667',
    2,
    'mcq_single',
    'The meeting room is currently',
    NULL,
    'A',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '8d231624-4836-4e00-b686-d7b6e33a6e7c',
    'listening',
    'f9298354-ab28-46e7-947c-3cfcf8338667',
    3,
    'mcq_single',
    'Visitors must tell the centre in advance if they want to',
    NULL,
    'B',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '5057ec65-0410-4bc0-848a-335d55ab5f07',
    'listening',
    'f9298354-ab28-46e7-947c-3cfcf8338667',
    4,
    'mcq_single',
    'All visitors on the farm can',
    NULL,
    'A',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'dc5affe1-2028-4b7a-bbb1-c70e48d119a0',
    'listening',
    'f9298354-ab28-46e7-947c-3cfcf8338667',
    5,
    'mcq_single',
    'On the survival course people have to',
    NULL,
    'B',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0c89e2d6-d657-4ee5-82fc-d3a2a318e1e8',
    'listening',
    'f9298354-ab28-46e7-947c-3cfcf8338667',
    6,
    'mcq_single',
    'From the centre it is easy to walk to',
    NULL,
    'C',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'bcf6ece3-dbdc-4f60-bb18-d5435252721b',
    'listening',
    'f9298354-ab28-46e7-947c-3cfcf8338667',
    7,
    'mcq_single',
    'If the weather is bad visitors can go to a',
    NULL,
    'C',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '8ebdf582-74d6-4b40-8a9e-c5b5e02b4493',
    'listening',
    'f9298354-ab28-46e7-947c-3cfcf8338667',
    8,
    'mcq_single',
    'Groups who wish to stay at the centre must pay',
    NULL,
    'A',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'c93070ba-5f72-41f3-80ce-05ea874d8fda',
    'listening',
    'f9298354-ab28-46e7-947c-3cfcf8338667',
    9,
    'gap_fill',
    '----',
    NULL,
    'Cotehele',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER </strong>for each answer.</p>","context":"<p>• Address: Winsham Farm, ______ Rd''</p><p><br></p><p>• Postcode: ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'fb2af9a5-8a13-41e7-be04-31652b405156',
    'listening',
    'f9298354-ab28-46e7-947c-3cfcf8338667',
    10,
    'gap_fill',
    '----',
    NULL,
    'SH121LQ',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER </strong>for each answer.</p>","context":"<p>• Address: Winsham Farm, ______ Rd''</p><p><br></p><p>• Postcode: ______ </p>"}'::jsonb
);

