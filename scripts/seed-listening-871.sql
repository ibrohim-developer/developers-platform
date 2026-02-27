-- ============================================
-- Auto-generated seed for: Consultation
-- Source API ID: 871
-- Generated: 2026-02-27T10:14:06.940Z
-- ============================================

-- ============================================
-- Consultation (Section 1)
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '29125b3c-d627-4001-9b68-e4bfcf1a70b0',
    'Consultation',
    'IELTS Listening - Consultation',
    'easy',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.listening_sections (id, test_id, section_number, audio_url, audio_duration_seconds)
VALUES (
    'c2ee5536-66b7-4362-ba25-cc5db0b17347',
    '29125b3c-d627-4001-9b68-e4bfcf1a70b0',
    1,
    'https://api.otaboyev-prep.uz/uploads/files/file_20251215_130615_fcef7fe6.mp3',
    300
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '78ca9ffb-d644-4f70-82ca-3a8b53241241',
    'listening',
    'c2ee5536-66b7-4362-ba25-cc5db0b17347',
    1,
    'gap_fill',
    '----',
    NULL,
    'Atkinson',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Consultation</h3><h4>Patient Information</h4><p>Name: Anu  ______ </p><p>Post code:  ______ </p><p>Current address:  ______  Avenue</p><p>Birthday: October 1st  ______ </p><p>Phone number: 875934</p><p><br></p><h4>Health Condition</h4><p>Background: Illness has lasted for ______ </p><p>Symptom: see ______  lights</p><p>Possible cause: the room was too ______.</p><p>Previous hospital:  ______  Hospital</p><p><br></p><h4>Suggestions</h4><p>Have a good rest after staring at a ______  for a long time</p><p>Use some medicine to ease eye ______ .</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'cdf1610a-0e85-44bd-a194-acce8aa14922',
    'listening',
    'c2ee5536-66b7-4362-ba25-cc5db0b17347',
    2,
    'gap_fill',
    '----',
    NULL,
    'EL14 2BF',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Consultation</h3><h4>Patient Information</h4><p>Name: Anu  ______ </p><p>Post code:  ______ </p><p>Current address:  ______  Avenue</p><p>Birthday: October 1st  ______ </p><p>Phone number: 875934</p><p><br></p><h4>Health Condition</h4><p>Background: Illness has lasted for ______ </p><p>Symptom: see ______  lights</p><p>Possible cause: the room was too ______.</p><p>Previous hospital:  ______  Hospital</p><p><br></p><h4>Suggestions</h4><p>Have a good rest after staring at a ______  for a long time</p><p>Use some medicine to ease eye ______ .</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '98f51922-8b56-4f60-b31e-8ea55c583822',
    'listening',
    'c2ee5536-66b7-4362-ba25-cc5db0b17347',
    3,
    'gap_fill',
    '----',
    NULL,
    'Queens',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Consultation</h3><h4>Patient Information</h4><p>Name: Anu  ______ </p><p>Post code:  ______ </p><p>Current address:  ______  Avenue</p><p>Birthday: October 1st  ______ </p><p>Phone number: 875934</p><p><br></p><h4>Health Condition</h4><p>Background: Illness has lasted for ______ </p><p>Symptom: see ______  lights</p><p>Possible cause: the room was too ______.</p><p>Previous hospital:  ______  Hospital</p><p><br></p><h4>Suggestions</h4><p>Have a good rest after staring at a ______  for a long time</p><p>Use some medicine to ease eye ______ .</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'ced98cf8-2f23-4c6c-a503-392dbc5ac11b',
    'listening',
    'c2ee5536-66b7-4362-ba25-cc5db0b17347',
    4,
    'gap_fill',
    '----',
    NULL,
    '1986',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Consultation</h3><h4>Patient Information</h4><p>Name: Anu  ______ </p><p>Post code:  ______ </p><p>Current address:  ______  Avenue</p><p>Birthday: October 1st  ______ </p><p>Phone number: 875934</p><p><br></p><h4>Health Condition</h4><p>Background: Illness has lasted for ______ </p><p>Symptom: see ______  lights</p><p>Possible cause: the room was too ______.</p><p>Previous hospital:  ______  Hospital</p><p><br></p><h4>Suggestions</h4><p>Have a good rest after staring at a ______  for a long time</p><p>Use some medicine to ease eye ______ .</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '6775d441-137d-45cc-8241-812b6de2d701',
    'listening',
    'c2ee5536-66b7-4362-ba25-cc5db0b17347',
    5,
    'gap_fill',
    '----',
    NULL,
    '5 days',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Consultation</h3><h4>Patient Information</h4><p>Name: Anu  ______ </p><p>Post code:  ______ </p><p>Current address:  ______  Avenue</p><p>Birthday: October 1st  ______ </p><p>Phone number: 875934</p><p><br></p><h4>Health Condition</h4><p>Background: Illness has lasted for ______ </p><p>Symptom: see ______  lights</p><p>Possible cause: the room was too ______.</p><p>Previous hospital:  ______  Hospital</p><p><br></p><h4>Suggestions</h4><p>Have a good rest after staring at a ______  for a long time</p><p>Use some medicine to ease eye ______ .</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '8216a64f-9d51-457b-b66c-68680d46345c',
    'listening',
    'c2ee5536-66b7-4362-ba25-cc5db0b17347',
    6,
    'gap_fill',
    '----',
    NULL,
    'flashing',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Consultation</h3><h4>Patient Information</h4><p>Name: Anu  ______ </p><p>Post code:  ______ </p><p>Current address:  ______  Avenue</p><p>Birthday: October 1st  ______ </p><p>Phone number: 875934</p><p><br></p><h4>Health Condition</h4><p>Background: Illness has lasted for ______ </p><p>Symptom: see ______  lights</p><p>Possible cause: the room was too ______.</p><p>Previous hospital:  ______  Hospital</p><p><br></p><h4>Suggestions</h4><p>Have a good rest after staring at a ______  for a long time</p><p>Use some medicine to ease eye ______ .</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'e4f8fcb8-c7ac-4c3b-a232-be56fcc9dbd5',
    'listening',
    'c2ee5536-66b7-4362-ba25-cc5db0b17347',
    7,
    'gap_fill',
    '----',
    NULL,
    'bright',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Consultation</h3><h4>Patient Information</h4><p>Name: Anu  ______ </p><p>Post code:  ______ </p><p>Current address:  ______  Avenue</p><p>Birthday: October 1st  ______ </p><p>Phone number: 875934</p><p><br></p><h4>Health Condition</h4><p>Background: Illness has lasted for ______ </p><p>Symptom: see ______  lights</p><p>Possible cause: the room was too ______.</p><p>Previous hospital:  ______  Hospital</p><p><br></p><h4>Suggestions</h4><p>Have a good rest after staring at a ______  for a long time</p><p>Use some medicine to ease eye ______ .</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '04162d8e-5fc2-4b57-a684-6101dfa6b58a',
    'listening',
    'c2ee5536-66b7-4362-ba25-cc5db0b17347',
    8,
    'gap_fill',
    '----',
    NULL,
    'Central',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Consultation</h3><h4>Patient Information</h4><p>Name: Anu  ______ </p><p>Post code:  ______ </p><p>Current address:  ______  Avenue</p><p>Birthday: October 1st  ______ </p><p>Phone number: 875934</p><p><br></p><h4>Health Condition</h4><p>Background: Illness has lasted for ______ </p><p>Symptom: see ______  lights</p><p>Possible cause: the room was too ______.</p><p>Previous hospital:  ______  Hospital</p><p><br></p><h4>Suggestions</h4><p>Have a good rest after staring at a ______  for a long time</p><p>Use some medicine to ease eye ______ .</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '04399da6-8e9d-4a75-acee-09cc18ca5f3a',
    'listening',
    'c2ee5536-66b7-4362-ba25-cc5db0b17347',
    9,
    'gap_fill',
    '----',
    NULL,
    'screen',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Consultation</h3><h4>Patient Information</h4><p>Name: Anu  ______ </p><p>Post code:  ______ </p><p>Current address:  ______  Avenue</p><p>Birthday: October 1st  ______ </p><p>Phone number: 875934</p><p><br></p><h4>Health Condition</h4><p>Background: Illness has lasted for ______ </p><p>Symptom: see ______  lights</p><p>Possible cause: the room was too ______.</p><p>Previous hospital:  ______  Hospital</p><p><br></p><h4>Suggestions</h4><p>Have a good rest after staring at a ______  for a long time</p><p>Use some medicine to ease eye ______ .</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '8a22f40e-bf36-40d1-8e83-cc21436ee16a',
    'listening',
    'c2ee5536-66b7-4362-ba25-cc5db0b17347',
    10,
    'gap_fill',
    '----',
    NULL,
    'strain',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Consultation</h3><h4>Patient Information</h4><p>Name: Anu  ______ </p><p>Post code:  ______ </p><p>Current address:  ______  Avenue</p><p>Birthday: October 1st  ______ </p><p>Phone number: 875934</p><p><br></p><h4>Health Condition</h4><p>Background: Illness has lasted for ______ </p><p>Symptom: see ______  lights</p><p>Possible cause: the room was too ______.</p><p>Previous hospital:  ______  Hospital</p><p><br></p><h4>Suggestions</h4><p>Have a good rest after staring at a ______  for a long time</p><p>Use some medicine to ease eye ______ .</p>"}'::jsonb
);

