-- ============================================
-- Auto-generated seed for: Day 15: Living Dunes
-- Source API ID: 1804
-- Generated: 2026-02-26T11:44:14.782Z
-- ============================================

-- ============================================
-- Day 15: Living Dunes - Part 3: Living Dunes
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '4106bc16-78e1-4f26-bc7a-d78933baa069',
    'Day 15: Living Dunes - Part 3: Living Dunes',
    'Cambridge IELTS - Living Dunes',
    'hard',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    '84284f92-962a-4bf5-bd38-545f311bc906',
    '4106bc16-78e1-4f26-bc7a-d78933baa069',
    1,
    'Living Dunes',
    '[HEADING: A]
Armies of giant sand dunes are advancing across the world''s deserts, engulfing anything that crosses their path. They are tens of metres tall and hundreds of metres long. Fortunately, they aren''t going very fast. Even the smallest, speediest dunes only travel about 100 metres over the course of a year, while the bigger ones, which weigh something in the order of 10,000 tonnes, barely move one metre in that time. However, their insidious creep can have serious consequences if there is an oil installation or a railway line in their path.
 
[HEADING: B]
About 47% of the world''s land mass, including Antarctica, most of Australia and large areas of Africa, is classified as arid or semi-arid desert. Only around 20% of that is sand-covered, however, and over half of that is classified as ''linear'' sand dunes. These form in a long curving wave, as a result of wind blowing strongly from several quarters, flipping them from side to side. Although linear dunes are static, sand blowing off them can cause problems for desert villages, burying crops and buildings.
 
[HEADING: C]
Moving dunes make up just a small percentage of the rest, but they are of the most interest to scientists. They are known as ''barchans'': heavy, crescent-shaped sand piles with a ridged crest and two elongated arms, one curving away to either side. ''Barchan dunes only tend to form where you have one-directional winds on the edge of sandy deserts near coastal areas,'' says Giles Wiggs, a geomorphologist at Oxford University, who has been studying the formation and movement of sand dunes for more than a decade.
 
[HEADING: D]
But even with strong winds, how can entire barchans move while retaining their form? That question was first answered in the mid-20th century by British explorer Ralph Alger Bagnold, and his answer hinges on the fact that dunes aren''t solid, but granular. Bagnold figured out how barchan dunes are able to move grain by grain. Imagine a single grain of sand being blown up the back of a dune by the wind and deposited on the top. More grains follow the same pattern, until the accumulated weight of piled-up sand finally pushes the top down the dune face. The grain tumbles, then stops on the face until subsequent mini-avalanches bury it. Eventually, it reappears at the back of the dune, ready to repeat the process. As this happens to every grain of sand in the dune, the whole thing creeps in the direction of the prevailing wind.
 
[HEADING: E]
The relationship between the wind and barchan dunes is complex. As a dune grows, it modifies the speed and course of the wind, which in turn alters how that dune and its neighbours evolve. ''Interestingly, the dune can regulate its own shape, and maintain it as it moves,'' says Dr Stéphane Douady, a physicist at Ecole Normale Supérieure (ENS) in France. ''Even when two dunes collide, they quickly take on their distinctive shapes again. It''s like a living organism.''
 
[HEADING: F]
Douady and his colleagues have also been studying an even odder phenomenon than moving dunes: some barchans actually sing. Local legends attributed the sounds to dangerous spirits which were trying to trap unwary travellers. Douady is more pragmatic. ''It''s a strong booming noise with a low frequency,'' he explains, making a noise like a foghorn to demonstrate. ''It can last for a long time - up to several minutes. It''s a very loud sound and you don''t understand where it''s coming from when you first hear it.'' There are about 50 dunes distributed across 35 deserts round the world that are known to sing. Douady says the sound is caused by the way sand avalanches down the faces of particular dunes. Rather than tumbling randomly, the sand grains flow in synchrony and set each other vibrating like the membrane on a gigantic loudspeaker. The synchronisation causes the air to move in and out between the grains, creating a powerful sound wave.
 
