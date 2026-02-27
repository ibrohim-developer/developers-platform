-- ============================================
-- Auto-generated seed for: Moving Company Service Report
-- Source API ID: 872
-- Generated: 2026-02-27T10:14:06.054Z
-- ============================================

-- ============================================
-- Moving Company Service Report (Section 1)
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    'ad74e506-dfad-4c83-8f1a-b51ba82ba9e9',
    'Moving Company Service Report',
    'IELTS Listening - Moving Company Service Report',
    'easy',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.listening_sections (id, test_id, section_number, audio_url, audio_duration_seconds)
VALUES (
    'aaac85ba-959d-416d-9271-b845735d6d14',
    'ad74e506-dfad-4c83-8f1a-b51ba82ba9e9',
    1,
    'https://api.otaboyev-prep.uz/uploads/files/file_20251215_132912_269c8742.mp3',
    405
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'fc57d6d6-9c4b-4138-94e8-6eb0c0fa0c3f',
    'listening',
    'aaac85ba-959d-416d-9271-b845735d6d14',
    1,
    'gap_fill',
    '-----',
    NULL,
    '94635550',
    NULL,
    1,
    '{"instruction":"<p>Complete the form below. Write<strong> NO MORE THAN TWO WORDS AND/OR A NUMBER</strong> for each answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'c7f0b54b-774e-4de6-94dc-89da84af5f0c',
    'listening',
    'aaac85ba-959d-416d-9271-b845735d6d14',
    2,
    'gap_fill',
    '-----',
    NULL,
    'Clark House',
    NULL,
    1,
    '{"instruction":"<p>Complete the form below. Write<strong> NO MORE THAN TWO WORDS AND/OR A NUMBER</strong> for each answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '9c68d7e7-6e6c-4ef2-9b85-e269ed61eb5b',
    'listening',
    'aaac85ba-959d-416d-9271-b845735d6d14',
    3,
    'gap_fill',
    '-----',
    NULL,
    'University Drive',
    NULL,
    1,
    '{"instruction":"<p>Complete the form below. Write<strong> NO MORE THAN TWO WORDS AND/OR A NUMBER</strong> for each answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'cc9912fc-3489-42d9-b45d-62c245f239d7',
    'listening',
    'aaac85ba-959d-416d-9271-b845735d6d14',
    4,
    'gap_fill',
    '-----',
    NULL,
    'Monday',
    NULL,
    1,
    '{"instruction":"<p>Complete the form below. Write<strong> NO MORE THAN TWO WORDS AND/OR A NUMBER</strong> for each answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '4fd623ee-0fc5-44bc-b628-1bf55f9667a4',
    'listening',
    'aaac85ba-959d-416d-9271-b845735d6d14',
    5,
    'gap_fill',
    '-----',
    NULL,
    'Thursday',
    NULL,
    1,
    '{"instruction":"<p>Complete the form below. Write<strong> NO MORE THAN TWO WORDS AND/OR A NUMBER</strong> for each answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'cb75a486-0894-476b-bc81-c042d315b5d7',
    'listening',
    'aaac85ba-959d-416d-9271-b845735d6d14',
    6,
    'gap_fill',
    '-----',
    NULL,
    'a month',
    NULL,
    1,
    '{"instruction":"<p>Complete the form below. Write<strong> NO MORE THAN TWO WORDS AND/OR A NUMBER</strong> for each answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'f434ef8e-57b8-457c-b235-b6baf519e825',
    'listening',
    'aaac85ba-959d-416d-9271-b845735d6d14',
    7,
    'gap_fill',
    '----',
    NULL,
    'A',
    NULL,
    1,
    '{"instruction":"<p>Write the correct letter.</p>","context":"<p>Where does the speaker decide to put items?</p><p><br></p><h4>Options:</h4><p><strong>A</strong>. in emergency pack</p><p><strong>B</strong>. in personal package</p><p><strong>C</strong>. in storage with the furniture</p><p><br></p><p>• cutlery and dishes:   ______ </p><p>• kettle:   ______ </p><p>• alarm clock:   ______ </p><p>• CD player:   ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'e4723ff5-cc36-4c30-a445-a28301eb7118',
    'listening',
    'aaac85ba-959d-416d-9271-b845735d6d14',
    8,
    'gap_fill',
    '----',
    NULL,
    'C',
    NULL,
    1,
    '{"instruction":"<p>Write the correct letter.</p>","context":"<p>Where does the speaker decide to put items?</p><p><br></p><h4>Options:</h4><p><strong>A</strong>. in emergency pack</p><p><strong>B</strong>. in personal package</p><p><strong>C</strong>. in storage with the furniture</p><p><br></p><p>• cutlery and dishes:   ______ </p><p>• kettle:   ______ </p><p>• alarm clock:   ______ </p><p>• CD player:   ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'db421de4-5f8b-41e8-a1fc-8a71922fd4e9',
    'listening',
    'aaac85ba-959d-416d-9271-b845735d6d14',
    9,
    'gap_fill',
    '----',
    NULL,
    'B',
    NULL,
    1,
    '{"instruction":"<p>Write the correct letter.</p>","context":"<p>Where does the speaker decide to put items?</p><p><br></p><h4>Options:</h4><p><strong>A</strong>. in emergency pack</p><p><strong>B</strong>. in personal package</p><p><strong>C</strong>. in storage with the furniture</p><p><br></p><p>• cutlery and dishes:   ______ </p><p>• kettle:   ______ </p><p>• alarm clock:   ______ </p><p>• CD player:   ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'f6b43cab-dc7a-4852-94c0-92341680ffc1',
    'listening',
    'aaac85ba-959d-416d-9271-b845735d6d14',
    10,
    'gap_fill',
    '----',
    NULL,
    'C',
    NULL,
    1,
    '{"instruction":"<p>Write the correct letter.</p>","context":"<p>Where does the speaker decide to put items?</p><p><br></p><h4>Options:</h4><p><strong>A</strong>. in emergency pack</p><p><strong>B</strong>. in personal package</p><p><strong>C</strong>. in storage with the furniture</p><p><br></p><p>• cutlery and dishes:   ______ </p><p>• kettle:   ______ </p><p>• alarm clock:   ______ </p><p>• CD player:   ______ </p>"}'::jsonb
);

