-- ============================================
-- Auto-generated seed for: Campsites
-- Source API ID: 993
-- Generated: 2026-02-27T10:14:12.157Z
-- ============================================

-- ============================================
-- Campsites (Section 1)
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '50034e42-5035-4108-9d34-eef1bd1f7332',
    'Campsites',
    'IELTS Listening - Campsites',
    'medium',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.listening_sections (id, test_id, section_number, audio_url, audio_duration_seconds)
VALUES (
    'ae2c3058-cff1-456f-b57a-10fa8c492ba4',
    '50034e42-5035-4108-9d34-eef1bd1f7332',
    1,
    'https://api.otaboyev-prep.uz/uploads/files/file_20260109_142811_cd010148.mp3',
    388
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '7552cfe6-2bac-41d7-9b08-ebe5d918bd2c',
    'listening',
    'ae2c3058-cff1-456f-b57a-10fa8c492ba4',
    1,
    'gap_fill',
    '----',
    NULL,
    'sea',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3><strong>Campsites</strong></h3><p><strong>Westerly Campsite</strong></p><p>Campsite for families with children under 12</p><p>Location: near the __________</p><p>Special attraction for children: the  __________</p><p>A local farmer sells __________</p><p>Campers are allowed to have a  __________</p><p>Cost per night:£ __________ for a family</p><p><br></p><p><strong>Snetton Forest Campsite</strong></p><p>Cost per night: £5 per adult (children free)</p><p>Recommended for people who like __________</p><p>Campers can hire a __________</p><p>Activity organised for children: __________</p><p><br></p><p><strong>Trent Valley Campsite</strong></p><p>Better month for families to go:  __________</p><p>Has an outdoor __________</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '34dc76ab-be56-4143-92b8-2290914c47d9',
    'listening',
    'ae2c3058-cff1-456f-b57a-10fa8c492ba4',
    2,
    'gap_fill',
    '----',
    NULL,
    'animals',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3><strong>Campsites</strong></h3><p><strong>Westerly Campsite</strong></p><p>Campsite for families with children under 12</p><p>Location: near the __________</p><p>Special attraction for children: the  __________</p><p>A local farmer sells __________</p><p>Campers are allowed to have a  __________</p><p>Cost per night:£ __________ for a family</p><p><br></p><p><strong>Snetton Forest Campsite</strong></p><p>Cost per night: £5 per adult (children free)</p><p>Recommended for people who like __________</p><p>Campers can hire a __________</p><p>Activity organised for children: __________</p><p><br></p><p><strong>Trent Valley Campsite</strong></p><p>Better month for families to go:  __________</p><p>Has an outdoor __________</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'aec140b7-8dda-4342-ac19-759675cfc2e3',
    'listening',
    'ae2c3058-cff1-456f-b57a-10fa8c492ba4',
    3,
    'gap_fill',
    '----',
    NULL,
    'eggs',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3><strong>Campsites</strong></h3><p><strong>Westerly Campsite</strong></p><p>Campsite for families with children under 12</p><p>Location: near the __________</p><p>Special attraction for children: the  __________</p><p>A local farmer sells __________</p><p>Campers are allowed to have a  __________</p><p>Cost per night:£ __________ for a family</p><p><br></p><p><strong>Snetton Forest Campsite</strong></p><p>Cost per night: £5 per adult (children free)</p><p>Recommended for people who like __________</p><p>Campers can hire a __________</p><p>Activity organised for children: __________</p><p><br></p><p><strong>Trent Valley Campsite</strong></p><p>Better month for families to go:  __________</p><p>Has an outdoor __________</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '8ad2ea51-2173-46f2-961d-110c20e1dab3',
    'listening',
    'ae2c3058-cff1-456f-b57a-10fa8c492ba4',
    4,
    'gap_fill',
    '----',
    NULL,
    'fire',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3><strong>Campsites</strong></h3><p><strong>Westerly Campsite</strong></p><p>Campsite for families with children under 12</p><p>Location: near the __________</p><p>Special attraction for children: the  __________</p><p>A local farmer sells __________</p><p>Campers are allowed to have a  __________</p><p>Cost per night:£ __________ for a family</p><p><br></p><p><strong>Snetton Forest Campsite</strong></p><p>Cost per night: £5 per adult (children free)</p><p>Recommended for people who like __________</p><p>Campers can hire a __________</p><p>Activity organised for children: __________</p><p><br></p><p><strong>Trent Valley Campsite</strong></p><p>Better month for families to go:  __________</p><p>Has an outdoor __________</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '1a73bb62-2cd6-4de1-a12c-7ace71b84451',
    'listening',
    'ae2c3058-cff1-456f-b57a-10fa8c492ba4',
    5,
    'gap_fill',
    '----',
    NULL,
    '15.75',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3><strong>Campsites</strong></h3><p><strong>Westerly Campsite</strong></p><p>Campsite for families with children under 12</p><p>Location: near the __________</p><p>Special attraction for children: the  __________</p><p>A local farmer sells __________</p><p>Campers are allowed to have a  __________</p><p>Cost per night:£ __________ for a family</p><p><br></p><p><strong>Snetton Forest Campsite</strong></p><p>Cost per night: £5 per adult (children free)</p><p>Recommended for people who like __________</p><p>Campers can hire a __________</p><p>Activity organised for children: __________</p><p><br></p><p><strong>Trent Valley Campsite</strong></p><p>Better month for families to go:  __________</p><p>Has an outdoor __________</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'a8afa54c-2c3a-466b-8a4c-1d361526ceb3',
    'listening',
    'ae2c3058-cff1-456f-b57a-10fa8c492ba4',
    6,
    'gap_fill',
    '----',
    NULL,
    'fishing',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3><strong>Campsites</strong></h3><p><strong>Westerly Campsite</strong></p><p>Campsite for families with children under 12</p><p>Location: near the __________</p><p>Special attraction for children: the  __________</p><p>A local farmer sells __________</p><p>Campers are allowed to have a  __________</p><p>Cost per night:£ __________ for a family</p><p><br></p><p><strong>Snetton Forest Campsite</strong></p><p>Cost per night: £5 per adult (children free)</p><p>Recommended for people who like __________</p><p>Campers can hire a __________</p><p>Activity organised for children: __________</p><p><br></p><p><strong>Trent Valley Campsite</strong></p><p>Better month for families to go:  __________</p><p>Has an outdoor __________</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '03b152ba-bfa6-41b2-b994-9a7418169424',
    'listening',
    'ae2c3058-cff1-456f-b57a-10fa8c492ba4',
    7,
    'gap_fill',
    '----',
    NULL,
    'bike',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3><strong>Campsites</strong></h3><p><strong>Westerly Campsite</strong></p><p>Campsite for families with children under 12</p><p>Location: near the __________</p><p>Special attraction for children: the  __________</p><p>A local farmer sells __________</p><p>Campers are allowed to have a  __________</p><p>Cost per night:£ __________ for a family</p><p><br></p><p><strong>Snetton Forest Campsite</strong></p><p>Cost per night: £5 per adult (children free)</p><p>Recommended for people who like __________</p><p>Campers can hire a __________</p><p>Activity organised for children: __________</p><p><br></p><p><strong>Trent Valley Campsite</strong></p><p>Better month for families to go:  __________</p><p>Has an outdoor __________</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd5d15ad1-74f4-4759-b4f3-b99cf200ef9e',
    'listening',
    'ae2c3058-cff1-456f-b57a-10fa8c492ba4',
    8,
    'gap_fill',
    '----',
    NULL,
    'football',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3><strong>Campsites</strong></h3><p><strong>Westerly Campsite</strong></p><p>Campsite for families with children under 12</p><p>Location: near the __________</p><p>Special attraction for children: the  __________</p><p>A local farmer sells __________</p><p>Campers are allowed to have a  __________</p><p>Cost per night:£ __________ for a family</p><p><br></p><p><strong>Snetton Forest Campsite</strong></p><p>Cost per night: £5 per adult (children free)</p><p>Recommended for people who like __________</p><p>Campers can hire a __________</p><p>Activity organised for children: __________</p><p><br></p><p><strong>Trent Valley Campsite</strong></p><p>Better month for families to go:  __________</p><p>Has an outdoor __________</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '2bd45eb8-fdb4-45e7-9297-05250e3f01f4',
    'listening',
    'ae2c3058-cff1-456f-b57a-10fa8c492ba4',
    9,
    'gap_fill',
    '----',
    NULL,
    'July',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3><strong>Campsites</strong></h3><p><strong>Westerly Campsite</strong></p><p>Campsite for families with children under 12</p><p>Location: near the __________</p><p>Special attraction for children: the  __________</p><p>A local farmer sells __________</p><p>Campers are allowed to have a  __________</p><p>Cost per night:£ __________ for a family</p><p><br></p><p><strong>Snetton Forest Campsite</strong></p><p>Cost per night: £5 per adult (children free)</p><p>Recommended for people who like __________</p><p>Campers can hire a __________</p><p>Activity organised for children: __________</p><p><br></p><p><strong>Trent Valley Campsite</strong></p><p>Better month for families to go:  __________</p><p>Has an outdoor __________</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '393d5b60-d85e-4ad8-a96d-5c9212fb0f1b',
    'listening',
    'ae2c3058-cff1-456f-b57a-10fa8c492ba4',
    10,
    'gap_fill',
    '----',
    NULL,
    'pool',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below. Write <strong>ONE WORD AND/OR A NUMBER</strong> for each answer.</p>","context":"<h3><strong>Campsites</strong></h3><p><strong>Westerly Campsite</strong></p><p>Campsite for families with children under 12</p><p>Location: near the __________</p><p>Special attraction for children: the  __________</p><p>A local farmer sells __________</p><p>Campers are allowed to have a  __________</p><p>Cost per night:£ __________ for a family</p><p><br></p><p><strong>Snetton Forest Campsite</strong></p><p>Cost per night: £5 per adult (children free)</p><p>Recommended for people who like __________</p><p>Campers can hire a __________</p><p>Activity organised for children: __________</p><p><br></p><p><strong>Trent Valley Campsite</strong></p><p>Better month for families to go:  __________</p><p>Has an outdoor __________</p>"}'::jsonb
);

