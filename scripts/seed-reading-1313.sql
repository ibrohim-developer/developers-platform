-- ============================================
-- Auto-generated seed for: Day 1: Reef Fish Study
-- Source API ID: 1313
-- Generated: 2026-02-26T11:43:20.933Z
-- ============================================

-- ============================================
-- Day 1: Reef Fish Study - Part 1: Reef Fish Study
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    'e02c80b0-6bc0-4008-a56a-2fc0cf254f6d',
    'Day 1: Reef Fish Study - Part 1: Reef Fish Study',
    'Cambridge IELTS - Reef Fish Study',
    'easy',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    'ca58aa42-14bc-4ea7-8191-f20b2247fe9f',
    'e02c80b0-6bc0-4008-a56a-2fc0cf254f6d',
    1,
    'Reef Fish Study',
    'Tom Holmes examines the relationship between size and survival in fish on Australia''s Great Barrier Reef

It is a widely held belief among those who study animals that larger size conveys some form of advantage throughout life. The idea that certain body characteristics may influence a prey''s ability to survive when being attacked by a predator has received considerable attention in the past, and has been applied to a wide range of both animals and habitats. Body size, weight, growth rate, overall condition, sensory development and escape speed have all been linked to survival. Of these, body size has received the most attention from researchers, which has subsequently led to the development of a number of theories on how this characteristic may influence the predator-prey relationship. One of the most popular of these is known as the ''bigger is better'' hypothesis. This theory predicts that larger body size should increase an individual''s ability to escape from a predator due to the characteristics associated with this, such as overall strength and visual development. Bigger is thought to be better, but is this always the case?

Compared with other habitats and ecosystems, not a great deal is known about predator-prey relationships within tropical reef communities. What we do know is largely limited to predator identity and, to some extent, to what these predators eat. But what drives these interactions and how does body size influence the outcome? How would fish populations respond to the removal of certain predators from a reef fish community? It is precisely these questions that have led our research team to Lizard Island, in the northern sector of the Great Barrier Reef. We want to examine the predator-prey relationship during the ''early juvenile'' or larval phase of tropical fish, and determine whether a predator''s choice of prey is influenced by factors such as the prey''s size, weight and swimming speed, as these characteristics vary from individual to individual at the beginning of the juvenile stage.

Most coral reef fish have a life cycle consisting of an open ocean larval phase followed by a juvenile to adult phase near the reef. The transition between the two stages is marked by rapid and dramatic changes in the body of the fish, and a sudden move from the open ocean to coral reef habitats. This point is commonly known as ''settlement''. Not surprisingly, it is also characterised by increased levels of mortality in the first 48 hours following settlement, as individuals are forced to adapt to life not only on the reef but also with a previously unknown set of predators.

However, studying the interactions between predators and prey during this phase is no easy task. On the northern Great Barrier Reef, coral reef fish settlement usually occurs within 2-3 days of a new moon during the warmer summer months. These short windows of opportunity, combined with the difficulties associated with working underwater, transporting fish and adapting them to the laboratory, often make research a daunting task. These obstacles are overcome using a combination of innovative techniques, long working hours and a measure of sheer persistence. We collect the larval fish immediately prior to settlement using purpose-built traps that use artificial light to attract and contain fish of this life stage only. These fish are subsequently transported to an aquarium, along with predatory fish, before being used in a series of aquarium and field-based trials.

According to the ''bigger is better'' hypothesis, being larger at the time of settlement should result in an increased chance of surviving an attack by a predator during the period immediately following settlement. However, our initial research shows that this is not always true. There may be several reasons for this.

Communities of reef-based predators can differ considerably over quite small distances. Species that are abundant in one location may be particularly rare in a similar habitat just 100 metres away. In the same way that different predators prefer different types of prey, so too do they prefer different sizes of prey. This relationship is driven by physical characteristics of predators, such as mouth size, and behavioural differences between different predator species. As a result, the predator community into which a reef fish settles may very well determine which individuals survive.

So why don''t larger individuals survive more often than smaller fish over this period? The answer may well lie in an alternative hypothesis known as ''optimal foraging theory''. According to this theory, being either very large or very small in size should assist prey to escape during a predatory encounter. The theory predicts that a predator should prefer those individuals that provide the greatest energy return. This is generally a trade-off between the potential energy intake from eating a fish and the amount of energy required to catch it. Larger prey provide a higher energy return but smaller prey generally require less energy to catch. This usually results in a preference for medium-sized prey.

