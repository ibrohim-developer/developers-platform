-- ============================================
-- Auto-generated seed for: Wedding arrangements - Clarence House Hotel
-- Source API ID: 867
-- Generated: 2026-02-27T10:14:11.021Z
-- ============================================

-- ============================================
-- Wedding arrangements - Clarence House Hotel (Section 1)
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '4cb08f94-576f-4231-ae5f-4cad308ff83a',
    'Wedding arrangements - Clarence House Hotel',
    'IELTS Listening - Wedding arrangements - Clarence House Hotel',
    'easy',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.listening_sections (id, test_id, section_number, audio_url, audio_duration_seconds)
VALUES (
    '3aeb38e7-e44e-418f-a870-21c30ccbcd5e',
    '4cb08f94-576f-4231-ae5f-4cad308ff83a',
    1,
    'https://api.otaboyev-prep.uz/uploads/files/file_20251215_113723_e8256cd0.mp3',
    407
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '38a58c27-2102-4fbf-b71a-298f4315dbff',
    'listening',
    '3aeb38e7-e44e-418f-a870-21c30ccbcd5e',
    1,
    'gap_fill',
    '----',
    NULL,
    'city',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Wedding arrangements - Clarence House Hotel</h3><p>Available date: 1st June</p><p><strong>The Oxford Suite has:</strong></p><p>• a dining room with a good view of the ______ </p><p>• a private garden for ______  and for the wedding ceremony</p><p>• an area suitable for dancing</p><p><strong>The wedding package includes:</strong></p><p>• use of the Oxford Suite</p><p>• a three-course meal</p><p>• room arranged with ______ tables</p><p>• table ______ included</p><p>• white tablecloths and chairs</p><p>• personalised printed ______ </p><p>• a late-evening buffet with a choice of ______  and hot drinks</p><p><strong>Music: hotel will organise a band (not included in price)</strong></p><p>• Total cost of package: £ ______ </p><p>• Can also recommend a ______  supplier (new company)</p><p>• Wedding coordinator Sarah ______ </p><p>• Date arranged for visit: ______  at 11.30 a.m</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '6ef7c643-5f93-422c-a7b2-54aa9a45dd4e',
    'listening',
    '3aeb38e7-e44e-418f-a870-21c30ccbcd5e',
    2,
    'gap_fill',
    '----',
    NULL,
    'photos',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Wedding arrangements - Clarence House Hotel</h3><p>Available date: 1st June</p><p><strong>The Oxford Suite has:</strong></p><p>• a dining room with a good view of the ______ </p><p>• a private garden for ______  and for the wedding ceremony</p><p>• an area suitable for dancing</p><p><strong>The wedding package includes:</strong></p><p>• use of the Oxford Suite</p><p>• a three-course meal</p><p>• room arranged with ______ tables</p><p>• table ______ included</p><p>• white tablecloths and chairs</p><p>• personalised printed ______ </p><p>• a late-evening buffet with a choice of ______  and hot drinks</p><p><strong>Music: hotel will organise a band (not included in price)</strong></p><p>• Total cost of package: £ ______ </p><p>• Can also recommend a ______  supplier (new company)</p><p>• Wedding coordinator Sarah ______ </p><p>• Date arranged for visit: ______  at 11.30 a.m</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'b8a3b95f-f654-4bbe-827c-97e0a6961c45',
    'listening',
    '3aeb38e7-e44e-418f-a870-21c30ccbcd5e',
    3,
    'gap_fill',
    '----',
    NULL,
    'round',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Wedding arrangements - Clarence House Hotel</h3><p>Available date: 1st June</p><p><strong>The Oxford Suite has:</strong></p><p>• a dining room with a good view of the ______ </p><p>• a private garden for ______  and for the wedding ceremony</p><p>• an area suitable for dancing</p><p><strong>The wedding package includes:</strong></p><p>• use of the Oxford Suite</p><p>• a three-course meal</p><p>• room arranged with ______ tables</p><p>• table ______ included</p><p>• white tablecloths and chairs</p><p>• personalised printed ______ </p><p>• a late-evening buffet with a choice of ______  and hot drinks</p><p><strong>Music: hotel will organise a band (not included in price)</strong></p><p>• Total cost of package: £ ______ </p><p>• Can also recommend a ______  supplier (new company)</p><p>• Wedding coordinator Sarah ______ </p><p>• Date arranged for visit: ______  at 11.30 a.m</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0f196ab2-d2a0-47fd-9655-167cccf0589f',
    'listening',
    '3aeb38e7-e44e-418f-a870-21c30ccbcd5e',
    4,
    'gap_fill',
    '----',
    NULL,
    'decorations',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Wedding arrangements - Clarence House Hotel</h3><p>Available date: 1st June</p><p><strong>The Oxford Suite has:</strong></p><p>• a dining room with a good view of the ______ </p><p>• a private garden for ______  and for the wedding ceremony</p><p>• an area suitable for dancing</p><p><strong>The wedding package includes:</strong></p><p>• use of the Oxford Suite</p><p>• a three-course meal</p><p>• room arranged with ______ tables</p><p>• table ______ included</p><p>• white tablecloths and chairs</p><p>• personalised printed ______ </p><p>• a late-evening buffet with a choice of ______  and hot drinks</p><p><strong>Music: hotel will organise a band (not included in price)</strong></p><p>• Total cost of package: £ ______ </p><p>• Can also recommend a ______  supplier (new company)</p><p>• Wedding coordinator Sarah ______ </p><p>• Date arranged for visit: ______  at 11.30 a.m</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '77c2eb5a-2054-44d7-b388-95722c22fa0d',
    'listening',
    '3aeb38e7-e44e-418f-a870-21c30ccbcd5e',
    5,
    'gap_fill',
    '----',
    NULL,
    'menu',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Wedding arrangements - Clarence House Hotel</h3><p>Available date: 1st June</p><p><strong>The Oxford Suite has:</strong></p><p>• a dining room with a good view of the ______ </p><p>• a private garden for ______  and for the wedding ceremony</p><p>• an area suitable for dancing</p><p><strong>The wedding package includes:</strong></p><p>• use of the Oxford Suite</p><p>• a three-course meal</p><p>• room arranged with ______ tables</p><p>• table ______ included</p><p>• white tablecloths and chairs</p><p>• personalised printed ______ </p><p>• a late-evening buffet with a choice of ______  and hot drinks</p><p><strong>Music: hotel will organise a band (not included in price)</strong></p><p>• Total cost of package: £ ______ </p><p>• Can also recommend a ______  supplier (new company)</p><p>• Wedding coordinator Sarah ______ </p><p>• Date arranged for visit: ______  at 11.30 a.m</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '9d0a0eaf-d7c2-435a-900e-8cac9566ceae',
    'listening',
    '3aeb38e7-e44e-418f-a870-21c30ccbcd5e',
    6,
    'gap_fill',
    '----',
    NULL,
    'sandwiches',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Wedding arrangements - Clarence House Hotel</h3><p>Available date: 1st June</p><p><strong>The Oxford Suite has:</strong></p><p>• a dining room with a good view of the ______ </p><p>• a private garden for ______  and for the wedding ceremony</p><p>• an area suitable for dancing</p><p><strong>The wedding package includes:</strong></p><p>• use of the Oxford Suite</p><p>• a three-course meal</p><p>• room arranged with ______ tables</p><p>• table ______ included</p><p>• white tablecloths and chairs</p><p>• personalised printed ______ </p><p>• a late-evening buffet with a choice of ______  and hot drinks</p><p><strong>Music: hotel will organise a band (not included in price)</strong></p><p>• Total cost of package: £ ______ </p><p>• Can also recommend a ______  supplier (new company)</p><p>• Wedding coordinator Sarah ______ </p><p>• Date arranged for visit: ______  at 11.30 a.m</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '2ef9af37-fb71-4353-b702-bca60b0e62f6',
    'listening',
    '3aeb38e7-e44e-418f-a870-21c30ccbcd5e',
    7,
    'gap_fill',
    '----',
    NULL,
    '5,995',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Wedding arrangements - Clarence House Hotel</h3><p>Available date: 1st June</p><p><strong>The Oxford Suite has:</strong></p><p>• a dining room with a good view of the ______ </p><p>• a private garden for ______  and for the wedding ceremony</p><p>• an area suitable for dancing</p><p><strong>The wedding package includes:</strong></p><p>• use of the Oxford Suite</p><p>• a three-course meal</p><p>• room arranged with ______ tables</p><p>• table ______ included</p><p>• white tablecloths and chairs</p><p>• personalised printed ______ </p><p>• a late-evening buffet with a choice of ______  and hot drinks</p><p><strong>Music: hotel will organise a band (not included in price)</strong></p><p>• Total cost of package: £ ______ </p><p>• Can also recommend a ______  supplier (new company)</p><p>• Wedding coordinator Sarah ______ </p><p>• Date arranged for visit: ______  at 11.30 a.m</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'a211c85c-a158-4ec6-a991-1251d8b468de',
    'listening',
    '3aeb38e7-e44e-418f-a870-21c30ccbcd5e',
    8,
    'gap_fill',
    '----',
    NULL,
    'cake',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Wedding arrangements - Clarence House Hotel</h3><p>Available date: 1st June</p><p><strong>The Oxford Suite has:</strong></p><p>• a dining room with a good view of the ______ </p><p>• a private garden for ______  and for the wedding ceremony</p><p>• an area suitable for dancing</p><p><strong>The wedding package includes:</strong></p><p>• use of the Oxford Suite</p><p>• a three-course meal</p><p>• room arranged with ______ tables</p><p>• table ______ included</p><p>• white tablecloths and chairs</p><p>• personalised printed ______ </p><p>• a late-evening buffet with a choice of ______  and hot drinks</p><p><strong>Music: hotel will organise a band (not included in price)</strong></p><p>• Total cost of package: £ ______ </p><p>• Can also recommend a ______  supplier (new company)</p><p>• Wedding coordinator Sarah ______ </p><p>• Date arranged for visit: ______  at 11.30 a.m</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0d4de8a1-11c4-454b-9854-6a2eee9ab756',
    'listening',
    '3aeb38e7-e44e-418f-a870-21c30ccbcd5e',
    9,
    'gap_fill',
    '----',
    NULL,
    'Izard',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Wedding arrangements - Clarence House Hotel</h3><p>Available date: 1st June</p><p><strong>The Oxford Suite has:</strong></p><p>• a dining room with a good view of the ______ </p><p>• a private garden for ______  and for the wedding ceremony</p><p>• an area suitable for dancing</p><p><strong>The wedding package includes:</strong></p><p>• use of the Oxford Suite</p><p>• a three-course meal</p><p>• room arranged with ______ tables</p><p>• table ______ included</p><p>• white tablecloths and chairs</p><p>• personalised printed ______ </p><p>• a late-evening buffet with a choice of ______  and hot drinks</p><p><strong>Music: hotel will organise a band (not included in price)</strong></p><p>• Total cost of package: £ ______ </p><p>• Can also recommend a ______  supplier (new company)</p><p>• Wedding coordinator Sarah ______ </p><p>• Date arranged for visit: ______  at 11.30 a.m</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'e805e499-c8f3-4be5-81a8-6c6075bce8d8',
    'listening',
    '3aeb38e7-e44e-418f-a870-21c30ccbcd5e',
    10,
    'gap_fill',
    '----',
    NULL,
    '15th October',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3>Wedding arrangements - Clarence House Hotel</h3><p>Available date: 1st June</p><p><strong>The Oxford Suite has:</strong></p><p>• a dining room with a good view of the ______ </p><p>• a private garden for ______  and for the wedding ceremony</p><p>• an area suitable for dancing</p><p><strong>The wedding package includes:</strong></p><p>• use of the Oxford Suite</p><p>• a three-course meal</p><p>• room arranged with ______ tables</p><p>• table ______ included</p><p>• white tablecloths and chairs</p><p>• personalised printed ______ </p><p>• a late-evening buffet with a choice of ______  and hot drinks</p><p><strong>Music: hotel will organise a band (not included in price)</strong></p><p>• Total cost of package: £ ______ </p><p>• Can also recommend a ______  supplier (new company)</p><p>• Wedding coordinator Sarah ______ </p><p>• Date arranged for visit: ______  at 11.30 a.m</p>"}'::jsonb
);

