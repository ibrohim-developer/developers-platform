-- ============================================
-- Auto-generated seed for: Rooms to hire for parties
-- Source API ID: 873
-- Generated: 2026-02-27T10:14:05.090Z
-- ============================================

-- ============================================
-- Rooms to hire for parties (Section 1)
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '6947822c-62fa-42f6-b569-3e5232a044b8',
    'Rooms to hire for parties',
    'IELTS Listening - Rooms to hire for parties',
    'easy',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.listening_sections (id, test_id, section_number, audio_url, audio_duration_seconds)
VALUES (
    '2879d13a-d16a-40f5-9937-d6bbfbb15503',
    '6947822c-62fa-42f6-b569-3e5232a044b8',
    1,
    'https://api.otaboyev-prep.uz/uploads/files/file_20251215_135204_4644ad27.mp3',
    405
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '2a49877d-22a0-4e1f-a1f7-b92d696fc493',
    'listening',
    '2879d13a-d16a-40f5-9937-d6bbfbb15503',
    1,
    'gap_fill',
    '----',
    NULL,
    '5th',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes. Write <strong>ONE WORD AND/OR A NUMBER </strong>for each answer.</p>","context":"<h3>Rooms to hire for parties</h3><p><strong>The Exchange Hotel</strong></p><p>• number of seated guests possible: 45</p><p>• room on the ______  floor</p><p>• large, bright room with a good ______ </p><p>• cost: £32 with buffet per person (minimum number of people: ______ )</p><p>• available any ______  in April</p><p><br></p><p><strong>The ______ &nbsp;Hotel</strong></p><p>• large room (seats 75)</p><p>• in the ______  area of the city</p><p>• room on ground floor with a small ______  for guests to use</p><p>• cost: £36 with buffet per person</p><p>• available: 13th and 20th April</p><p><br></p><p><strong>Booking information</strong></p><p>• Bookings held for a ______ </p><p>• Final payment of ______  % required 10 days before the party</p><p>• Need to confirm guests and menu 5 days in advance</p><p>• To book, phone ______  on Monday</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '4a16185e-098f-4745-afa8-ddedded45981',
    'listening',
    '2879d13a-d16a-40f5-9937-d6bbfbb15503',
    2,
    'gap_fill',
    '----',
    NULL,
    'view',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes. Write <strong>ONE WORD AND/OR A NUMBER </strong>for each answer.</p>","context":"<h3>Rooms to hire for parties</h3><p><strong>The Exchange Hotel</strong></p><p>• number of seated guests possible: 45</p><p>• room on the ______  floor</p><p>• large, bright room with a good ______ </p><p>• cost: £32 with buffet per person (minimum number of people: ______ )</p><p>• available any ______  in April</p><p><br></p><p><strong>The ______ &nbsp;Hotel</strong></p><p>• large room (seats 75)</p><p>• in the ______  area of the city</p><p>• room on ground floor with a small ______  for guests to use</p><p>• cost: £36 with buffet per person</p><p>• available: 13th and 20th April</p><p><br></p><p><strong>Booking information</strong></p><p>• Bookings held for a ______ </p><p>• Final payment of ______  % required 10 days before the party</p><p>• Need to confirm guests and menu 5 days in advance</p><p>• To book, phone ______  on Monday</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'b8eee201-4540-41c9-bbf6-5d7607fae182',
    'listening',
    '2879d13a-d16a-40f5-9937-d6bbfbb15503',
    3,
    'gap_fill',
    '----',
    NULL,
    '35',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes. Write <strong>ONE WORD AND/OR A NUMBER </strong>for each answer.</p>","context":"<h3>Rooms to hire for parties</h3><p><strong>The Exchange Hotel</strong></p><p>• number of seated guests possible: 45</p><p>• room on the ______  floor</p><p>• large, bright room with a good ______ </p><p>• cost: £32 with buffet per person (minimum number of people: ______ )</p><p>• available any ______  in April</p><p><br></p><p><strong>The ______ &nbsp;Hotel</strong></p><p>• large room (seats 75)</p><p>• in the ______  area of the city</p><p>• room on ground floor with a small ______  for guests to use</p><p>• cost: £36 with buffet per person</p><p>• available: 13th and 20th April</p><p><br></p><p><strong>Booking information</strong></p><p>• Bookings held for a ______ </p><p>• Final payment of ______  % required 10 days before the party</p><p>• Need to confirm guests and menu 5 days in advance</p><p>• To book, phone ______  on Monday</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'ef7813be-6c9d-420b-aad9-0aacedaf0777',
    'listening',
    '2879d13a-d16a-40f5-9937-d6bbfbb15503',
    4,
    'gap_fill',
    '----',
    NULL,
    'Saturday',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes. Write <strong>ONE WORD AND/OR A NUMBER </strong>for each answer.</p>","context":"<h3>Rooms to hire for parties</h3><p><strong>The Exchange Hotel</strong></p><p>• number of seated guests possible: 45</p><p>• room on the ______  floor</p><p>• large, bright room with a good ______ </p><p>• cost: £32 with buffet per person (minimum number of people: ______ )</p><p>• available any ______  in April</p><p><br></p><p><strong>The ______ &nbsp;Hotel</strong></p><p>• large room (seats 75)</p><p>• in the ______  area of the city</p><p>• room on ground floor with a small ______  for guests to use</p><p>• cost: £36 with buffet per person</p><p>• available: 13th and 20th April</p><p><br></p><p><strong>Booking information</strong></p><p>• Bookings held for a ______ </p><p>• Final payment of ______  % required 10 days before the party</p><p>• Need to confirm guests and menu 5 days in advance</p><p>• To book, phone ______  on Monday</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'feda8303-5e74-4a8d-9f70-6318fad9f940',
    'listening',
    '2879d13a-d16a-40f5-9937-d6bbfbb15503',
    5,
    'gap_fill',
    '----',
    NULL,
    'Limerick',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes. Write <strong>ONE WORD AND/OR A NUMBER </strong>for each answer.</p>","context":"<h3>Rooms to hire for parties</h3><p><strong>The Exchange Hotel</strong></p><p>• number of seated guests possible: 45</p><p>• room on the ______  floor</p><p>• large, bright room with a good ______ </p><p>• cost: £32 with buffet per person (minimum number of people: ______ )</p><p>• available any ______  in April</p><p><br></p><p><strong>The ______ &nbsp;Hotel</strong></p><p>• large room (seats 75)</p><p>• in the ______  area of the city</p><p>• room on ground floor with a small ______  for guests to use</p><p>• cost: £36 with buffet per person</p><p>• available: 13th and 20th April</p><p><br></p><p><strong>Booking information</strong></p><p>• Bookings held for a ______ </p><p>• Final payment of ______  % required 10 days before the party</p><p>• Need to confirm guests and menu 5 days in advance</p><p>• To book, phone ______  on Monday</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0345079c-3042-4b63-a271-aca5f059b3e6',
    'listening',
    '2879d13a-d16a-40f5-9937-d6bbfbb15503',
    6,
    'gap_fill',
    '----',
    NULL,
    'business',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes. Write <strong>ONE WORD AND/OR A NUMBER </strong>for each answer.</p>","context":"<h3>Rooms to hire for parties</h3><p><strong>The Exchange Hotel</strong></p><p>• number of seated guests possible: 45</p><p>• room on the ______  floor</p><p>• large, bright room with a good ______ </p><p>• cost: £32 with buffet per person (minimum number of people: ______ )</p><p>• available any ______  in April</p><p><br></p><p><strong>The ______ &nbsp;Hotel</strong></p><p>• large room (seats 75)</p><p>• in the ______  area of the city</p><p>• room on ground floor with a small ______  for guests to use</p><p>• cost: £36 with buffet per person</p><p>• available: 13th and 20th April</p><p><br></p><p><strong>Booking information</strong></p><p>• Bookings held for a ______ </p><p>• Final payment of ______  % required 10 days before the party</p><p>• Need to confirm guests and menu 5 days in advance</p><p>• To book, phone ______  on Monday</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '89ad53aa-6bca-4037-a35e-0c920544fe28',
    'listening',
    '2879d13a-d16a-40f5-9937-d6bbfbb15503',
    7,
    'gap_fill',
    '----',
    NULL,
    'garden',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes. Write <strong>ONE WORD AND/OR A NUMBER </strong>for each answer.</p>","context":"<h3>Rooms to hire for parties</h3><p><strong>The Exchange Hotel</strong></p><p>• number of seated guests possible: 45</p><p>• room on the ______  floor</p><p>• large, bright room with a good ______ </p><p>• cost: £32 with buffet per person (minimum number of people: ______ )</p><p>• available any ______  in April</p><p><br></p><p><strong>The ______ &nbsp;Hotel</strong></p><p>• large room (seats 75)</p><p>• in the ______  area of the city</p><p>• room on ground floor with a small ______  for guests to use</p><p>• cost: £36 with buffet per person</p><p>• available: 13th and 20th April</p><p><br></p><p><strong>Booking information</strong></p><p>• Bookings held for a ______ </p><p>• Final payment of ______  % required 10 days before the party</p><p>• Need to confirm guests and menu 5 days in advance</p><p>• To book, phone ______  on Monday</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '6628fff1-3978-49b1-bd50-12c4953cdac4',
    'listening',
    '2879d13a-d16a-40f5-9937-d6bbfbb15503',
    8,
    'gap_fill',
    '----',
    NULL,
    'week',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes. Write <strong>ONE WORD AND/OR A NUMBER </strong>for each answer.</p>","context":"<h3>Rooms to hire for parties</h3><p><strong>The Exchange Hotel</strong></p><p>• number of seated guests possible: 45</p><p>• room on the ______  floor</p><p>• large, bright room with a good ______ </p><p>• cost: £32 with buffet per person (minimum number of people: ______ )</p><p>• available any ______  in April</p><p><br></p><p><strong>The ______ &nbsp;Hotel</strong></p><p>• large room (seats 75)</p><p>• in the ______  area of the city</p><p>• room on ground floor with a small ______  for guests to use</p><p>• cost: £36 with buffet per person</p><p>• available: 13th and 20th April</p><p><br></p><p><strong>Booking information</strong></p><p>• Bookings held for a ______ </p><p>• Final payment of ______  % required 10 days before the party</p><p>• Need to confirm guests and menu 5 days in advance</p><p>• To book, phone ______  on Monday</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '2631d2ca-ed33-4dcb-b641-86c3e529a4b9',
    'listening',
    '2879d13a-d16a-40f5-9937-d6bbfbb15503',
    9,
    'gap_fill',
    '----',
    NULL,
    '65',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes. Write <strong>ONE WORD AND/OR A NUMBER </strong>for each answer.</p>","context":"<h3>Rooms to hire for parties</h3><p><strong>The Exchange Hotel</strong></p><p>• number of seated guests possible: 45</p><p>• room on the ______  floor</p><p>• large, bright room with a good ______ </p><p>• cost: £32 with buffet per person (minimum number of people: ______ )</p><p>• available any ______  in April</p><p><br></p><p><strong>The ______ &nbsp;Hotel</strong></p><p>• large room (seats 75)</p><p>• in the ______  area of the city</p><p>• room on ground floor with a small ______  for guests to use</p><p>• cost: £36 with buffet per person</p><p>• available: 13th and 20th April</p><p><br></p><p><strong>Booking information</strong></p><p>• Bookings held for a ______ </p><p>• Final payment of ______  % required 10 days before the party</p><p>• Need to confirm guests and menu 5 days in advance</p><p>• To book, phone ______  on Monday</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'aed75a8f-d622-49c8-a986-429e64685375',
    'listening',
    '2879d13a-d16a-40f5-9937-d6bbfbb15503',
    10,
    'gap_fill',
    '----',
    NULL,
    '044298611',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes. Write <strong>ONE WORD AND/OR A NUMBER </strong>for each answer.</p>","context":"<h3>Rooms to hire for parties</h3><p><strong>The Exchange Hotel</strong></p><p>• number of seated guests possible: 45</p><p>• room on the ______  floor</p><p>• large, bright room with a good ______ </p><p>• cost: £32 with buffet per person (minimum number of people: ______ )</p><p>• available any ______  in April</p><p><br></p><p><strong>The ______ &nbsp;Hotel</strong></p><p>• large room (seats 75)</p><p>• in the ______  area of the city</p><p>• room on ground floor with a small ______  for guests to use</p><p>• cost: £36 with buffet per person</p><p>• available: 13th and 20th April</p><p><br></p><p><strong>Booking information</strong></p><p>• Bookings held for a ______ </p><p>• Final payment of ______  % required 10 days before the party</p><p>• Need to confirm guests and menu 5 days in advance</p><p>• To book, phone ______  on Monday</p>"}'::jsonb
);

