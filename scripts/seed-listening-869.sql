-- ============================================
-- Auto-generated seed for: Booking a residential workshop
-- Source API ID: 869
-- Generated: 2026-02-27T10:14:08.951Z
-- ============================================

-- ============================================
-- Booking a residential workshop (Section 1)
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    'af938ca7-00d7-492e-9582-af7dfcefa57b',
    'Booking a residential workshop',
    'IELTS Listening - Booking a residential workshop',
    'easy',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.listening_sections (id, test_id, section_number, audio_url, audio_duration_seconds)
VALUES (
    '64c20d4c-caee-49b2-a6bd-63a55c4f43cb',
    'af938ca7-00d7-492e-9582-af7dfcefa57b',
    1,
    'https://api.otaboyev-prep.uz/uploads/files/file_20251215_122041_dddc29a3.mp3',
    367
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd9ff0699-050c-4e5a-80e2-c93d25da5709',
    'listening',
    '64c20d4c-caee-49b2-a6bd-63a55c4f43cb',
    1,
    'gap_fill',
    '-----',
    NULL,
    'Creswick',
    NULL,
    1,
    '{"instruction":"<p>Complete the form below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p><p><br></p><h3>                                              Booking a residential workshop</h3>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'c8d896ea-6aa2-4b83-bf7b-f0fb7b607516',
    'listening',
    '64c20d4c-caee-49b2-a6bd-63a55c4f43cb',
    2,
    'gap_fill',
    '-----',
    NULL,
    'theatre',
    NULL,
    1,
    '{"instruction":"<p>Complete the form below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p><p><br></p><h3>                                              Booking a residential workshop</h3>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'b77acf0f-c407-42f4-bc89-087928b423b4',
    'listening',
    '64c20d4c-caee-49b2-a6bd-63a55c4f43cb',
    3,
    'gap_fill',
    '-----',
    NULL,
    'Place',
    NULL,
    1,
    '{"instruction":"<p>Complete the form below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p><p><br></p><h3>                                              Booking a residential workshop</h3>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '7ff6beb6-4bf7-4b7d-8681-e04d8db4afe6',
    'listening',
    '64c20d4c-caee-49b2-a6bd-63a55c4f43cb',
    4,
    'gap_fill',
    '-----',
    NULL,
    'waitress',
    NULL,
    1,
    '{"instruction":"<p>Complete the form below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p><p><br></p><h3>                                              Booking a residential workshop</h3>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '695c9507-eadb-4ff0-af70-293051cbb9d0',
    'listening',
    '64c20d4c-caee-49b2-a6bd-63a55c4f43cb',
    5,
    'gap_fill',
    '-----',
    NULL,
    'June 13th',
    NULL,
    1,
    '{"instruction":"<p>Complete the form below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p><p><br></p><h3>                                              Booking a residential workshop</h3>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '2769b575-ae98-4a54-b273-49d7df28c0c3',
    'listening',
    '64c20d4c-caee-49b2-a6bd-63a55c4f43cb',
    6,
    'gap_fill',
    '-----',
    NULL,
    '5:30',
    NULL,
    1,
    '{"instruction":"<p>Complete the form below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p><p><br></p><h3>                                              Booking a residential workshop</h3>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'fba9f284-b5fd-472f-a1f2-7855ce82c9ae',
    'listening',
    '64c20d4c-caee-49b2-a6bd-63a55c4f43cb',
    7,
    'gap_fill',
    '-----',
    NULL,
    'milk',
    NULL,
    1,
    '{"instruction":"<p>Complete the form below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p><p><br></p><h3>                                              Booking a residential workshop</h3>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '8d7152c1-fb36-47ce-a775-1e1efa5523e3',
    'listening',
    '64c20d4c-caee-49b2-a6bd-63a55c4f43cb',
    8,
    'gap_fill',
    '-----',
    NULL,
    'comic',
    NULL,
    1,
    '{"instruction":"<p>Complete the form below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p><p><br></p><h3>                                              Booking a residential workshop</h3>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'f11f31ac-8f07-4e70-9319-b51effeddda3',
    'listening',
    '64c20d4c-caee-49b2-a6bd-63a55c4f43cb',
    9,
    'gap_fill',
    '-----',
    NULL,
    'internet',
    NULL,
    1,
    '{"instruction":"<p>Complete the form below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p><p><br></p><h3>                                              Booking a residential workshop</h3>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '260686ab-f065-4999-bfb8-3b6708f5912f',
    'listening',
    '64c20d4c-caee-49b2-a6bd-63a55c4f43cb',
    10,
    'gap_fill',
    '-----',
    NULL,
    'leaflet',
    NULL,
    1,
    '{"instruction":"<p>Complete the form below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p><p><br></p><h3>                                              Booking a residential workshop</h3>"}'::jsonb
);

