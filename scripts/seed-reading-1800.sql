-- ============================================
-- Auto-generated seed for: Day 20: Jellyfish – The Dominant Species
-- Source API ID: 1800
-- Generated: 2026-02-26T11:44:05.380Z
-- ============================================

-- ============================================
-- Day 20: Jellyfish – The Dominant Species - Part 2: Jellyfish – The Dominant Species
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '02948d83-58e5-43c4-85f2-ccf454b7392e',
    'Day 20: Jellyfish – The Dominant Species - Part 2: Jellyfish – The Dominant Species',
    'Cambridge IELTS - Jellyfish – The Dominant Species',
    'medium',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    '8558e998-2aa7-4e7c-82d7-736ac58fa17a',
    '02948d83-58e5-43c4-85f2-ccf454b7392e',
    1,
    'Jellyfish – The Dominant Species',
    'A 
Jellyfish have become the curse of beach holidays, permeating every ocean on the globe, thriving in the Arctic and the tropics. In an ever-changing world where other species struggle to endure, jellyfish populations are on the rise. To the untrained eye, these creatures drift aimlessly on the oceans'' currents and appear benign. In addition, they lack sharp claws, piercing teeth or even a brain. Despite this, they are armed with an amazing arsenal of weapons, especially the stinging power of their tentacles. As a result, jellyfish are among the most-feared, least-understood creatures in the seas.

B 
According to Dr Monty Graham, a jellyfish scientist at the University of South Alabama, US, ''Jellyfish are a pretty good group of animals to track coastal ecosystems. When you start to see jellyfish numbers grow, that usually indicates a stressed system.'' While populations appear to be down this year, Dr Graham sees ''a statistically solid increase'' over the longer term. This increase first gained attention in the 1980s when a huge number of jellyfish, Atlantic Ocean natives named Mnemiopsis leidyi, devastated the Black Sea, an ecosystem already weakened by overfishing of anchovies. Scientists believe that this species of jellyfish came in on the bottom of a ship and then rapidly multiplied, feeding on anchovy eggs and the plankton that young fish rely on.

C 
Dense jellyfish aggregations can be a natural feature of healthy ocean ecosystems, but a clear picture is now emerging of more severe and frequent jellyfish outbreaks worldwide. Dr Anthony Richardson, from the University of Queensland, Australia, explains that once jellyfish gain a foothold, if conditions are right they can establish a massive population at the expense of other ocean life. The problem is that parts of the ocean might switch from being dominated by fish to being dominated by jellyfish.

D 
A study done by Richardson and his colleagues explores the causes behind jellyfish infestation, and the need for swift, decisive action to stem jellyfish takeover. Jellyfish outbreaks are linked directly to human actions, including overfishing, the input of fertilizer and sewage into the ocean, and climate change. Overfishing has removed fish from marine ecosystems at astounding rates. According to Richardson, this has made it possible for jellyfish to take their place. ''This is because small fish appear to keep jellyfish in check by predation (on jellyfish when they are very small) and competition (when feeding). So, once we remove fish, jellyfish can proliferate.'' Eutrophication is another human-caused change in the ocean that has likely contributed to jellyfish explosions. Eutrophication is an increase of nitrogen and phosphorus in the ocean, largely caused by fertilizer and waste run-off. This leads to algae blooms, which lower oxygen in the marine ecosystem, creating so-called ''dead zones'', which have been increasing dramatically around the world. According to Richardson, these low-oxygen waters give jellyfish the advantage. ''Fish avoid low-oxygen waters but jellyfish, having lower oxygen demands, not only survive but can thrive in these conditions as there is less predation and competition from fish.''

E 
Furthermore, Richardson and his colleagues speculate that climate change may expand the traditional geographical range of jellyfish. ''As water warms, tropical species are moving towards the poles. Many venomous jellyfish species are tropical and could move into more densely populated subtropical and temperate regions.''

F 
Once jellyfish appear en masse in an ecosystem they can make it very difficult for fish to stage a comeback. By feeding on fish, the jellyfish successfully prevent fish from returning to their normal population numbers, says Richardson. ''One can thus think of two alternate states with each being stable: one dominated by fish and the other by jellyfish. Unfortunately, where there is a jellyfish-dominated state then this does not support the nutritional needs of other fish, marine mammals, and seabirds.'' In other words an ecosystem that loses fish also loses the species that depend on fish for survival. This state has been defined as a ''monoculture of jellyfish'', an apt analogy since the situation shares similarities with other monocultures. When the rich biodiversity of tropical forests is replaced by plantations growing a single species of tree, an area of rich variety becomes a desert in terms of biodiversity, as do ocean ecosystems when jellyfish become the dominant species. One result of large jellyfish populations is the economic effect it has had on the fishing industry. In the Gulf of Mexico, shrimp fishermen are struggling with a jellyfish boom that fills nets, causing them to break and resulting in millions of dollars in losses.

