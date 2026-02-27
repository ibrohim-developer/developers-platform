-- ============================================
-- Auto-generated seed for: Moving Office
-- Source API ID: 289
-- Generated: 2026-02-27T10:14:18.535Z
-- ============================================

-- ============================================
-- Moving Office (Section 2)
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '33b4341e-af93-4a70-bf5f-f9c44108e2bf',
    'Moving Office',
    'IELTS Listening - Moving Office',
    'medium',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.listening_sections (id, test_id, section_number, audio_url, audio_duration_seconds)
VALUES (
    '1af29749-3b1c-477b-a8d5-77732b234190',
    '33b4341e-af93-4a70-bf5f-f9c44108e2bf',
    2,
    'https://api.otaboyev-prep.uz/uploads/files/file_20251127_190815_06b16eb5.m4a',
    400
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'cccd79fd-c185-4188-bdf5-5a93876fb1ef',
    'listening',
    '1af29749-3b1c-477b-a8d5-77732b234190',
    11,
    'mcq_single',
    'what reason does the manager give for moving to a new office building?',
    NULL,
    'C',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer. </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '94a87d67-6cd2-4379-bcf7-db0f345643c9',
    'listening',
    '1af29749-3b1c-477b-a8d5-77732b234190',
    12,
    'mcq_single',
    'What is best about the new office building?',
    NULL,
    'B',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer. </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'c4fcd061-d21e-49d5-b397-cfea4a9023de',
    'listening',
    '1af29749-3b1c-477b-a8d5-77732b234190',
    13,
    'mcq_single',
    'When will the office move take place?',
    NULL,
    'A',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'fb953cd4-af2c-4abe-9574-b813e0000f51',
    'listening',
    '1af29749-3b1c-477b-a8d5-77732b234190',
    14,
    'mcq_single',
    'What information about the new location is already on the company website?',
    NULL,
    'B',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '414805c7-1e96-413d-82dc-b0a284266482',
    'listening',
    '1af29749-3b1c-477b-a8d5-77732b234190',
    15,
    'mcq_single',
    'What practical thing must staff do now?',
    NULL,
    'A',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'ba285dfc-033c-4b26-ace2-f4c878069098',
    'listening',
    '1af29749-3b1c-477b-a8d5-77732b234190',
    16,
    'mcq_single',
    'Staff will need to put folders containing confidential details',
    NULL,
    'B',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '34ef893b-66ff-436c-b75b-e5c257f84a71',
    'listening',
    '1af29749-3b1c-477b-a8d5-77732b234190',
    17,
    'mcq_multiple',
    '----',
    '["keep your head up","do not bend your back","do not lean to one side","use handles","stand with feet apart"]'::jsonb,
    'C,D',
    NULL,
    1,
    '{"instruction":"<p>Choose <strong>TWO</strong> correct answers.</p>","context":"<p>Which <strong>TWO</strong> things do people often forget when lifting heavy things?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'fd2188fc-aafd-42dd-8939-556e285df339',
    'listening',
    '1af29749-3b1c-477b-a8d5-77732b234190',
    18,
    'mcq_multiple',
    '----',
    '["keep your head up","do not bend your back","do not lean to one side","use handles","stand with feet apart"]'::jsonb,
    'C,D',
    NULL,
    1,
    '{"instruction":"<p>Choose <strong>TWO</strong> correct answers.</p>","context":"<p>Which <strong>TWO</strong> things do people often forget when lifting heavy things?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd0fd3d93-ae8f-455c-9e35-8e54a1f7b793',
    'listening',
    '1af29749-3b1c-477b-a8d5-77732b234190',
    19,
    'mcq_multiple',
    '----',
    '["wears face mask","open windows","wear gloves","take frequent breaks","drink plenty of water"]'::jsonb,
    'C,E',
    NULL,
    1,
    '{"instruction":"<p>Choose <strong>TWO</strong> correct answers.</p>","context":"<p>Which <strong>TWO</strong> things should staff do when moving papers?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'ca7aaa39-e4fb-407c-b36c-55c0a6936f99',
    'listening',
    '1af29749-3b1c-477b-a8d5-77732b234190',
    20,
    'mcq_multiple',
    '----',
    '["wears face mask","open windows","wear gloves","take frequent breaks","drink plenty of water"]'::jsonb,
    'C,E',
    NULL,
    1,
    '{"instruction":"<p>Choose <strong>TWO</strong> correct answers.</p>","context":"<p>Which <strong>TWO</strong> things should staff do when moving papers?</p>"}'::jsonb
);

