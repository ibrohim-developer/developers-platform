-- ============================================
-- Auto-generated seed for: Dolphin presentation
-- Source API ID: 995
-- Generated: 2026-02-27T10:14:15.030Z
-- ============================================

-- ============================================
-- Dolphin presentation (Section 3)
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '80e3028c-c888-4d45-a8f9-34d16aca3379',
    'Dolphin presentation',
    'IELTS Listening - Dolphin presentation',
    'medium',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.listening_sections (id, test_id, section_number, audio_url, audio_duration_seconds)
VALUES (
    '1acc1948-22d3-4630-b4d0-a70dc199fc63',
    '80e3028c-c888-4d45-a8f9-34d16aca3379',
    3,
    'https://api.otaboyev-prep.uz/uploads/files/file_20260109_152857_40d68d5c.mp3',
    375
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '9b151c8c-20a3-47af-8650-f685373dfc31',
    'listening',
    '1acc1948-22d3-4630-b4d0-a70dc199fc63',
    21,
    'mcq_single',
    'What is the students’ purpose in mentioning the way dolphins make sounds?',
    NULL,
    'B',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '408d921a-0a3a-440a-8616-f75c6eef5303',
    'listening',
    '1acc1948-22d3-4630-b4d0-a70dc199fc63',
    22,
    'mcq_single',
    'According to Fran, Hector’s dolphins are unaffected by',
    NULL,
    'A',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd3a3bbc3-42f8-4ba0-b22e-1f53e08226c1',
    'listening',
    '1acc1948-22d3-4630-b4d0-a70dc199fc63',
    23,
    'mcq_single',
    'The New Zealand Government set up a marine sanctuary',
    NULL,
    'B',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '2de29c43-e49f-4a67-abcd-6b1f37a9d5d7',
    'listening',
    '1acc1948-22d3-4630-b4d0-a70dc199fc63',
    24,
    'mcq_single',
    'Where is the largest population of Hector’s dolphins in New Zealand?',
    NULL,
    'C',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '596b3e6f-8663-4189-aa57-f802f018e534',
    'listening',
    '1acc1948-22d3-4630-b4d0-a70dc199fc63',
    25,
    'matching_info',
    '----',
    '["swim along behind boats","swim in unusually large groups","live along New Zealand’s entire coastline","swim beneath slow-moving boats","tend to be solitary","live only off New Zealand’s northwest coast","are the second largest dolphin species in New Zealand","are seen mostly in Kaikoura"]'::jsonb,
    'C',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer and move it into the gap.</p>","context":"<p>Which special characteristic does each of the following types of dolphin have?</p><p><br></p><h3><strong>Types of dolphin</strong></h3><p>• Common dolphins   ______ </p><p>• Dusky dolphins   ______ </p><p>• Hector’s dolphins   ______ </p><p>• Maui’s dolphins   ______ </p><p>• Orcas   ______ </p><p>• Bottle-nose dolphins   ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'cbb744be-99f8-4e4c-9faa-0fa77ab233ea',
    'listening',
    '1acc1948-22d3-4630-b4d0-a70dc199fc63',
    26,
    'matching_info',
    '----',
    '["swim along behind boats","swim in unusually large groups","live along New Zealand’s entire coastline","swim beneath slow-moving boats","tend to be solitary","live only off New Zealand’s northwest coast","are the second largest dolphin species in New Zealand","are seen mostly in Kaikoura"]'::jsonb,
    'B',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer and move it into the gap.</p>","context":"<p>Which special characteristic does each of the following types of dolphin have?</p><p><br></p><h3><strong>Types of dolphin</strong></h3><p>• Common dolphins   ______ </p><p>• Dusky dolphins   ______ </p><p>• Hector’s dolphins   ______ </p><p>• Maui’s dolphins   ______ </p><p>• Orcas   ______ </p><p>• Bottle-nose dolphins   ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '4eb04d38-b7cf-499b-bab7-6d87a84abe63',
    'listening',
    '1acc1948-22d3-4630-b4d0-a70dc199fc63',
    27,
    'matching_info',
    '----',
    '["swim along behind boats","swim in unusually large groups","live along New Zealand’s entire coastline","swim beneath slow-moving boats","tend to be solitary","live only off New Zealand’s northwest coast","are the second largest dolphin species in New Zealand","are seen mostly in Kaikoura"]'::jsonb,
    'A',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer and move it into the gap.</p>","context":"<p>Which special characteristic does each of the following types of dolphin have?</p><p><br></p><h3><strong>Types of dolphin</strong></h3><p>• Common dolphins   ______ </p><p>• Dusky dolphins   ______ </p><p>• Hector’s dolphins   ______ </p><p>• Maui’s dolphins   ______ </p><p>• Orcas   ______ </p><p>• Bottle-nose dolphins   ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '914e55cc-9f14-472e-ab37-f2eb0b7ebcd6',
    'listening',
    '1acc1948-22d3-4630-b4d0-a70dc199fc63',
    28,
    'matching_info',
    '----',
    '["swim along behind boats","swim in unusually large groups","live along New Zealand’s entire coastline","swim beneath slow-moving boats","tend to be solitary","live only off New Zealand’s northwest coast","are the second largest dolphin species in New Zealand","are seen mostly in Kaikoura"]'::jsonb,
    'F',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer and move it into the gap.</p>","context":"<p>Which special characteristic does each of the following types of dolphin have?</p><p><br></p><h3><strong>Types of dolphin</strong></h3><p>• Common dolphins   ______ </p><p>• Dusky dolphins   ______ </p><p>• Hector’s dolphins   ______ </p><p>• Maui’s dolphins   ______ </p><p>• Orcas   ______ </p><p>• Bottle-nose dolphins   ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '1bccbd53-5f57-46aa-ab72-7d0fb72fe267',
    'listening',
    '1acc1948-22d3-4630-b4d0-a70dc199fc63',
    29,
    'matching_info',
    '----',
    '["swim along behind boats","swim in unusually large groups","live along New Zealand’s entire coastline","swim beneath slow-moving boats","tend to be solitary","live only off New Zealand’s northwest coast","are the second largest dolphin species in New Zealand","are seen mostly in Kaikoura"]'::jsonb,
    'H',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer and move it into the gap.</p>","context":"<p>Which special characteristic does each of the following types of dolphin have?</p><p><br></p><h3><strong>Types of dolphin</strong></h3><p>• Common dolphins   ______ </p><p>• Dusky dolphins   ______ </p><p>• Hector’s dolphins   ______ </p><p>• Maui’s dolphins   ______ </p><p>• Orcas   ______ </p><p>• Bottle-nose dolphins   ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '125a1ba2-22d8-4920-9e72-c23855621a0c',
    'listening',
    '1acc1948-22d3-4630-b4d0-a70dc199fc63',
    30,
    'matching_info',
    '----',
    '["swim along behind boats","swim in unusually large groups","live along New Zealand’s entire coastline","swim beneath slow-moving boats","tend to be solitary","live only off New Zealand’s northwest coast","are the second largest dolphin species in New Zealand","are seen mostly in Kaikoura"]'::jsonb,
    'G',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer and move it into the gap.</p>","context":"<p>Which special characteristic does each of the following types of dolphin have?</p><p><br></p><h3><strong>Types of dolphin</strong></h3><p>• Common dolphins   ______ </p><p>• Dusky dolphins   ______ </p><p>• Hector’s dolphins   ______ </p><p>• Maui’s dolphins   ______ </p><p>• Orcas   ______ </p><p>• Bottle-nose dolphins   ______ </p>"}'::jsonb
);

