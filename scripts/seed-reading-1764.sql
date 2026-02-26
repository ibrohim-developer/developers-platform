-- ============================================
-- Auto-generated seed for: Day 6: Crossing the Threshold
-- Source API ID: 1764
-- Generated: 2026-02-26T11:43:47.214Z
-- ============================================

-- ============================================
-- Day 6: Crossing the Threshold - Part 3: Crossing the Threshold
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '27c16975-265a-4f08-bffc-05fb5a39f9fa',
    'Day 6: Crossing the Threshold - Part 3: Crossing the Threshold',
    'Cambridge IELTS - Crossing the Threshold',
    'hard',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    '02f90a40-5914-4be7-ba84-c725e7183f47',
    '27c16975-265a-4f08-bffc-05fb5a39f9fa',
    1,
    'Crossing the Threshold',
    'The renovated Auckland Art Gallery in New Zealand unites old and new, creating an irresistible urge to step inside

Architects are finding it very difficult in today’s cultural landscape. The profession faces a three-way threat: a public that apparently doesn’t understand what architects do, developers who couldn’t care less what they do, and overbearing councils micromanaging every single aspect of what they do. According to sources within the architectural profession, the situation is much worse when architects work on municipal buildings, as architects FJMT and Archimedia discovered with their Auckland Gallery makeover, where a vast number of external pressures threatened the project, and with so many bureaucratic difficulties it looked doomed to fail.

The major challenge of the gallery renovation project was that it involved two parts. The first was to restore the heritage building, dating back to 1888, which contained a network of small spaces, refurbished so often it contained 17 different floor heights. The second was to deliver a new extension that would not only double floor and exhibition space but also attract new patrons, a total necessity. While the old building’s circulation was off-putting, so was something intangible yet just as powerful: its atmosphere. For many, Auckland Art Gallery was just an old building that served a limited range of patrons with highbrow interests, missing its chance to engage with new audiences.

A 2003 survey of young people’s impressions of the gallery confirmed this opinion, sounding more like references to an abandoned building. For the survey authors, ‘threshold fear’ – where certain groups are intimidated from entering certain spaces by their off-putting atmosphere – was the institution’s undoing, something no architect wants anything to do with. For those young people Auckland Art Gallery was undemocratic, ‘dusty’ and ‘cold’ – the epitome of threshold fear. Also, 16% of the sample group had no idea where it even was, despite being interviewed on the pavement right outside it. Clearly, the gallery was fatally out of step at a time when New Zealand’s national museum in Wellington was successfully engaging broader audiences with contemporary branding and marketing, interactive displays and temporary events.

The decision to evolve the gallery was actually made in 2000, although it too eight years for building to commence, the architects fought off heritage committees and conservationists trying stop them. The architects were not just dealing with a disillusioned public, but also with precious timber and the parkland which surrounds the building. Pushing the design through the Environment Court, the body which approves renovations of this scale, alone took three years. During this time the budget blew out by several million dollars, the funding dried up, and the new wing had to be completely redesigned. Even after the redesign, the use of kauri timber, with its significance to New Zealand’s Maori people*, stirred up political debate.

In the new building the architects have used kauri to produce a canopy with a curving interior roof supported by tapered. steel columns, also clad in kauri. The canopy represents a signature public face, its curvature filtering light to the forecourt to the west and creating a visual echo of the canopy of pohutukawa trees in Albert Park to the east. The park also has cultural significance to Maori as it was the site of early settlements.

The connection is reinforced by sculptures from Maori artist Arnold Wilson decorating the columns, while fellow artist Bernard Makoare was a consultant, ensuring the gallery emphasised Maori beliefs. Still that didn’t stop the conservationist Stephen King from accusing the architects of ‘throwing’ kauri at a ‘mediocre building’ and of misappropriating the ‘mana’ (spiritual energy) of the precious material (which is almost extinct: harvesting of both petrified and swamp kauri has been likened to a gold rush). However, the kauri that was used here was from the forest floor, and King’s misconceptions sum up the prejudice that surrounded the project.

Objections also came from the Auckland Regional Council, worrying about the extension’s impact on Albert Park, yet the project’s relationship with parkland is one of the most successful outcomes. Impact is not only minimal, but improves the park’s social function. The extension’s enormous glass atrium opens up the building by directing the gaze from street level to the parkland beyond, while inside, the new art space is fronted along the east by a continuous glass wall incorporating the park into the gallery. The glass becomes a ‘screen’ for viewing the outside world and makes the art accessible to those in the park, a far cry from both ‘white cube’ galleries worldwide, the plain boxes where paintings are hung in antiseptic white surroundings. and also the dusty impermeable Auckland Gallery of old.

Another success is the refurbishment of the heritage building, especially the Mackelvie Gallery, in disrepair after its characteristic early twentieth-century Edwardian decoration had been stripped out or walled away in previous renovations. Remarkably the Mackelvie space has been reconstructed from two old photos, although the problem of multiple floor levels was so serious that scaffolding had to be erected at the highest level, with work progressing downwards, the reverse of normal practice. When it was over, a fascinating detail was retained: the lowest level visible under glass embedded in the new floor, the building itself as artwork, while elsewhere columns from the old gallery have been exposed in the walls of the new wing.