[HEADING: G]
What really surprised the scientists, however, was that they were able to take samples of the singing sand back to France and replicate the sound at ENS, proving that it''s the sand, not the dune shape, that causes the sound. Their studies show the grains are a uniform shape, well-rounded from years of striking each other, and that the variations in size affect the tone. Crucially, the grains are coated with a special veneer, which Douady calls ''desert glaze'', made from a precise combination of minerals from surrounding rocks including iron, aluminium, manganese, silicon and calcium. The team found that after a month or so, the veneer wore off and the grains lost their ''voice''. ''We managed to reproduce the desert glaze and then the grains started to sing again,'' says Douady. ''We tried putting the coating onto different grains, but they weren''t round enough and it didn''t work. But some American colleagues made some artificial grains and managed to make them sing, after covering them in desert glaze.'' Douady has now made recordings of dunesong from all over the world which are to be made into a CD.',
    853,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'bb8b05d0-3d4e-446a-9402-5db0e76e6325',
    'reading',
    '84284f92-962a-4bf5-bd38-545f311bc906',
    27,
    'matching_headings',
    'Question 27',
    '["Moving rapidly across the desert","Recreating the process in a laboratory","Strange music created by human movement","A potential threat to industry and communications","Dunes coming together and re-forming","Needing a specific combination of conditions","A continuous cycle","The commonest type of dune","Old superstitions demystified"]'::jsonb,
    'D',
    'Paragraph A explains that moving dunes can slowly but seriously damage structures like oil installations and railways, which are forms of infrastructure and communication.',
    1,
    '{"explanation":"Paragraph A explains that moving dunes can slowly but seriously damage structures like oil installations and railways, which are forms of infrastructure and communication.","fromPassage":"However, their insidious creep can have serious consequences if there is an oil installation or a railway line in their path.","instruction":"<p>The text has&nbsp;seven&nbsp;sections. Choose the correct heading for each section and move it into the gap.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'ca9bdddf-ed8c-4995-9b7b-89c7c3b00e61',
    'reading',
    '84284f92-962a-4bf5-bd38-545f311bc906',
    28,
    'matching_headings',
    'Question 28',
    '["Moving rapidly across the desert","Recreating the process in a laboratory","Strange music created by human movement","A potential threat to industry and communications","Dunes coming together and re-forming","Needing a specific combination of conditions","A continuous cycle","The commonest type of dune","Old superstitions demystified"]'::jsonb,
    'H',
    'This paragraph describes the types of dunes and states that more than half of sand-covered desert is made of linear dunes—the most common type.',
    1,
    '{"explanation":"This paragraph describes the types of dunes and states that more than half of sand-covered desert is made of linear dunes—the most common type.","fromPassage":"Only around 20% of that is sand-covered, however, and over half of that is classified as ‘linear’ sand dunes.","instruction":"<p>The text has&nbsp;seven&nbsp;sections. Choose the correct heading for each section and move it into the gap.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '3fc7b1c9-2785-4c3b-9dae-f7fe0198ac88',
    'reading',
    '84284f92-962a-4bf5-bd38-545f311bc906',
    29,
    'matching_headings',
    'Question 29',
    '["Moving rapidly across the desert","Recreating the process in a laboratory","Strange music created by human movement","A potential threat to industry and communications","Dunes coming together and re-forming","Needing a specific combination of conditions","A continuous cycle","The commonest type of dune","Old superstitions demystified"]'::jsonb,
    'F',
    'Paragraph C explains that barchan dunes only form under very specific conditions—one-directional winds and coastal sandy deserts.',
    1,
    '{"explanation":"Paragraph C explains that barchan dunes only form under very specific conditions—one-directional winds and coastal sandy deserts.","fromPassage":"Barchan dunes only tend to form where you have one-directional winds on the edge of sandy deserts near coastal areas,’ says Giles Wiggs","instruction":"<p>The text has&nbsp;seven&nbsp;sections. Choose the correct heading for each section and move it into the gap.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '846e989d-bebf-4317-9eae-1d5abd1077a0',
    'reading',
    '84284f92-962a-4bf5-bd38-545f311bc906',
    30,
    'matching_headings',
    'Question 30',
    '["Moving rapidly across the desert","Recreating the process in a laboratory","Strange music created by human movement","A potential threat to industry and communications","Dunes coming together and re-forming","Needing a specific combination of conditions","A continuous cycle","The commonest type of dune","Old superstitions demystified"]'::jsonb,
    'G',
    'This paragraph describes the repeated cycle of sand grains being blown up and sliding down again, causing the dune to move.',
    1,
    '{"explanation":"This paragraph describes the repeated cycle of sand grains being blown up and sliding down again, causing the dune to move.","fromPassage":"Imagine a single grain of sand being blown up the back of a dune by the wind and deposited on the top.","instruction":"<p>The text has&nbsp;seven&nbsp;sections. Choose the correct heading for each section and move it into the gap.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '1ac962a9-41a8-4131-a0b3-fdb16ee204f6',
    'reading',
    '84284f92-962a-4bf5-bd38-545f311bc906',
    31,
    'matching_headings',
    'Question 31',
    '["Moving rapidly across the desert","Recreating the process in a laboratory","Strange music created by human movement","A potential threat to industry and communications","Dunes coming together and re-forming","Needing a specific combination of conditions","A continuous cycle","The commonest type of dune","Old superstitions demystified"]'::jsonb,
    'E',
    'This paragraph mentions how dunes collide and then quickly regain their shape.',
    1,
    '{"explanation":"This paragraph mentions how dunes collide and then quickly regain their shape.","fromPassage":"Even when two dunes collide, they quickly take on their distinctive shapes again.","instruction":"<p>The text has&nbsp;seven&nbsp;sections. Choose the correct heading for each section and move it into the gap.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '2be8e3b4-08e6-40c2-a9c5-d20f7a9942a8',
    'reading',
    '84284f92-962a-4bf5-bd38-545f311bc906',
    32,
    'matching_headings',
    'Question 32',
    '["Moving rapidly across the desert","Recreating the process in a laboratory","Strange music created by human movement","A potential threat to industry and communications","Dunes coming together and re-forming","Needing a specific combination of conditions","A continuous cycle","The commonest type of dune","Old superstitions demystified"]'::jsonb,
    'I',
    'Paragraph F talks about ancient legends blaming spirits for the booming sound, and scientists explaining the real reason.',
    1,
    '{"explanation":"Paragraph F talks about ancient legends blaming spirits for the booming sound, and scientists explaining the real reason.","fromPassage":"Local legends attributed the sounds to dangerous spirits which were trying to trap unwary travellers. Douady is more pragmatic.","instruction":"<p>The text has&nbsp;seven&nbsp;sections. Choose the correct heading for each section and move it into the gap.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '2778fdea-45d4-4102-b280-fc2acb74b177',
    'reading',
    '84284f92-962a-4bf5-bd38-545f311bc906',
    33,
    'matching_headings',
    'Question 33',
    '["Moving rapidly across the desert","Recreating the process in a laboratory","Strange music created by human movement","A potential threat to industry and communications","Dunes coming together and re-forming","Needing a specific combination of conditions","A continuous cycle","The commonest type of dune","Old superstitions demystified"]'::jsonb,
    'B',
    'Scientists took sand samples back to France and reproduced the sound artificially.',
    1,
    '{"explanation":"Scientists took sand samples back to France and reproduced the sound artificially.","fromPassage":"they were able to take samples of the singing sand back to France and replicate the sound at ENS, proving that it’s the sand, not the dune shape, that causes the sound.","instruction":"<p>The text has&nbsp;seven&nbsp;sections. Choose the correct heading for each section and move it into the gap.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '65162f74-f8e6-42bb-9fc5-34852030dc8f',
    'reading',
    '84284f92-962a-4bf5-bd38-545f311bc906',
    34,
    'mcq_single',
    'Question 34',
    '["They are formed by strong winds blowing from one direction.","They can move up to 100 metres in a twelve-month period.","They develop in a recognisable shape.","They make up about 20% of the world''s deserts."]'::jsonb,
    'C',
    'Paragraph B describes linear dunes as forming a “long curving wave”—a clear, recognisable shape.',
    1,
    '{"explanation":"Paragraph B describes linear dunes as forming a “long curving wave”—a clear, recognisable shape.","fromPassage":"These form in a long curving wave, as a result of wind blowing strongly from several quarters, flipping them from side to side.","instruction":"<p>Choose the correct answer. </p>","context":"<p>What are we told about linear dunes?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'a3a474a0-6790-4702-ba89-7d61665db7b7',
    'reading',
    '84284f92-962a-4bf5-bd38-545f311bc906',
    35,
    'mcq_single',
    'Question 35',
    '["the long straight shape of the dunes.","the particular composition of the dunes.","the exceptionally heavy nature of the sand grains.","the unusual strength of the wind in certain seasons."]'::jsonb,
    'B',
    'He discovered dunes are granular (not solid), and each grain moves in a specific way that shifts the dune.',
    1,
    '{"explanation":"He discovered dunes are granular (not solid), and each grain moves in a specific way that shifts the dune.","fromPassage":"That question was first answered in the mid-20th century by British explorer Ralph Alger Bagnold, and his answer hinges on the fact that dunes aren''t solid, but granular.","instruction":"<p>Choose the correct answer.</p>","context":"<p>Bagnold discovered that movement in barchans was caused by</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '2609b028-bb91-4112-a570-4b10216ca0ec',
    'reading',
    '84284f92-962a-4bf5-bd38-545f311bc906',
    36,
    'mcq_single',
    'Question 36',
    '["It starts small and then increases in size.","It has an effect on its immediate surroundings.","Its relations with desert organisms are quite developed.","Its outline stays the same even after a period of movement."]'::jsonb,
    'D',
    'He notes that dunes regulate and keep their shape, even after collision.',
    1,
    '{"explanation":"He notes that dunes regulate and keep their shape, even after collision.","fromPassage":"Interestingly, the dune can regulate its own shape, and maintain it as it moves.","instruction":"<p>Choose the correct answer.</p>","context":"<p>&nbsp;Why does Dr Douady compare a barchan dune to a living organism?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '2b421864-3aea-459f-ac79-0a5fdfad71d0',
    'reading',
    '84284f92-962a-4bf5-bd38-545f311bc906',
    37,
    'summary_completion',
    'Question 37',
    NULL,
    'barchans',
    'The text states that some barchans sing.',
    1,
    '{"explanation":"The text states that some barchans sing.","fromPassage":" some barchans actually sing.","instruction":"<p>Complete the summary. Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the text for each answer.</p>","context":"<h3><strong>Singing Dunes</strong></h3><p>Singing dunes, which belong to the type of dunes known as ______ &nbsp;, produce a very loud sound which is transmitted at a low frequency. Researchers have worked out that sand grains fall down the dune and start vibrating against other grains, forming a sound wave. Research proves that the individual grains have a similar ______ . But the differences in dimensions alter the&nbsp; ______ &nbsp;of the ''song''. Each grain is covered with a mixture of different&nbsp; ______ &nbsp;and this is vital to the sound production.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '54b8c4de-0422-4f9c-94b4-ada7f4569086',
    'reading',
    '84284f92-962a-4bf5-bd38-545f311bc906',
    38,
    'summary_completion',
    'Question 38',
    NULL,
    'shape',
    'Scientists found the grains were uniform and round.',
    1,
    '{"explanation":"Scientists found the grains were uniform and round.","fromPassage":"Their studies show the grains are a uniform shape, well-rounded from years of striking each other, and that the variations in size affect the tone.","instruction":"<p>Complete the summary. Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the text for each answer.</p>","context":"<h3><strong>Singing Dunes</strong></h3><p>Singing dunes, which belong to the type of dunes known as ______ &nbsp;, produce a very loud sound which is transmitted at a low frequency. Researchers have worked out that sand grains fall down the dune and start vibrating against other grains, forming a sound wave. Research proves that the individual grains have a similar ______ . But the differences in dimensions alter the&nbsp; ______ &nbsp;of the ''song''. Each grain is covered with a mixture of different&nbsp; ______ &nbsp;and this is vital to the sound production.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd63a1611-5f25-4623-babf-9622bf437182',
    'reading',
    '84284f92-962a-4bf5-bd38-545f311bc906',
    39,
    'summary_completion',
    'Question 39',
    NULL,
    'tone',
    'Variations in grain size change the sound.',
    1,
    '{"explanation":"Variations in grain size change the sound.","fromPassage":"Their studies show the grains are a uniform shape, well-rounded from years of striking each other, and that the variations in size affect the tone.","instruction":"<p>Complete the summary. Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the text for each answer.</p>","context":"<h3><strong>Singing Dunes</strong></h3><p>Singing dunes, which belong to the type of dunes known as ______ &nbsp;, produce a very loud sound which is transmitted at a low frequency. Researchers have worked out that sand grains fall down the dune and start vibrating against other grains, forming a sound wave. Research proves that the individual grains have a similar ______ . But the differences in dimensions alter the&nbsp; ______ &nbsp;of the ''song''. Each grain is covered with a mixture of different&nbsp; ______ &nbsp;and this is vital to the sound production.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '499d6f15-7c89-43a9-ae33-cab430930ce1',
    'reading',
    '84284f92-962a-4bf5-bd38-545f311bc906',
    40,
    'summary_completion',
    'Question 40',
    NULL,
    'minerals',
    'The coating that creates sound includes various minerals.',
    1,
    '{"explanation":"The coating that creates sound includes various minerals.","fromPassage":" made from a precise combination of minerals from surrounding rocks including iron, aluminium, manganese, silicon and calcium.","instruction":"<p>Complete the summary. Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the text for each answer.</p>","context":"<h3><strong>Singing Dunes</strong></h3><p>Singing dunes, which belong to the type of dunes known as ______ &nbsp;, produce a very loud sound which is transmitted at a low frequency. Researchers have worked out that sand grains fall down the dune and start vibrating against other grains, forming a sound wave. Research proves that the individual grains have a similar ______ . But the differences in dimensions alter the&nbsp; ______ &nbsp;of the ''song''. Each grain is covered with a mixture of different&nbsp; ______ &nbsp;and this is vital to the sound production.</p>"}'::jsonb
);