At the time of settlement, juvenile reef fish vary in the characteristics that can help them survive a predatory attack. However, these characteristics are not strongly associated with body size. For example, larger individuals are not necessarily faster. This means that they may be easier to catch than smaller prey. If this is the case then, according to the optimal foraging theory, predators should prefer larger prey because of their greater energy return. Consequently, larger prey individuals may be targeted by some predators at the time of settlement. Our research hopes to show that larger size may, in fact, be a distinct disadvantage during certain life stages.',
    926,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0c5edd8a-b0b1-4e4e-98bd-1ac1f149c863',
    'reading',
    'ca58aa42-14bc-4ea7-8191-f20b2247fe9f',
    1,
    'tfng',
    'Research to date has concentrated on the importance of escape speed in surviving an attack by a predator.',
    NULL,
    'FALSE',
    NULL,
    1,
    '{"instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '3592cc84-ada5-4a0a-80fc-ef5d77f5dfd0',
    'reading',
    'ca58aa42-14bc-4ea7-8191-f20b2247fe9f',
    2,
    'tfng',
    'According to the ''bigger is better'' hypothesis, larger animals have better eyesight.',
    NULL,
    'TRUE',
    NULL,
    1,
    '{"instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'cb55edf1-e0fc-4f03-a216-750d290dc783',
    'reading',
    'ca58aa42-14bc-4ea7-8191-f20b2247fe9f',
    3,
    'tfng',
    'Early-juvenile reef fish share similar characteristics.',
    NULL,
    'FALSE',
    NULL,
    1,
    '{"instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'a99a5430-2227-4a21-afc4-e11838f27fbf',
    'reading',
    'ca58aa42-14bc-4ea7-8191-f20b2247fe9f',
    4,
    'tfng',
    'Fully developed reef fish have a slower swimming speed than juveniles.',
    NULL,
    'NOT GIVEN',
    NULL,
    1,
    '{"instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '4ed525bb-868e-4f11-bdd8-3241fac4a28a',
    'reading',
    'ca58aa42-14bc-4ea7-8191-f20b2247fe9f',
    5,
    'summary_completion',
    'Question 5',
    NULL,
    'open ocean',
    NULL,
    1,
    '{"instruction":"<p>Complete the summary below.</p><p>Choose<strong>&nbsp;NO MORE THAN TWO WORDS</strong>&nbsp;from the passage for each answer.</p><p>Write your answers in boxes&nbsp;5-7&nbsp;on your answer sheet.</p>","context":"<h2><strong>Life cycle of fish in the Lizard Island study</strong></h2><p><strong>Phase 1: Larval stage</strong></p><ul><li>takes place in the&nbsp; ______ .</li></ul><p><strong>Phase 2: Juvenile stage</strong></p><ul><li>takes place close to the&nbsp; ______ .</li><li>the move from one habitat to another is called settlement.</li><li><strong> ______ 7</strong>&nbsp;&nbsp;rates are high in the early part of this stage.</li></ul><p><strong>Phase 3: Adult stage</strong></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '6cbb7663-eb0b-4abe-9fbb-32eb4529eba1',
    'reading',
    'ca58aa42-14bc-4ea7-8191-f20b2247fe9f',
    6,
    'summary_completion',
    'Question 6',
    NULL,
    'coral reef',
    NULL,
    1,
    '{"instruction":"<p>Complete the summary below.</p><p>Choose<strong>&nbsp;NO MORE THAN TWO WORDS</strong>&nbsp;from the passage for each answer.</p><p>Write your answers in boxes&nbsp;5-7&nbsp;on your answer sheet.</p>","context":"<h2><strong>Life cycle of fish in the Lizard Island study</strong></h2><p><strong>Phase 1: Larval stage</strong></p><ul><li>takes place in the&nbsp; ______ .</li></ul><p><strong>Phase 2: Juvenile stage</strong></p><ul><li>takes place close to the&nbsp; ______ .</li><li>the move from one habitat to another is called settlement.</li><li><strong> ______ 7</strong>&nbsp;&nbsp;rates are high in the early part of this stage.</li></ul><p><strong>Phase 3: Adult stage</strong></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd661acac-56d1-41af-a144-ba945e93d981',
    'reading',
    'ca58aa42-14bc-4ea7-8191-f20b2247fe9f',
    7,
    'summary_completion',
    'Question 7',
    NULL,
    'mortality',
    NULL,
    1,
    '{"instruction":"<p>Complete the summary below.</p><p>Choose<strong>&nbsp;NO MORE THAN TWO WORDS</strong>&nbsp;from the passage for each answer.</p><p>Write your answers in boxes&nbsp;5-7&nbsp;on your answer sheet.</p>","context":"<h2><strong>Life cycle of fish in the Lizard Island study</strong></h2><p><strong>Phase 1: Larval stage</strong></p><ul><li>takes place in the&nbsp; ______ .</li></ul><p><strong>Phase 2: Juvenile stage</strong></p><ul><li>takes place close to the&nbsp; ______ .</li><li>the move from one habitat to another is called settlement.</li><li><strong> ______ 7</strong>&nbsp;&nbsp;rates are high in the early part of this stage.</li></ul><p><strong>Phase 3: Adult stage</strong></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '4ef21a00-d2f1-44ff-afa6-62e23d3a5fa5',
    'reading',
    'ca58aa42-14bc-4ea7-8191-f20b2247fe9f',
    8,
    'gap_fill',
    'Question 8',
    NULL,
    'new moon',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below.</p><p>Choose&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the passage for each answer.</p><p>Write your answers in boxes&nbsp;8-13&nbsp;on your answer sheet.</p>","context":"<h2><strong>Lizard Island study</strong></h2><p><strong>Aim:</strong></p><ul><li>to study the relationship between predator and prey in juvenile reef fish</li></ul><p><strong>Problems:</strong></p><ol><li>time - change of habitat takes place in summer and is linked to the&nbsp; ______ .</li><li>working conditions</li><li>adaptation - difficult to move and settle fish into the&nbsp; ______ .</li></ol><p><strong>Method:</strong></p><ul><li>larval fish are drawn into a special trap with the aid of&nbsp; ______ .</li><li><strong>______</strong>&nbsp;&nbsp;are also collected.</li><li>both undergo trials.</li></ul><p><strong>Possible reasons why ''bigger'' is not always ''better'':</strong></p><ul><li>the number and type of predatory fish on the reef can vary from place to place</li><li>physical features (e.g.&nbsp;<strong> ______ </strong>&nbsp;) affect which prey a predator can eat.</li><li>optimal foraging theory suggests that the most common choice of prey should be&nbsp; ______ .</li><li>large juvenile fish may swim slowly and so may be targeted more often.</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '9fa22266-0502-4960-88ce-abaab3f3e7df',
    'reading',
    'ca58aa42-14bc-4ea7-8191-f20b2247fe9f',
    9,
    'gap_fill',
    'Question 9',
    NULL,
    'laboratory',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below.</p><p>Choose&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the passage for each answer.</p><p>Write your answers in boxes&nbsp;8-13&nbsp;on your answer sheet.</p>","context":"<h2><strong>Lizard Island study</strong></h2><p><strong>Aim:</strong></p><ul><li>to study the relationship between predator and prey in juvenile reef fish</li></ul><p><strong>Problems:</strong></p><ol><li>time - change of habitat takes place in summer and is linked to the&nbsp; ______ .</li><li>working conditions</li><li>adaptation - difficult to move and settle fish into the&nbsp; ______ .</li></ol><p><strong>Method:</strong></p><ul><li>larval fish are drawn into a special trap with the aid of&nbsp; ______ .</li><li><strong>______</strong>&nbsp;&nbsp;are also collected.</li><li>both undergo trials.</li></ul><p><strong>Possible reasons why ''bigger'' is not always ''better'':</strong></p><ul><li>the number and type of predatory fish on the reef can vary from place to place</li><li>physical features (e.g.&nbsp;<strong> ______ </strong>&nbsp;) affect which prey a predator can eat.</li><li>optimal foraging theory suggests that the most common choice of prey should be&nbsp; ______ .</li><li>large juvenile fish may swim slowly and so may be targeted more often.</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'a6f583a5-d8fc-42aa-aa24-489072ca6e87',
    'reading',
    'ca58aa42-14bc-4ea7-8191-f20b2247fe9f',
    10,
    'gap_fill',
    'Question 10',
    NULL,
    'artificial light',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below.</p><p>Choose&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the passage for each answer.</p><p>Write your answers in boxes&nbsp;8-13&nbsp;on your answer sheet.</p>","context":"<h2><strong>Lizard Island study</strong></h2><p><strong>Aim:</strong></p><ul><li>to study the relationship between predator and prey in juvenile reef fish</li></ul><p><strong>Problems:</strong></p><ol><li>time - change of habitat takes place in summer and is linked to the&nbsp; ______ .</li><li>working conditions</li><li>adaptation - difficult to move and settle fish into the&nbsp; ______ .</li></ol><p><strong>Method:</strong></p><ul><li>larval fish are drawn into a special trap with the aid of&nbsp; ______ .</li><li><strong>______</strong>&nbsp;&nbsp;are also collected.</li><li>both undergo trials.</li></ul><p><strong>Possible reasons why ''bigger'' is not always ''better'':</strong></p><ul><li>the number and type of predatory fish on the reef can vary from place to place</li><li>physical features (e.g.&nbsp;<strong> ______ </strong>&nbsp;) affect which prey a predator can eat.</li><li>optimal foraging theory suggests that the most common choice of prey should be&nbsp; ______ .</li><li>large juvenile fish may swim slowly and so may be targeted more often.</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '77c54da0-84f8-40c8-af78-831d8095bca0',
    'reading',
    'ca58aa42-14bc-4ea7-8191-f20b2247fe9f',
    11,
    'gap_fill',
    'Question 11',
    NULL,
    'predatory fish',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below.</p><p>Choose&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the passage for each answer.</p><p>Write your answers in boxes&nbsp;8-13&nbsp;on your answer sheet.</p>","context":"<h2><strong>Lizard Island study</strong></h2><p><strong>Aim:</strong></p><ul><li>to study the relationship between predator and prey in juvenile reef fish</li></ul><p><strong>Problems:</strong></p><ol><li>time - change of habitat takes place in summer and is linked to the&nbsp; ______ .</li><li>working conditions</li><li>adaptation - difficult to move and settle fish into the&nbsp; ______ .</li></ol><p><strong>Method:</strong></p><ul><li>larval fish are drawn into a special trap with the aid of&nbsp; ______ .</li><li><strong>______</strong>&nbsp;&nbsp;are also collected.</li><li>both undergo trials.</li></ul><p><strong>Possible reasons why ''bigger'' is not always ''better'':</strong></p><ul><li>the number and type of predatory fish on the reef can vary from place to place</li><li>physical features (e.g.&nbsp;<strong> ______ </strong>&nbsp;) affect which prey a predator can eat.</li><li>optimal foraging theory suggests that the most common choice of prey should be&nbsp; ______ .</li><li>large juvenile fish may swim slowly and so may be targeted more often.</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '4a21008b-72f2-4d22-aa1b-0d18d173b140',
    'reading',
    'ca58aa42-14bc-4ea7-8191-f20b2247fe9f',
    12,
    'gap_fill',
    'Question 12',
    NULL,
    'mouth size',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below.</p><p>Choose&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the passage for each answer.</p><p>Write your answers in boxes&nbsp;8-13&nbsp;on your answer sheet.</p>","context":"<h2><strong>Lizard Island study</strong></h2><p><strong>Aim:</strong></p><ul><li>to study the relationship between predator and prey in juvenile reef fish</li></ul><p><strong>Problems:</strong></p><ol><li>time - change of habitat takes place in summer and is linked to the&nbsp; ______ .</li><li>working conditions</li><li>adaptation - difficult to move and settle fish into the&nbsp; ______ .</li></ol><p><strong>Method:</strong></p><ul><li>larval fish are drawn into a special trap with the aid of&nbsp; ______ .</li><li><strong>______</strong>&nbsp;&nbsp;are also collected.</li><li>both undergo trials.</li></ul><p><strong>Possible reasons why ''bigger'' is not always ''better'':</strong></p><ul><li>the number and type of predatory fish on the reef can vary from place to place</li><li>physical features (e.g.&nbsp;<strong> ______ </strong>&nbsp;) affect which prey a predator can eat.</li><li>optimal foraging theory suggests that the most common choice of prey should be&nbsp; ______ .</li><li>large juvenile fish may swim slowly and so may be targeted more often.</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '9a8b9bc6-8d0b-48d0-a153-2940ca702a0e',
    'reading',
    'ca58aa42-14bc-4ea7-8191-f20b2247fe9f',
    13,
    'gap_fill',
    'Question 13',
    NULL,
    'medium-sized',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes below.</p><p>Choose&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the passage for each answer.</p><p>Write your answers in boxes&nbsp;8-13&nbsp;on your answer sheet.</p>","context":"<h2><strong>Lizard Island study</strong></h2><p><strong>Aim:</strong></p><ul><li>to study the relationship between predator and prey in juvenile reef fish</li></ul><p><strong>Problems:</strong></p><ol><li>time - change of habitat takes place in summer and is linked to the&nbsp; ______ .</li><li>working conditions</li><li>adaptation - difficult to move and settle fish into the&nbsp; ______ .</li></ol><p><strong>Method:</strong></p><ul><li>larval fish are drawn into a special trap with the aid of&nbsp; ______ .</li><li><strong>______</strong>&nbsp;&nbsp;are also collected.</li><li>both undergo trials.</li></ul><p><strong>Possible reasons why ''bigger'' is not always ''better'':</strong></p><ul><li>the number and type of predatory fish on the reef can vary from place to place</li><li>physical features (e.g.&nbsp;<strong> ______ </strong>&nbsp;) affect which prey a predator can eat.</li><li>optimal foraging theory suggests that the most common choice of prey should be&nbsp; ______ .</li><li>large juvenile fish may swim slowly and so may be targeted more often.</li></ul>"}'::jsonb
);