G 
Experts say that a greater understanding of jellyfish, including their ideal water temperature and feeding habits, is necessary to determine with certainty what is causing the recent massive invasion, and to come up with ways to combat it. Due to the difficulty of turning ecosystems around once jellyfish have become dominant, Richardson and his colleagues propose focusing on ''prevention rather than cure''. They recommend a halt to overfishing small fish that are vital to keeping jellyfish in check, reducing the amount of fertilizer and sewage running off into the oceans, and finally, if possible, confronting climate change.',
    848,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'cbfcbbdf-5630-4d4c-b680-f849b5bb926c',
    'reading',
    '8558e998-2aa7-4e7c-82d7-736ac58fa17a',
    14,
    'matching_info',
    'A prediction as to the direction in which the jellyfish population may spread',
    '["","","","","","",""]'::jsonb,
    'E',
    'Section E predicts that warming oceans will cause tropical jellyfish to expand their geographical range toward the poles.',
    1,
    '{"explanation":"Section E predicts that warming oceans will cause tropical jellyfish to expand their geographical range toward the poles.","fromPassage":"As water warms, tropical species are moving towards the poles.","instruction":"<p>The text has nine sections&nbsp;<strong>A-I.</strong> Which section contains the following information? Choose the correct sections<strong>&nbsp;A-I.</strong></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd39717f1-a856-4477-a109-f9de5d910e1f',
    'reading',
    '8558e998-2aa7-4e7c-82d7-736ac58fa17a',
    15,
    'matching_info',
    'A description of some physical characteristics of jellyfish',
    '["","","","","","",""]'::jsonb,
    'A',
    'Section A describes jellyfish characteristics such as lacking a brain and having stinging tentacles.',
    1,
    '{"explanation":"Section A describes jellyfish characteristics such as lacking a brain and having stinging tentacles.","fromPassage":"In addition, they lack sharp claws, piercing teeth or even a brain.","instruction":"<p>The text has nine sections&nbsp;<strong>A-I.</strong> Which section contains the following information? Choose the correct sections<strong>&nbsp;A-I.</strong></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '35b7bf7d-88e3-401c-a58e-e1b1a815fb98',
    'reading',
    '8558e998-2aa7-4e7c-82d7-736ac58fa17a',
    16,
    'matching_info',
    'An account of the consequences of jellyfish as lone survivors',
    '["","","","","","",""]'::jsonb,
    'F',
    'Section F explains what happens when jellyfish become the dominant survivors—fish and other species cannot return.',
    1,
    '{"explanation":"Section F explains what happens when jellyfish become the dominant survivors—fish and other species cannot return.","fromPassage":"Unfortunately, where there is a jellyfish-dominated state then this does not support the nutritional needs of other fish, marine mammals, and seabirds.","instruction":"<p>The text has nine sections&nbsp;<strong>A-I.</strong> Which section contains the following information? Choose the correct sections<strong>&nbsp;A-I.</strong></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '4db53b7a-a696-4a57-988d-1e8b2e3f4f02',
    'reading',
    '8558e998-2aa7-4e7c-82d7-736ac58fa17a',
    17,
    'matching_info',
    'Suggestions on how to avoid further jellyfish invasions',
    '["","","","","","",""]'::jsonb,
    'G',
    'Section G gives recommendations for preventing jellyfish outbreaks.',
    1,
    '{"explanation":"Section G gives recommendations for preventing jellyfish outbreaks.","fromPassage":"They recommend a halt to overfishing small fish that are vital to keeping jellyfish in check, reducing the amount of fertilizer and sewage running off into the oceans, and finally, if possible, confronting climate change.","instruction":"<p>The text has nine sections&nbsp;<strong>A-I.</strong> Which section contains the following information? Choose the correct sections<strong>&nbsp;A-I.</strong></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'a3d9580f-18ce-44b2-b983-68496223b46a',
    'reading',
    '8558e998-2aa7-4e7c-82d7-736ac58fa17a',
    18,
    'mcq_single',
    'Question 18',
    '["They have damaged the tourism industry in some areas.","They have led to a reduction in the oceans'' oxygen levels."," They have contributed to the decline in the Black Sea anchovy population."," They have caused the shrimp business in the Gulf of Mexico to shut down.","They have created financial hardship in the fishing industry."]'::jsonb,
    'C,E',
    'Jellyfish contributed to the collapse of anchovies in the Black Sea.',
    1,
    '{"explanation":"Jellyfish contributed to the collapse of anchovies in the Black Sea.","fromPassage":"This increase first gained attention in the 1980s when a huge number of jellyfish, Atlantic Ocean natives named Mnemiopsis leidyi, devastated the Black Sea, an ecosystem already weakened by overfishing of anchovies.","instruction":"<p>Choose&nbsp;<strong>TWO</strong>&nbsp;correct answers.</p>","context":"<p>The list below gives some effects that jellyfish have had on the world. Which <strong>TWO</strong> of these effects are mentioned by the writer of the text?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '18853926-db1c-4dc2-9007-adcb134b7196',
    'reading',
    '8558e998-2aa7-4e7c-82d7-736ac58fa17a',
    19,
    'mcq_single',
    'Question 19',
    '["They have damaged the tourism industry in some areas.","They have led to a reduction in the oceans'' oxygen levels."," They have contributed to the decline in the Black Sea anchovy population."," They have caused the shrimp business in the Gulf of Mexico to shut down.","They have created financial hardship in the fishing industry."]'::jsonb,
    'C,E',
    'Jellyfish have caused major financial losses for shrimp fishermen.',
    1,
    '{"explanation":"Jellyfish have caused major financial losses for shrimp fishermen.","fromPassage":"In the Gulf of Mexico, shrimp fishermen are struggling with a jellyfish boom that fills nets, causing them to break and resulting in millions of dollars in losses.","instruction":"<p>Choose&nbsp;<strong>TWO</strong>&nbsp;correct answers.</p>","context":"<p>The list below gives some effects that jellyfish have had on the world. Which <strong>TWO</strong> of these effects are mentioned by the writer of the text?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '07d80321-0516-4891-98c1-89cb8288e432',
    'reading',
    '8558e998-2aa7-4e7c-82d7-736ac58fa17a',
    20,
    'mcq_single',
    'Question 20',
    '["A shortage of small fish in the oceans","The dumping of chemicals into the oceans","A decline in biodiversity in the oceans"," More competition among other fish in the oceans","A decrease in seabird populations"]'::jsonb,
    'A,B',
    'A shortage of small fish allows jellyfish to multiply.',
    1,
    '{"explanation":"A shortage of small fish allows jellyfish to multiply.","fromPassage":"So, once we remove fish, jellyfish can proliferate.","instruction":"<p>Choose&nbsp;<strong>TWO</strong>&nbsp;correct answers.</p>","context":"<p>Which <strong>TWO</strong> of the following are possible causes of an increase in jellyfish numbers?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'da4dabeb-69bc-4125-911a-d3b1ae103741',
    'reading',
    '8558e998-2aa7-4e7c-82d7-736ac58fa17a',
    21,
    'mcq_single',
    'Question 21',
    '["A shortage of small fish in the oceans","The dumping of chemicals into the oceans","A decline in biodiversity in the oceans"," More competition among other fish in the oceans","A decrease in seabird populations"]'::jsonb,
    'A,B',
    'Chemical run-off (fertilizer, sewage) leads to eutrophication, helping jellyfish thrive.',
    1,
    '{"explanation":"Chemical run-off (fertilizer, sewage) leads to eutrophication, helping jellyfish thrive.","fromPassage":"According to Richardson, these low-oxygen waters give jellyfish the advantage.","instruction":"<p>Choose&nbsp;<strong>TWO</strong>&nbsp;correct answers.</p>","context":"<p>Which <strong>TWO</strong> of the following are possible causes of an increase in jellyfish numbers?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'e61d01af-70e2-4834-a747-fcd3386d53d8',
    'reading',
    '8558e998-2aa7-4e7c-82d7-736ac58fa17a',
    22,
    'gap_fill',
    'Question 22',
    NULL,
    'eggs',
    'Jellyfish eat fish eggs, preventing fish populations from recovering.',
    1,
    '{"explanation":"Jellyfish eat fish eggs, preventing fish populations from recovering.","fromPassage":"By feeding on fish, the jellyfish successfully prevent fish from returning to their normal population numbers, says Richardson.","instruction":"<p>Complete the sentences below. Write <strong>ONE WORD ONLY </strong>from the passage for each answer.</p>","context":"<p>Some fish in the oceans may be unable to sustain their population as the jellyfish eat their ______ </p><p>The state of jellyfish becoming the main ocean species has been named ______ </p><p>Increasing numbers of jellyfish can damage ______ used for commercial fishing.</p><p>Understanding basic facts about jellyfish, such as the&nbsp; ______ &nbsp;of the ocean which suits them best, may help control their numbers.</p><p>Richardson believes it is better to direct attention to&nbsp; ______ , instead of just trying to solve existing problems.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '7f0dd065-a8f1-4b44-ae91-c0978eb8ef59',
    'reading',
    '8558e998-2aa7-4e7c-82d7-736ac58fa17a',
    23,
    'gap_fill',
    'Question 23',
    NULL,
    'monoculture',
    'The jellyfish-dominant state is called a "monoculture of jellyfish.',
    1,
    '{"explanation":"The jellyfish-dominant state is called a \"monoculture of jellyfish.","fromPassage":"This state has been defined as a ‘monoculture of jellyfish’, an apt analogy since the situation shares similarities with other monocultures.","instruction":"<p>Complete the sentences below. Write <strong>ONE WORD ONLY </strong>from the passage for each answer.</p>","context":"<p>Some fish in the oceans may be unable to sustain their population as the jellyfish eat their ______ </p><p>The state of jellyfish becoming the main ocean species has been named ______ </p><p>Increasing numbers of jellyfish can damage ______ used for commercial fishing.</p><p>Understanding basic facts about jellyfish, such as the&nbsp; ______ &nbsp;of the ocean which suits them best, may help control their numbers.</p><p>Richardson believes it is better to direct attention to&nbsp; ______ , instead of just trying to solve existing problems.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'b3cfcdb1-0a0d-4865-91e3-4fce2ac09a5e',
    'reading',
    '8558e998-2aa7-4e7c-82d7-736ac58fa17a',
    24,
    'gap_fill',
    'Question 24',
    NULL,
    'nets',
    'Jellyfish damage commercial fishing nets.',
    1,
    '{"explanation":"Jellyfish damage commercial fishing nets.","fromPassage":"In the Gulf of Mexico, shrimp fishermen are struggling with a jellyfish boom that fills nets, causing them to break and resulting in millions of dollars in losses.","instruction":"<p>Complete the sentences below. Write <strong>ONE WORD ONLY </strong>from the passage for each answer.</p>","context":"<p>Some fish in the oceans may be unable to sustain their population as the jellyfish eat their ______ </p><p>The state of jellyfish becoming the main ocean species has been named ______ </p><p>Increasing numbers of jellyfish can damage ______ used for commercial fishing.</p><p>Understanding basic facts about jellyfish, such as the&nbsp; ______ &nbsp;of the ocean which suits them best, may help control their numbers.</p><p>Richardson believes it is better to direct attention to&nbsp; ______ , instead of just trying to solve existing problems.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '65fc2076-268a-4bce-a095-2e8034a6566a',
    'reading',
    '8558e998-2aa7-4e7c-82d7-736ac58fa17a',
    25,
    'gap_fill',
    'Question 25',
    NULL,
    'temperature',
    'Understanding ideal temperature ranges for jellyfish may help control them.',
    1,
    '{"explanation":"Understanding ideal temperature ranges for jellyfish may help control them.","fromPassage":"Experts say that a greater understanding of jellyfish, including their ideal water temperature and feeding habits, is necessary to determine with certainty what is causing the recent massive invasion","instruction":"<p>Complete the sentences below. Write <strong>ONE WORD ONLY </strong>from the passage for each answer.</p>","context":"<p>Some fish in the oceans may be unable to sustain their population as the jellyfish eat their ______ </p><p>The state of jellyfish becoming the main ocean species has been named ______ </p><p>Increasing numbers of jellyfish can damage ______ used for commercial fishing.</p><p>Understanding basic facts about jellyfish, such as the&nbsp; ______ &nbsp;of the ocean which suits them best, may help control their numbers.</p><p>Richardson believes it is better to direct attention to&nbsp; ______ , instead of just trying to solve existing problems.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'a286beca-7825-4644-91e9-f5452771f094',
    'reading',
    '8558e998-2aa7-4e7c-82d7-736ac58fa17a',
    26,
    'gap_fill',
    'Question 26',
    NULL,
    'prevention',
    'Richardson says we should focus on prevention rather than cure.',
    1,
    '{"explanation":"Richardson says we should focus on prevention rather than cure.","fromPassage":"Due to the difficulty of turning ecosystems around once jellyfish have become dominant, Richardson and his colleagues propose focusing on ‘prevention rather than cure’.","instruction":"<p>Complete the sentences below. Write <strong>ONE WORD ONLY </strong>from the passage for each answer.</p>","context":"<p>Some fish in the oceans may be unable to sustain their population as the jellyfish eat their ______ </p><p>The state of jellyfish becoming the main ocean species has been named ______ </p><p>Increasing numbers of jellyfish can damage ______ used for commercial fishing.</p><p>Understanding basic facts about jellyfish, such as the&nbsp; ______ &nbsp;of the ocean which suits them best, may help control their numbers.</p><p>Richardson believes it is better to direct attention to&nbsp; ______ , instead of just trying to solve existing problems.</p>"}'::jsonb
);

