-- ============================================
-- Auto-generated seed for: Places to visit with children
-- Source API ID: 877
-- Generated: 2026-02-27T10:14:02.051Z
-- ============================================

-- ============================================
-- Places to visit with children (Section 1)
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    'faeb69a4-3b71-4a3b-9497-d239c89ffc2d',
    'Places to visit with children',
    'IELTS Listening - Places to visit with children',
    'easy',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.listening_sections (id, test_id, section_number, audio_url, audio_duration_seconds)
VALUES (
    'e25c571b-4199-4641-a9c5-ab6be9568bcf',
    'faeb69a4-3b71-4a3b-9497-d239c89ffc2d',
    1,
    'https://api.otaboyev-prep.uz/uploads/files/file_20251215_150452_b7c0b1b4.mp3',
    279
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '10e09856-9362-4124-9fae-fb420d6b5055',
    'listening',
    'e25c571b-4199-4641-a9c5-ab6be9568bcf',
    1,
    'gap_fill',
    '----',
    NULL,
    '65',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write<strong> ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Places to visit with children</h3><p><strong>Alma Park</strong></p><p>• Go to the zoo.</p><p>• A family ticket is $ ______ .</p><p>• The fastest bus takes about ______ minutes.</p><p>• You can hold some animals and have a ______ for a small fee.</p><p><strong>The Entertainment Room</strong></p><p>• John ______ is performing.</p><p>• Performance run from Tuesday to ______ .</p><p>• There is a ______ on tickets for Monday night’s preview.</p><p><strong>The City</strong></p><p>• Go to the city center ______ to see a special exhibition.</p><p>– Do origami – we’ll need to take a small ______ .</p><p><strong>Bunyabbie Island</strong></p><p>• Explore with a four-wheel drive.</p><p>• Go snorkelling at Salty Lake – it’s on the ______ side of the Island.</p><p>• You’re not allowed to ______ on the island.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '70130f71-03bd-4deb-b7af-778afe841546',
    'listening',
    'e25c571b-4199-4641-a9c5-ab6be9568bcf',
    2,
    'gap_fill',
    '----',
    NULL,
    '40',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write<strong> ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Places to visit with children</h3><p><strong>Alma Park</strong></p><p>• Go to the zoo.</p><p>• A family ticket is $ ______ .</p><p>• The fastest bus takes about ______ minutes.</p><p>• You can hold some animals and have a ______ for a small fee.</p><p><strong>The Entertainment Room</strong></p><p>• John ______ is performing.</p><p>• Performance run from Tuesday to ______ .</p><p>• There is a ______ on tickets for Monday night’s preview.</p><p><strong>The City</strong></p><p>• Go to the city center ______ to see a special exhibition.</p><p>– Do origami – we’ll need to take a small ______ .</p><p><strong>Bunyabbie Island</strong></p><p>• Explore with a four-wheel drive.</p><p>• Go snorkelling at Salty Lake – it’s on the ______ side of the Island.</p><p>• You’re not allowed to ______ on the island.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '8ae749a8-54c5-4086-a249-d67cfe4d2682',
    'listening',
    'e25c571b-4199-4641-a9c5-ab6be9568bcf',
    3,
    'gap_fill',
    '----',
    NULL,
    'photo',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write<strong> ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Places to visit with children</h3><p><strong>Alma Park</strong></p><p>• Go to the zoo.</p><p>• A family ticket is $ ______ .</p><p>• The fastest bus takes about ______ minutes.</p><p>• You can hold some animals and have a ______ for a small fee.</p><p><strong>The Entertainment Room</strong></p><p>• John ______ is performing.</p><p>• Performance run from Tuesday to ______ .</p><p>• There is a ______ on tickets for Monday night’s preview.</p><p><strong>The City</strong></p><p>• Go to the city center ______ to see a special exhibition.</p><p>– Do origami – we’ll need to take a small ______ .</p><p><strong>Bunyabbie Island</strong></p><p>• Explore with a four-wheel drive.</p><p>• Go snorkelling at Salty Lake – it’s on the ______ side of the Island.</p><p>• You’re not allowed to ______ on the island.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd68f2f53-a93a-4244-948e-4c42f34bc97d',
    'listening',
    'e25c571b-4199-4641-a9c5-ab6be9568bcf',
    4,
    'gap_fill',
    '----',
    NULL,
    'Rosie',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write<strong> ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Places to visit with children</h3><p><strong>Alma Park</strong></p><p>• Go to the zoo.</p><p>• A family ticket is $ ______ .</p><p>• The fastest bus takes about ______ minutes.</p><p>• You can hold some animals and have a ______ for a small fee.</p><p><strong>The Entertainment Room</strong></p><p>• John ______ is performing.</p><p>• Performance run from Tuesday to ______ .</p><p>• There is a ______ on tickets for Monday night’s preview.</p><p><strong>The City</strong></p><p>• Go to the city center ______ to see a special exhibition.</p><p>– Do origami – we’ll need to take a small ______ .</p><p><strong>Bunyabbie Island</strong></p><p>• Explore with a four-wheel drive.</p><p>• Go snorkelling at Salty Lake – it’s on the ______ side of the Island.</p><p>• You’re not allowed to ______ on the island.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'c93c85f7-4480-4a2d-8cbd-49da86425e15',
    'listening',
    'e25c571b-4199-4641-a9c5-ab6be9568bcf',
    5,
    'gap_fill',
    '----',
    NULL,
    'Saturday',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write<strong> ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Places to visit with children</h3><p><strong>Alma Park</strong></p><p>• Go to the zoo.</p><p>• A family ticket is $ ______ .</p><p>• The fastest bus takes about ______ minutes.</p><p>• You can hold some animals and have a ______ for a small fee.</p><p><strong>The Entertainment Room</strong></p><p>• John ______ is performing.</p><p>• Performance run from Tuesday to ______ .</p><p>• There is a ______ on tickets for Monday night’s preview.</p><p><strong>The City</strong></p><p>• Go to the city center ______ to see a special exhibition.</p><p>– Do origami – we’ll need to take a small ______ .</p><p><strong>Bunyabbie Island</strong></p><p>• Explore with a four-wheel drive.</p><p>• Go snorkelling at Salty Lake – it’s on the ______ side of the Island.</p><p>• You’re not allowed to ______ on the island.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '92e97c61-1088-49ee-90ce-f046ac3ea07f',
    'listening',
    'e25c571b-4199-4641-a9c5-ab6be9568bcf',
    6,
    'gap_fill',
    '----',
    NULL,
    'discount',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write<strong> ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Places to visit with children</h3><p><strong>Alma Park</strong></p><p>• Go to the zoo.</p><p>• A family ticket is $ ______ .</p><p>• The fastest bus takes about ______ minutes.</p><p>• You can hold some animals and have a ______ for a small fee.</p><p><strong>The Entertainment Room</strong></p><p>• John ______ is performing.</p><p>• Performance run from Tuesday to ______ .</p><p>• There is a ______ on tickets for Monday night’s preview.</p><p><strong>The City</strong></p><p>• Go to the city center ______ to see a special exhibition.</p><p>– Do origami – we’ll need to take a small ______ .</p><p><strong>Bunyabbie Island</strong></p><p>• Explore with a four-wheel drive.</p><p>• Go snorkelling at Salty Lake – it’s on the ______ side of the Island.</p><p>• You’re not allowed to ______ on the island.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '2b24bcc7-6e93-4df3-8170-7e126da08a6a',
    'listening',
    'e25c571b-4199-4641-a9c5-ab6be9568bcf',
    7,
    'gap_fill',
    '----',
    NULL,
    'museum',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write<strong> ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Places to visit with children</h3><p><strong>Alma Park</strong></p><p>• Go to the zoo.</p><p>• A family ticket is $ ______ .</p><p>• The fastest bus takes about ______ minutes.</p><p>• You can hold some animals and have a ______ for a small fee.</p><p><strong>The Entertainment Room</strong></p><p>• John ______ is performing.</p><p>• Performance run from Tuesday to ______ .</p><p>• There is a ______ on tickets for Monday night’s preview.</p><p><strong>The City</strong></p><p>• Go to the city center ______ to see a special exhibition.</p><p>– Do origami – we’ll need to take a small ______ .</p><p><strong>Bunyabbie Island</strong></p><p>• Explore with a four-wheel drive.</p><p>• Go snorkelling at Salty Lake – it’s on the ______ side of the Island.</p><p>• You’re not allowed to ______ on the island.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '6f88546b-5fe2-412e-b7d2-a9b4230316c7',
    'listening',
    'e25c571b-4199-4641-a9c5-ab6be9568bcf',
    8,
    'gap_fill',
    '----',
    NULL,
    'box',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write<strong> ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Places to visit with children</h3><p><strong>Alma Park</strong></p><p>• Go to the zoo.</p><p>• A family ticket is $ ______ .</p><p>• The fastest bus takes about ______ minutes.</p><p>• You can hold some animals and have a ______ for a small fee.</p><p><strong>The Entertainment Room</strong></p><p>• John ______ is performing.</p><p>• Performance run from Tuesday to ______ .</p><p>• There is a ______ on tickets for Monday night’s preview.</p><p><strong>The City</strong></p><p>• Go to the city center ______ to see a special exhibition.</p><p>– Do origami – we’ll need to take a small ______ .</p><p><strong>Bunyabbie Island</strong></p><p>• Explore with a four-wheel drive.</p><p>• Go snorkelling at Salty Lake – it’s on the ______ side of the Island.</p><p>• You’re not allowed to ______ on the island.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'a2810b01-e5ff-48dc-bba7-573f0709df20',
    'listening',
    'e25c571b-4199-4641-a9c5-ab6be9568bcf',
    9,
    'gap_fill',
    '----',
    NULL,
    'ocean',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write<strong> ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Places to visit with children</h3><p><strong>Alma Park</strong></p><p>• Go to the zoo.</p><p>• A family ticket is $ ______ .</p><p>• The fastest bus takes about ______ minutes.</p><p>• You can hold some animals and have a ______ for a small fee.</p><p><strong>The Entertainment Room</strong></p><p>• John ______ is performing.</p><p>• Performance run from Tuesday to ______ .</p><p>• There is a ______ on tickets for Monday night’s preview.</p><p><strong>The City</strong></p><p>• Go to the city center ______ to see a special exhibition.</p><p>– Do origami – we’ll need to take a small ______ .</p><p><strong>Bunyabbie Island</strong></p><p>• Explore with a four-wheel drive.</p><p>• Go snorkelling at Salty Lake – it’s on the ______ side of the Island.</p><p>• You’re not allowed to ______ on the island.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'a57dad78-1401-4691-81da-e79eeb053ef5',
    'listening',
    'e25c571b-4199-4641-a9c5-ab6be9568bcf',
    10,
    'gap_fill',
    '----',
    NULL,
    'camp',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write<strong> ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Places to visit with children</h3><p><strong>Alma Park</strong></p><p>• Go to the zoo.</p><p>• A family ticket is $ ______ .</p><p>• The fastest bus takes about ______ minutes.</p><p>• You can hold some animals and have a ______ for a small fee.</p><p><strong>The Entertainment Room</strong></p><p>• John ______ is performing.</p><p>• Performance run from Tuesday to ______ .</p><p>• There is a ______ on tickets for Monday night’s preview.</p><p><strong>The City</strong></p><p>• Go to the city center ______ to see a special exhibition.</p><p>– Do origami – we’ll need to take a small ______ .</p><p><strong>Bunyabbie Island</strong></p><p>• Explore with a four-wheel drive.</p><p>• Go snorkelling at Salty Lake – it’s on the ______ side of the Island.</p><p>• You’re not allowed to ______ on the island.</p>"}'::jsonb
);

