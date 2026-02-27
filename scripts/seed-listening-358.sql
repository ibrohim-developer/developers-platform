-- ============================================
-- Auto-generated seed for: Cricket
-- Source API ID: 358
-- Generated: 2026-02-27T10:14:15.983Z
-- ============================================

-- ============================================
-- Cricket (Section 3)
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '96a8d3b5-031e-41b0-a142-ae869a02909a',
    'Cricket',
    'IELTS Listening - Cricket',
    'medium',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.listening_sections (id, test_id, section_number, audio_url, audio_duration_seconds)
VALUES (
    '90d12789-5246-43fb-bcf8-496d646a4e03',
    '96a8d3b5-031e-41b0-a142-ae869a02909a',
    3,
    'https://api.otaboyev-prep.uz/uploads/files/file_20251130_190936_45114bd5.mp3',
    377
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'df7ccf25-5e5e-450e-a201-a88836686a75',
    'listening',
    '90d12789-5246-43fb-bcf8-496d646a4e03',
    21,
    'mcq_multiple',
    '----',
    '["Women''s cricket is growing in popularity","The regulations have been changed","The number of cricket injuries has been increasing","The equipment has improved recently","The quality of the equipment varies a lot"]'::jsonb,
    'C,D',
    NULL,
    1,
    '{"instruction":"<p>Choose <strong>TWO</strong> correct answers.</p>","context":"<p>For which <strong>TWO</strong> reasons did Alice and David decide to focus on cricket equipment?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'bfc2fce5-32bc-49f8-bb58-97bbbb5837f7',
    'listening',
    '90d12789-5246-43fb-bcf8-496d646a4e03',
    22,
    'mcq_multiple',
    '----',
    '["Women''s cricket is growing in popularity","The regulations have been changed","The number of cricket injuries has been increasing","The equipment has improved recently","The quality of the equipment varies a lot"]'::jsonb,
    'C,D',
    NULL,
    1,
    '{"instruction":"<p>Choose <strong>TWO</strong> correct answers.</p>","context":"<p>For which <strong>TWO</strong> reasons did Alice and David decide to focus on cricket equipment?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'a3717c34-7f2e-4244-91e5-5bf583fe4391',
    'listening',
    '90d12789-5246-43fb-bcf8-496d646a4e03',
    23,
    'mcq_multiple',
    '----',
    '["They are so expensive to make","They differ depending on what they are used for","They are made in so many different locations","They have to be made of natural materials","They require such a high standard of care"]'::jsonb,
    'A,B',
    NULL,
    1,
    '{"instruction":"<p>Choose <strong>TWO</strong> correct answer.</p>","context":"<p>For which <strong>TWO</strong> things surprised Alice and David about professional cricket bats?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '418d001a-f8f7-4ee0-b715-1c92438529d9',
    'listening',
    '90d12789-5246-43fb-bcf8-496d646a4e03',
    24,
    'mcq_multiple',
    '----',
    '["They are so expensive to make","They differ depending on what they are used for","They are made in so many different locations","They have to be made of natural materials","They require such a high standard of care"]'::jsonb,
    'A,B',
    NULL,
    1,
    '{"instruction":"<p>Choose <strong>TWO</strong> correct answer.</p>","context":"<p>For which <strong>TWO</strong> things surprised Alice and David about professional cricket bats?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '504feb6a-7fda-4771-92ec-92f5a600501a',
    'listening',
    '90d12789-5246-43fb-bcf8-496d646a4e03',
    25,
    'matching_info',
    '----',
    '["Get the audience to try out the equipment","Focus on the materials used","Include some photographs","Make the section shorter","Ask the audience for their opinion","Change the order of the information","Show how the equipment is used","Leave the section unchanged"]'::jsonb,
    'D',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct letter for each question.</p>","context":"<p>What decision do the students take for each of the following sections of their presentation?</p><p><br></p><p>Historical background   ______ </p><p>Bat design    ______ </p><p>Ball design    ______ </p><p>Helmet design    ______ </p><p>Protective gear    ______ </p><p>Advertising      ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'ff7a1094-726f-4a4d-be50-60e252cea012',
    'listening',
    '90d12789-5246-43fb-bcf8-496d646a4e03',
    26,
    'matching_info',
    '----',
    '["Get the audience to try out the equipment","Focus on the materials used","Include some photographs","Make the section shorter","Ask the audience for their opinion","Change the order of the information","Show how the equipment is used","Leave the section unchanged"]'::jsonb,
    'C',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct letter for each question.</p>","context":"<p>What decision do the students take for each of the following sections of their presentation?</p><p><br></p><p>Historical background   ______ </p><p>Bat design    ______ </p><p>Ball design    ______ </p><p>Helmet design    ______ </p><p>Protective gear    ______ </p><p>Advertising      ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '3d63516e-9e9b-4110-86ee-65650d6ad100',
    'listening',
    '90d12789-5246-43fb-bcf8-496d646a4e03',
    27,
    'matching_info',
    '----',
    '["Get the audience to try out the equipment","Focus on the materials used","Include some photographs","Make the section shorter","Ask the audience for their opinion","Change the order of the information","Show how the equipment is used","Leave the section unchanged"]'::jsonb,
    'G',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct letter for each question.</p>","context":"<p>What decision do the students take for each of the following sections of their presentation?</p><p><br></p><p>Historical background   ______ </p><p>Bat design    ______ </p><p>Ball design    ______ </p><p>Helmet design    ______ </p><p>Protective gear    ______ </p><p>Advertising      ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '02008029-f351-426b-a88c-034dba16e7a6',
    'listening',
    '90d12789-5246-43fb-bcf8-496d646a4e03',
    28,
    'matching_info',
    '----',
    '["Get the audience to try out the equipment","Focus on the materials used","Include some photographs","Make the section shorter","Ask the audience for their opinion","Change the order of the information","Show how the equipment is used","Leave the section unchanged"]'::jsonb,
    'B',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct letter for each question.</p>","context":"<p>What decision do the students take for each of the following sections of their presentation?</p><p><br></p><p>Historical background   ______ </p><p>Bat design    ______ </p><p>Ball design    ______ </p><p>Helmet design    ______ </p><p>Protective gear    ______ </p><p>Advertising      ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '82e3288d-d08a-42ea-bbf2-867fe09342b2',
    'listening',
    '90d12789-5246-43fb-bcf8-496d646a4e03',
    29,
    'matching_info',
    '----',
    '["Get the audience to try out the equipment","Focus on the materials used","Include some photographs","Make the section shorter","Ask the audience for their opinion","Change the order of the information","Show how the equipment is used","Leave the section unchanged"]'::jsonb,
    'H',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct letter for each question.</p>","context":"<p>What decision do the students take for each of the following sections of their presentation?</p><p><br></p><p>Historical background   ______ </p><p>Bat design    ______ </p><p>Ball design    ______ </p><p>Helmet design    ______ </p><p>Protective gear    ______ </p><p>Advertising      ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0324e8ad-8798-4b3f-8f5a-535cd6635023',
    'listening',
    '90d12789-5246-43fb-bcf8-496d646a4e03',
    30,
    'matching_info',
    '----',
    '["Get the audience to try out the equipment","Focus on the materials used","Include some photographs","Make the section shorter","Ask the audience for their opinion","Change the order of the information","Show how the equipment is used","Leave the section unchanged"]'::jsonb,
    'E',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct letter for each question.</p>","context":"<p>What decision do the students take for each of the following sections of their presentation?</p><p><br></p><p>Historical background   ______ </p><p>Bat design    ______ </p><p>Ball design    ______ </p><p>Helmet design    ______ </p><p>Protective gear    ______ </p><p>Advertising      ______ </p>"}'::jsonb
);