In 2008 the gallery averaged just 190,000 visitors annually. After reopening, it had 300,000 in five months. Cynics will chalk that up to novelty of the new, but the fact is the gallery is now an alluring cultural space which is crawling with young people.',
    935,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '7992f56e-8884-419a-8bbe-6288f59bb631',
    'reading',
    '02f90a40-5914-4be7-ba84-c725e7183f47',
    27,
    'mcq_single',
    'Question 27',
    '["Criticism of architects by different groups is unfair.","The architectural profession is generally well respected.","The most difficult projects for architects are public buildings.","Failure to deliver buildings is a result of poor communication."]'::jsonb,
    'C',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct letter, A, B, C or D.</p>","context":"<p>What is the writer’s main point in the first paragraph?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '3520a707-5f31-4d43-809f-50b7cb6069a1',
    'reading',
    '02f90a40-5914-4be7-ba84-c725e7183f47',
    28,
    'mcq_single',
    'Question 28',
    '["the existing building was old and parts of it had fallen down.","there was a high number of floors in the building.","it needed to satisfy the requirements of the existing patrons.","it involved renovating the existing building and adding a new one."]'::jsonb,
    'D',
    NULL,
    1,
    '{"context":"<p>The Auckland Gallery project was particularly difficult because</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'ea3d2b3c-4db8-414f-af2e-c610a0b3e0ed',
    'reading',
    '02f90a40-5914-4be7-ba84-c725e7183f47',
    29,
    'mcq_single',
    'Question 29',
    '["The gallery''s visibility was poor.","The gallery was not reaching out to involve young people.","The entrance to the gallery was not well signposted.","The location of the gallery was difficult to access."]'::jsonb,
    'A',
    NULL,
    1,
    '{"context":"<p>What point is the writer making when he says that 16% of the sample group did not know where the museum was?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '9d8aef16-6da4-4fca-a42d-464e0ae381b2',
    'reading',
    '02f90a40-5914-4be7-ba84-c725e7183f47',
    30,
    'mcq_single',
    'Question 30',
    '["Young people are not interested in galleries.","They did not visit the gallery because of the way it made them feel.","They thought that the gallery buildings were not in use.","The gallery had the reputation of being dirty."]'::jsonb,
    'B',
    NULL,
    1,
    '{"context":"<p>What disturbing information did the architects find out from the survey of young people?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '7c885b7b-3634-445f-9081-1bc206b51eaa',
    'reading',
    '02f90a40-5914-4be7-ba84-c725e7183f47',
    31,
    'mcq_single',
    'Question 31',
    '["satisfy the concerns of conservationists.","protect sacred materials in the Albert Park site.","make sure the gallery respects Maori culture.","ensure that certain sources of kauri were not used."]'::jsonb,
    'C',
    NULL,
    1,
    '{"context":"<p>Maori artists were used on this project to</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'ce60dcd3-d3b0-4c58-a6b8-4717d0f7cb91',
    'reading',
    '02f90a40-5914-4be7-ba84-c725e7183f47',
    32,
    'tfng',
    'Before the renovation, the Auckland Art Gallery was regarded as an elitist institution.',
    NULL,
    'YES',
    NULL,
    1,
    '{"instruction":"<p>Choose&nbsp;<strong>YES</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>NO</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'c3e35b4f-488e-4113-ae4b-c1133296885b',
    'reading',
    '02f90a40-5914-4be7-ba84-c725e7183f47',
    33,
    'tfng',
    'Stephen King’s intervention in the project shows his understanding of the architects’ use of kauri.',
    NULL,
    'NO',
    NULL,
    1,
    '{"instruction":"<p>Choose&nbsp;<strong>YES</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>NO</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '2b69a030-937e-4218-b89f-1ae1e82da343',
    'reading',
    '02f90a40-5914-4be7-ba84-c725e7183f47',
    34,
    'tfng',
    'The way the building interacts with its surroundings is a triumph.',
    NULL,
    'YES',
    NULL,
    1,
    '{"instruction":"<p>Choose&nbsp;<strong>YES</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>NO</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '6313b1d2-c294-4d0c-bebe-ea4dc0e456bc',
    'reading',
    '02f90a40-5914-4be7-ba84-c725e7183f47',
    35,
    'tfng',
    'The glass screen along the east wall was one of the most costly items in the rebuild.',
    NULL,
    'NOT GIVEN',
    NULL,
    1,
    '{"instruction":"<p>Choose&nbsp;<strong>YES</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>NO</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '61372eaf-fd3f-49c3-a878-0029550018c3',
    'reading',
    '02f90a40-5914-4be7-ba84-c725e7183f47',
    36,
    'tfng',
    'The design of the extension to the Auckland Art Gallery is similar to the design of ‘white cube’ galleries in other parts of the world.',
    NULL,
    'NO',
    NULL,
    1,
    '{"instruction":"<p>Choose&nbsp;<strong>YES</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>NO</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '30a4c38c-2ddb-4094-8855-b48814f064b0',
    'reading',
    '02f90a40-5914-4be7-ba84-c725e7183f47',
    37,
    'matching_info',
    'The destruction of Edwardian ornamentation',
    '["resulted in work being done in the opposite direction to that usually followed.","is more than cosmetic and has improved the circulation.","was the clue to rebuilding the Mackelvie Gallery successfully.","has resulted in the building itself becoming a work of art.","means that you should be able to tell whether you are in the old wing or the new one.","was the result of earlier attempts to modernise the building."]'::jsonb,
    'F',
    NULL,
    1,
    '{"instruction":"<p>Complete each sentence with the correct ending. Choose the correct answer and move it into the gap.</p>","context":"<p><strong>A.</strong> resulted in work being done in the opposite direction to that usually followed.</p><p><strong>B.</strong> is more than cosmetic and has improved the circulation.</p><p><strong>C.</strong> was the clue to rebuilding the Mackelvie Gallery successfully.</p><p><strong>D.</strong> has resulted in the building itself becoming a work of art.</p><p><strong>E.</strong> means that you should be able to tell whether you are in the old wing or the new one.</p><p><strong>F.</strong> was the result of earlier attempts to modernise the building.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '1149458e-b872-44ac-8984-fcc27c8b61d7',
    'reading',
    '02f90a40-5914-4be7-ba84-c725e7183f47',
    38,
    'matching_info',
    'It is extraordinary that a limited number of photographs',
    '["resulted in work being done in the opposite direction to that usually followed.","is more than cosmetic and has improved the circulation.","was the clue to rebuilding the Mackelvie Gallery successfully.","has resulted in the building itself becoming a work of art.","means that you should be able to tell whether you are in the old wing or the new one.","was the result of earlier attempts to modernise the building."]'::jsonb,
    'C',
    NULL,
    1,
    '{"instruction":"<p>Complete each sentence with the correct ending. Choose the correct answer and move it into the gap.</p>","context":"<p><strong>A.</strong> resulted in work being done in the opposite direction to that usually followed.</p><p><strong>B.</strong> is more than cosmetic and has improved the circulation.</p><p><strong>C.</strong> was the clue to rebuilding the Mackelvie Gallery successfully.</p><p><strong>D.</strong> has resulted in the building itself becoming a work of art.</p><p><strong>E.</strong> means that you should be able to tell whether you are in the old wing or the new one.</p><p><strong>F.</strong> was the result of earlier attempts to modernise the building.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'ad0b520b-a038-4b31-afaf-fe672c508603',
    'reading',
    '02f90a40-5914-4be7-ba84-c725e7183f47',
    39,
    'matching_info',
    'The problem of having so many floor levels to deal with',
    '["resulted in work being done in the opposite direction to that usually followed.","is more than cosmetic and has improved the circulation.","was the clue to rebuilding the Mackelvie Gallery successfully.","has resulted in the building itself becoming a work of art.","means that you should be able to tell whether you are in the old wing or the new one.","was the result of earlier attempts to modernise the building."]'::jsonb,
    'A',
    NULL,
    1,
    '{"instruction":"<p>Complete each sentence with the correct ending. Choose the correct answer and move it into the gap.</p>","context":"<p><strong>A.</strong> resulted in work being done in the opposite direction to that usually followed.</p><p><strong>B.</strong> is more than cosmetic and has improved the circulation.</p><p><strong>C.</strong> was the clue to rebuilding the Mackelvie Gallery successfully.</p><p><strong>D.</strong> has resulted in the building itself becoming a work of art.</p><p><strong>E.</strong> means that you should be able to tell whether you are in the old wing or the new one.</p><p><strong>F.</strong> was the result of earlier attempts to modernise the building.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '01016185-1b2d-4044-bdec-519216c6f877',
    'reading',
    '02f90a40-5914-4be7-ba84-c725e7183f47',
    40,
    'matching_info',
    'The glass flooring in the Mackelvie Gallery which reveals old features',
    '["resulted in work being done in the opposite direction to that usually followed.","is more than cosmetic and has improved the circulation.","was the clue to rebuilding the Mackelvie Gallery successfully.","has resulted in the building itself becoming a work of art.","means that you should be able to tell whether you are in the old wing or the new one.","was the result of earlier attempts to modernise the building."]'::jsonb,
    'D',
    NULL,
    1,
    '{"instruction":"<p>Complete each sentence with the correct ending. Choose the correct answer and move it into the gap.</p>","context":"<p><strong>A.</strong> resulted in work being done in the opposite direction to that usually followed.</p><p><strong>B.</strong> is more than cosmetic and has improved the circulation.</p><p><strong>C.</strong> was the clue to rebuilding the Mackelvie Gallery successfully.</p><p><strong>D.</strong> has resulted in the building itself becoming a work of art.</p><p><strong>E.</strong> means that you should be able to tell whether you are in the old wing or the new one.</p><p><strong>F.</strong> was the result of earlier attempts to modernise the building.</p>"}'::jsonb
);

