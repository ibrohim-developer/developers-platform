-- ============================================
-- Auto-generated seed for: International Student Travel Agency - Enquiry Form
-- Source API ID: 874
-- Generated: 2026-02-27T10:14:04.095Z
-- ============================================

-- ============================================
-- International Student Travel Agency - Enquiry Form (Section 1)
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    'f06efcc1-ac97-4957-a27c-fe35e938dcb0',
    'International Student Travel Agency - Enquiry Form',
    'IELTS Listening - International Student Travel Agency - Enquiry Form',
    'easy',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.listening_sections (id, test_id, section_number, audio_url, audio_duration_seconds)
VALUES (
    '33ab719b-d650-4acb-811c-b40f2cea9773',
    'f06efcc1-ac97-4957-a27c-fe35e938dcb0',
    1,
    'https://api.otaboyev-prep.uz/uploads/files/file_20251215_141120_581feaa9.mp3',
    372
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0ec962c4-62e3-4a86-9cd2-2cf987ed5f98',
    'listening',
    '33ab719b-d650-4acb-811c-b40f2cea9773',
    1,
    'gap_fill',
    '----',
    NULL,
    '30th March',
    NULL,
    1,
    '{"instruction":"<p>Complete the form. Write <strong>NO MORE THAN TWO WORDS AND/OR NUMBERS</strong> for each question.</p>","context":"<h3>International Student Travel Agency - Enquiry Form</h3><p>Name: Sarah Brown</p><p>Date of birth: ______ </p><p>Address: 21 Waverley Road, Radstone, RD4 6WV</p><p>Contact tel. no: ______ </p><p><br></p><p><strong>Notes:</strong></p><p>- wants to travel in ______  Europe</p><p>- hopes to travel by ______ </p><p>- interested in working in a ______ </p><p>- recommended to consider an alternative e.g. ______  work</p><p>- advised to buy a European ______  for travelling</p><p>- given a ______  with accommodation details</p><p>- agreed to take out ______  from the Agency</p><p>- told to use an ______  for contacting people</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '2adab682-a57e-4601-9f7e-fa2409f536b8',
    'listening',
    '33ab719b-d650-4acb-811c-b40f2cea9773',
    2,
    'gap_fill',
    '----',
    NULL,
    '0903775115',
    NULL,
    1,
    '{"instruction":"<p>Complete the form. Write <strong>NO MORE THAN TWO WORDS AND/OR NUMBERS</strong> for each question.</p>","context":"<h3>International Student Travel Agency - Enquiry Form</h3><p>Name: Sarah Brown</p><p>Date of birth: ______ </p><p>Address: 21 Waverley Road, Radstone, RD4 6WV</p><p>Contact tel. no: ______ </p><p><br></p><p><strong>Notes:</strong></p><p>- wants to travel in ______  Europe</p><p>- hopes to travel by ______ </p><p>- interested in working in a ______ </p><p>- recommended to consider an alternative e.g. ______  work</p><p>- advised to buy a European ______  for travelling</p><p>- given a ______  with accommodation details</p><p>- agreed to take out ______  from the Agency</p><p>- told to use an ______  for contacting people</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'a78ff254-a0a8-4457-8e68-09dafa6b89b9',
    'listening',
    '33ab719b-d650-4acb-811c-b40f2cea9773',
    3,
    'gap_fill',
    '----',
    NULL,
    'Northern',
    NULL,
    1,
    '{"instruction":"<p>Complete the form. Write <strong>NO MORE THAN TWO WORDS AND/OR NUMBERS</strong> for each question.</p>","context":"<h3>International Student Travel Agency - Enquiry Form</h3><p>Name: Sarah Brown</p><p>Date of birth: ______ </p><p>Address: 21 Waverley Road, Radstone, RD4 6WV</p><p>Contact tel. no: ______ </p><p><br></p><p><strong>Notes:</strong></p><p>- wants to travel in ______  Europe</p><p>- hopes to travel by ______ </p><p>- interested in working in a ______ </p><p>- recommended to consider an alternative e.g. ______  work</p><p>- advised to buy a European ______  for travelling</p><p>- given a ______  with accommodation details</p><p>- agreed to take out ______  from the Agency</p><p>- told to use an ______  for contacting people</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'f7dcbccf-a329-4c27-a0be-ba428797efa9',
    'listening',
    '33ab719b-d650-4acb-811c-b40f2cea9773',
    4,
    'gap_fill',
    '----',
    NULL,
    'train',
    NULL,
    1,
    '{"instruction":"<p>Complete the form. Write <strong>NO MORE THAN TWO WORDS AND/OR NUMBERS</strong> for each question.</p>","context":"<h3>International Student Travel Agency - Enquiry Form</h3><p>Name: Sarah Brown</p><p>Date of birth: ______ </p><p>Address: 21 Waverley Road, Radstone, RD4 6WV</p><p>Contact tel. no: ______ </p><p><br></p><p><strong>Notes:</strong></p><p>- wants to travel in ______  Europe</p><p>- hopes to travel by ______ </p><p>- interested in working in a ______ </p><p>- recommended to consider an alternative e.g. ______  work</p><p>- advised to buy a European ______  for travelling</p><p>- given a ______  with accommodation details</p><p>- agreed to take out ______  from the Agency</p><p>- told to use an ______  for contacting people</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'cbb3a227-814d-4fed-b6a3-a408bc10294a',
    'listening',
    '33ab719b-d650-4acb-811c-b40f2cea9773',
    5,
    'gap_fill',
    '----',
    NULL,
    'hotel',
    NULL,
    1,
    '{"instruction":"<p>Complete the form. Write <strong>NO MORE THAN TWO WORDS AND/OR NUMBERS</strong> for each question.</p>","context":"<h3>International Student Travel Agency - Enquiry Form</h3><p>Name: Sarah Brown</p><p>Date of birth: ______ </p><p>Address: 21 Waverley Road, Radstone, RD4 6WV</p><p>Contact tel. no: ______ </p><p><br></p><p><strong>Notes:</strong></p><p>- wants to travel in ______  Europe</p><p>- hopes to travel by ______ </p><p>- interested in working in a ______ </p><p>- recommended to consider an alternative e.g. ______  work</p><p>- advised to buy a European ______  for travelling</p><p>- given a ______  with accommodation details</p><p>- agreed to take out ______  from the Agency</p><p>- told to use an ______  for contacting people</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '71759cfd-cf1f-48fa-b225-c664461916df',
    'listening',
    '33ab719b-d650-4acb-811c-b40f2cea9773',
    6,
    'gap_fill',
    '----',
    NULL,
    'farm',
    NULL,
    1,
    '{"instruction":"<p>Complete the form. Write <strong>NO MORE THAN TWO WORDS AND/OR NUMBERS</strong> for each question.</p>","context":"<h3>International Student Travel Agency - Enquiry Form</h3><p>Name: Sarah Brown</p><p>Date of birth: ______ </p><p>Address: 21 Waverley Road, Radstone, RD4 6WV</p><p>Contact tel. no: ______ </p><p><br></p><p><strong>Notes:</strong></p><p>- wants to travel in ______  Europe</p><p>- hopes to travel by ______ </p><p>- interested in working in a ______ </p><p>- recommended to consider an alternative e.g. ______  work</p><p>- advised to buy a European ______  for travelling</p><p>- given a ______  with accommodation details</p><p>- agreed to take out ______  from the Agency</p><p>- told to use an ______  for contacting people</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '3119bdb2-c3b8-4fe5-a280-f9f28116a8c3',
    'listening',
    '33ab719b-d650-4acb-811c-b40f2cea9773',
    7,
    'gap_fill',
    '----',
    NULL,
    'pass',
    NULL,
    1,
    '{"instruction":"<p>Complete the form. Write <strong>NO MORE THAN TWO WORDS AND/OR NUMBERS</strong> for each question.</p>","context":"<h3>International Student Travel Agency - Enquiry Form</h3><p>Name: Sarah Brown</p><p>Date of birth: ______ </p><p>Address: 21 Waverley Road, Radstone, RD4 6WV</p><p>Contact tel. no: ______ </p><p><br></p><p><strong>Notes:</strong></p><p>- wants to travel in ______  Europe</p><p>- hopes to travel by ______ </p><p>- interested in working in a ______ </p><p>- recommended to consider an alternative e.g. ______  work</p><p>- advised to buy a European ______  for travelling</p><p>- given a ______  with accommodation details</p><p>- agreed to take out ______  from the Agency</p><p>- told to use an ______  for contacting people</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'ae953256-fb15-4838-a644-6be2621692bb',
    'listening',
    '33ab719b-d650-4acb-811c-b40f2cea9773',
    8,
    'gap_fill',
    '----',
    NULL,
    'booklet',
    NULL,
    1,
    '{"instruction":"<p>Complete the form. Write <strong>NO MORE THAN TWO WORDS AND/OR NUMBERS</strong> for each question.</p>","context":"<h3>International Student Travel Agency - Enquiry Form</h3><p>Name: Sarah Brown</p><p>Date of birth: ______ </p><p>Address: 21 Waverley Road, Radstone, RD4 6WV</p><p>Contact tel. no: ______ </p><p><br></p><p><strong>Notes:</strong></p><p>- wants to travel in ______  Europe</p><p>- hopes to travel by ______ </p><p>- interested in working in a ______ </p><p>- recommended to consider an alternative e.g. ______  work</p><p>- advised to buy a European ______  for travelling</p><p>- given a ______  with accommodation details</p><p>- agreed to take out ______  from the Agency</p><p>- told to use an ______  for contacting people</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'ae465045-fa81-490d-8871-abc9fb5336bf',
    'listening',
    '33ab719b-d650-4acb-811c-b40f2cea9773',
    9,
    'gap_fill',
    '----',
    NULL,
    'insurance',
    NULL,
    1,
    '{"instruction":"<p>Complete the form. Write <strong>NO MORE THAN TWO WORDS AND/OR NUMBERS</strong> for each question.</p>","context":"<h3>International Student Travel Agency - Enquiry Form</h3><p>Name: Sarah Brown</p><p>Date of birth: ______ </p><p>Address: 21 Waverley Road, Radstone, RD4 6WV</p><p>Contact tel. no: ______ </p><p><br></p><p><strong>Notes:</strong></p><p>- wants to travel in ______  Europe</p><p>- hopes to travel by ______ </p><p>- interested in working in a ______ </p><p>- recommended to consider an alternative e.g. ______  work</p><p>- advised to buy a European ______  for travelling</p><p>- given a ______  with accommodation details</p><p>- agreed to take out ______  from the Agency</p><p>- told to use an ______  for contacting people</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '46147638-d1e0-4594-89ee-3c50d73382df',
    'listening',
    '33ab719b-d650-4acb-811c-b40f2cea9773',
    10,
    'gap_fill',
    '----',
    NULL,
    'internet cafe',
    NULL,
    1,
    '{"instruction":"<p>Complete the form. Write <strong>NO MORE THAN TWO WORDS AND/OR NUMBERS</strong> for each question.</p>","context":"<h3>International Student Travel Agency - Enquiry Form</h3><p>Name: Sarah Brown</p><p>Date of birth: ______ </p><p>Address: 21 Waverley Road, Radstone, RD4 6WV</p><p>Contact tel. no: ______ </p><p><br></p><p><strong>Notes:</strong></p><p>- wants to travel in ______  Europe</p><p>- hopes to travel by ______ </p><p>- interested in working in a ______ </p><p>- recommended to consider an alternative e.g. ______  work</p><p>- advised to buy a European ______  for travelling</p><p>- given a ______  with accommodation details</p><p>- agreed to take out ______  from the Agency</p><p>- told to use an ______  for contacting people</p>"}'::jsonb
);

