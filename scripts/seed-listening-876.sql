-- ============================================
-- Auto-generated seed for: Job at Bellfield Garden Centre
-- Source API ID: 876
-- Generated: 2026-02-27T10:14:03.065Z
-- ============================================

-- ============================================
-- Job at Bellfield Garden Centre (Section 1)
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '05206948-dc71-455d-82d9-33fe51a68824',
    'Job at Bellfield Garden Centre',
    'IELTS Listening - Job at Bellfield Garden Centre',
    'easy',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.listening_sections (id, test_id, section_number, audio_url, audio_duration_seconds)
VALUES (
    '0d25ce01-739a-457b-a681-1a42e5db3d4f',
    '05206948-dc71-455d-82d9-33fe51a68824',
    1,
    'https://api.otaboyev-prep.uz/uploads/files/file_20251215_144446_7342ffa7.mp3',
    443
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '537512e5-e528-4dca-807e-00023d4bd0bf',
    'listening',
    '0d25ce01-739a-457b-a681-1a42e5db3d4f',
    1,
    'gap_fill',
    '----',
    NULL,
    'month',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Job at Bellfield Garden Centre</h3><p><strong>Job:</strong></p><p><strong>Example</strong></p><p>Job title: garden centre assistant</p><p>working mainly as a cashier</p><p>will also</p><p>• help with plants, and in the shop</p><p>• help customers, starting after a  ______ </p><p><strong>Requirements:</strong></p><p>• an interest in ______ </p><p>• preferably knowing something about plants</p><p><strong>Hours:</strong></p><p>• working hours are flexible</p><p>• 5 days a week, usually including ______  </p><p>•  ______ hours a week</p><p><strong>What''s provided:</strong></p><p>• ______  (about everything they sell, and customer service)</p><p>• ______  (but not laundry)</p><p>• staff discount</p><p>• team ______ </p><p>• financial help including vouchers for ______ </p><p><strong>Starting pay:</strong>£<strong> </strong>  ______ per hour</p><p><strong>Contact</strong>: Janice ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '2d68bf2c-a2d9-44b0-893f-5e0218f68b7c',
    'listening',
    '0d25ce01-739a-457b-a681-1a42e5db3d4f',
    2,
    'gap_fill',
    '----',
    NULL,
    'selling',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Job at Bellfield Garden Centre</h3><p><strong>Job:</strong></p><p><strong>Example</strong></p><p>Job title: garden centre assistant</p><p>working mainly as a cashier</p><p>will also</p><p>• help with plants, and in the shop</p><p>• help customers, starting after a  ______ </p><p><strong>Requirements:</strong></p><p>• an interest in ______ </p><p>• preferably knowing something about plants</p><p><strong>Hours:</strong></p><p>• working hours are flexible</p><p>• 5 days a week, usually including ______  </p><p>•  ______ hours a week</p><p><strong>What''s provided:</strong></p><p>• ______  (about everything they sell, and customer service)</p><p>• ______  (but not laundry)</p><p>• staff discount</p><p>• team ______ </p><p>• financial help including vouchers for ______ </p><p><strong>Starting pay:</strong>£<strong> </strong>  ______ per hour</p><p><strong>Contact</strong>: Janice ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0d926456-00e9-4713-a2d2-3f3a1b7acb53',
    'listening',
    '0d25ce01-739a-457b-a681-1a42e5db3d4f',
    3,
    'gap_fill',
    '----',
    NULL,
    'Sundays',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Job at Bellfield Garden Centre</h3><p><strong>Job:</strong></p><p><strong>Example</strong></p><p>Job title: garden centre assistant</p><p>working mainly as a cashier</p><p>will also</p><p>• help with plants, and in the shop</p><p>• help customers, starting after a  ______ </p><p><strong>Requirements:</strong></p><p>• an interest in ______ </p><p>• preferably knowing something about plants</p><p><strong>Hours:</strong></p><p>• working hours are flexible</p><p>• 5 days a week, usually including ______  </p><p>•  ______ hours a week</p><p><strong>What''s provided:</strong></p><p>• ______  (about everything they sell, and customer service)</p><p>• ______  (but not laundry)</p><p>• staff discount</p><p>• team ______ </p><p>• financial help including vouchers for ______ </p><p><strong>Starting pay:</strong>£<strong> </strong>  ______ per hour</p><p><strong>Contact</strong>: Janice ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '4ff2cad1-dd81-4a39-bebb-c63a8dddbf72',
    'listening',
    '0d25ce01-739a-457b-a681-1a42e5db3d4f',
    4,
    'gap_fill',
    '----',
    NULL,
    '35',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Job at Bellfield Garden Centre</h3><p><strong>Job:</strong></p><p><strong>Example</strong></p><p>Job title: garden centre assistant</p><p>working mainly as a cashier</p><p>will also</p><p>• help with plants, and in the shop</p><p>• help customers, starting after a  ______ </p><p><strong>Requirements:</strong></p><p>• an interest in ______ </p><p>• preferably knowing something about plants</p><p><strong>Hours:</strong></p><p>• working hours are flexible</p><p>• 5 days a week, usually including ______  </p><p>•  ______ hours a week</p><p><strong>What''s provided:</strong></p><p>• ______  (about everything they sell, and customer service)</p><p>• ______  (but not laundry)</p><p>• staff discount</p><p>• team ______ </p><p>• financial help including vouchers for ______ </p><p><strong>Starting pay:</strong>£<strong> </strong>  ______ per hour</p><p><strong>Contact</strong>: Janice ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'cb120338-db26-4112-97bd-968b961296c3',
    'listening',
    '0d25ce01-739a-457b-a681-1a42e5db3d4f',
    5,
    'gap_fill',
    '----',
    NULL,
    'training',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Job at Bellfield Garden Centre</h3><p><strong>Job:</strong></p><p><strong>Example</strong></p><p>Job title: garden centre assistant</p><p>working mainly as a cashier</p><p>will also</p><p>• help with plants, and in the shop</p><p>• help customers, starting after a  ______ </p><p><strong>Requirements:</strong></p><p>• an interest in ______ </p><p>• preferably knowing something about plants</p><p><strong>Hours:</strong></p><p>• working hours are flexible</p><p>• 5 days a week, usually including ______  </p><p>•  ______ hours a week</p><p><strong>What''s provided:</strong></p><p>• ______  (about everything they sell, and customer service)</p><p>• ______  (but not laundry)</p><p>• staff discount</p><p>• team ______ </p><p>• financial help including vouchers for ______ </p><p><strong>Starting pay:</strong>£<strong> </strong>  ______ per hour</p><p><strong>Contact</strong>: Janice ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '2336deaa-668a-4028-8a37-3a2653a30f8e',
    'listening',
    '0d25ce01-739a-457b-a681-1a42e5db3d4f',
    6,
    'gap_fill',
    '----',
    NULL,
    'uniform',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Job at Bellfield Garden Centre</h3><p><strong>Job:</strong></p><p><strong>Example</strong></p><p>Job title: garden centre assistant</p><p>working mainly as a cashier</p><p>will also</p><p>• help with plants, and in the shop</p><p>• help customers, starting after a  ______ </p><p><strong>Requirements:</strong></p><p>• an interest in ______ </p><p>• preferably knowing something about plants</p><p><strong>Hours:</strong></p><p>• working hours are flexible</p><p>• 5 days a week, usually including ______  </p><p>•  ______ hours a week</p><p><strong>What''s provided:</strong></p><p>• ______  (about everything they sell, and customer service)</p><p>• ______  (but not laundry)</p><p>• staff discount</p><p>• team ______ </p><p>• financial help including vouchers for ______ </p><p><strong>Starting pay:</strong>£<strong> </strong>  ______ per hour</p><p><strong>Contact</strong>: Janice ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '8cb7bc06-3f69-42ef-ad39-8993d217295f',
    'listening',
    '0d25ce01-739a-457b-a681-1a42e5db3d4f',
    7,
    'gap_fill',
    '----',
    NULL,
    'activities',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Job at Bellfield Garden Centre</h3><p><strong>Job:</strong></p><p><strong>Example</strong></p><p>Job title: garden centre assistant</p><p>working mainly as a cashier</p><p>will also</p><p>• help with plants, and in the shop</p><p>• help customers, starting after a  ______ </p><p><strong>Requirements:</strong></p><p>• an interest in ______ </p><p>• preferably knowing something about plants</p><p><strong>Hours:</strong></p><p>• working hours are flexible</p><p>• 5 days a week, usually including ______  </p><p>•  ______ hours a week</p><p><strong>What''s provided:</strong></p><p>• ______  (about everything they sell, and customer service)</p><p>• ______  (but not laundry)</p><p>• staff discount</p><p>• team ______ </p><p>• financial help including vouchers for ______ </p><p><strong>Starting pay:</strong>£<strong> </strong>  ______ per hour</p><p><strong>Contact</strong>: Janice ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'c14c86a3-ebcd-4ac8-9494-9220dbf4ec98',
    'listening',
    '0d25ce01-739a-457b-a681-1a42e5db3d4f',
    8,
    'gap_fill',
    '----',
    NULL,
    'childcare',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Job at Bellfield Garden Centre</h3><p><strong>Job:</strong></p><p><strong>Example</strong></p><p>Job title: garden centre assistant</p><p>working mainly as a cashier</p><p>will also</p><p>• help with plants, and in the shop</p><p>• help customers, starting after a  ______ </p><p><strong>Requirements:</strong></p><p>• an interest in ______ </p><p>• preferably knowing something about plants</p><p><strong>Hours:</strong></p><p>• working hours are flexible</p><p>• 5 days a week, usually including ______  </p><p>•  ______ hours a week</p><p><strong>What''s provided:</strong></p><p>• ______  (about everything they sell, and customer service)</p><p>• ______  (but not laundry)</p><p>• staff discount</p><p>• team ______ </p><p>• financial help including vouchers for ______ </p><p><strong>Starting pay:</strong>£<strong> </strong>  ______ per hour</p><p><strong>Contact</strong>: Janice ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '21931232-4b0b-4384-8712-ff40ccd4b73c',
    'listening',
    '0d25ce01-739a-457b-a681-1a42e5db3d4f',
    9,
    'gap_fill',
    '----',
    NULL,
    '8.70',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Job at Bellfield Garden Centre</h3><p><strong>Job:</strong></p><p><strong>Example</strong></p><p>Job title: garden centre assistant</p><p>working mainly as a cashier</p><p>will also</p><p>• help with plants, and in the shop</p><p>• help customers, starting after a  ______ </p><p><strong>Requirements:</strong></p><p>• an interest in ______ </p><p>• preferably knowing something about plants</p><p><strong>Hours:</strong></p><p>• working hours are flexible</p><p>• 5 days a week, usually including ______  </p><p>•  ______ hours a week</p><p><strong>What''s provided:</strong></p><p>• ______  (about everything they sell, and customer service)</p><p>• ______  (but not laundry)</p><p>• staff discount</p><p>• team ______ </p><p>• financial help including vouchers for ______ </p><p><strong>Starting pay:</strong>£<strong> </strong>  ______ per hour</p><p><strong>Contact</strong>: Janice ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0034a344-7d2e-4d83-adb1-1cee61afa452',
    'listening',
    '0d25ce01-739a-457b-a681-1a42e5db3d4f',
    10,
    'gap_fill',
    '----',
    NULL,
    'Ballera',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Job at Bellfield Garden Centre</h3><p><strong>Job:</strong></p><p><strong>Example</strong></p><p>Job title: garden centre assistant</p><p>working mainly as a cashier</p><p>will also</p><p>• help with plants, and in the shop</p><p>• help customers, starting after a  ______ </p><p><strong>Requirements:</strong></p><p>• an interest in ______ </p><p>• preferably knowing something about plants</p><p><strong>Hours:</strong></p><p>• working hours are flexible</p><p>• 5 days a week, usually including ______  </p><p>•  ______ hours a week</p><p><strong>What''s provided:</strong></p><p>• ______  (about everything they sell, and customer service)</p><p>• ______  (but not laundry)</p><p>• staff discount</p><p>• team ______ </p><p>• financial help including vouchers for ______ </p><p><strong>Starting pay:</strong>£<strong> </strong>  ______ per hour</p><p><strong>Contact</strong>: Janice ______ </p>"}'::jsonb
);

