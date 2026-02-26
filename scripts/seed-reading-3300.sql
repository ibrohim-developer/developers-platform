-- ============================================
-- Auto-generated seed for: Guli Muhammadova 7-3
-- Source API ID: 3300
-- Generated: 2026-02-26T07:13:26.422Z
-- ============================================

-- ============================================
-- Guli Muhammadova 7-3 - Part 1: Ant Intelligence
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '38b8f1d2-55c9-4a97-89c4-b5241060923a',
    'Guli Muhammadova 7-3 - Part 1: Ant Intelligence',
    'Cambridge IELTS - Ant Intelligence',
    'medium',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    '74578e3d-1d5e-46c0-b2a0-9eea87fd4523',
    '38b8f1d2-55c9-4a97-89c4-b5241060923a',
    1,
    'Ant Intelligence',
    'When we think of intelligent members of the animal kingdom, the creatures that spring immediately to mind are apes and monkeys. But in fact the social lives of some members of the insect kingdom are sufficiently complex to suggest more than a hint of intelligence. Among these, the world of the ant has come in for considerable scrutiny lately, and the idea that ants demonstrate sparks of cognition has certainly not been rejected by those involved in these investigations.

Ants store food, repel attackers and use chemical signals to contact one another in case of attack. Such chemical communication can be compared to the human use of visual and auditory channels (as in religious chants, advertising images and jingles, political slogans and martial music) to arouse and propagate moods and attitudes. The biologist Lewis Thomas wrote, "Ants are so much like human beings as to be an embarrassment. They farm fungi, raise aphids* as livestock, launch armies to war, use chemical sprays to alarm and confuse enemies, capture slaves, engage in child labour, exchange information ceaselessly. They do everything but watch television."

However, in ants there is no cultural transmission - everything must be encoded in the genes - whereas in humans the opposite is true. Only basic instincts are carried in the genes of a newborn baby, other skills being learned from others in the community as the child grows up. It may seem that this cultural continuity gives us a huge advantage over ants. They have never mastered fire nor progressed. Their fungus farming and aphid herding crafts are sophisticated when compared to the agricultural skills of humans five thousand years ago but have been totally overtaken by modern human agribusiness.

Or have they? The farming methods of ants are at least sustainable. They do not ruin environments or use enormous amounts of energy. Moreover, recent evidence suggests that the crop farming of ants may be more sophisticated and adaptable than was thought.

Ants were farmers fifty million years before humans were. Ants can''t digest the cellulose in leaves - but some fungi can. The ants therefore cultivate these fungi in their nests, bringing them leaves to feed on, and then use them as a source of food. Farmer ants secrete antibiotics to control other fungi that might act as ''weeds'', and spread waste to fertilise the crop.

It was once thought that the fungus that ants cultivate was a single type that they had propagated, essentially unchanged from the distant past. Not so. Ulrich Mueller of Maryland and his colleagues genetically screened 862 different types of fungi taken from ants'' nests. These turned out to be highly diverse: it seems that ants are continually domesticating new species. Even more impressively, DNA analysis of the fungi suggests that the ants improve or modify the fungi by regularly swapping and sharing strains with neighbouring ant colonies.

Whereas prehistoric man had no exposure to urban lifestyles - the forcing house of intelligence - the evidence suggests that ants have lived in urban settings for close on a hundred million years, developing and maintaining underground cities of specialised chambers and tunnels.

When we survey Mexico City, Tokyo, Los Angeles, we are amazed at what has been accomplished by humans. Yet Hoelldobler and Wilson''s magnificent work for ant lovers, The Ants, describes a supercolony of the ant Formica yessensis on the Ishikari Coast of Hokkaido. This ''megalopolis'' was reported to be composed of 360 million workers and a million queens living in 4,500 interconnected nests across a territory of 2.7 square kilometres.

Such enduring and intricately meshed levels of technical achievement outstrip by far anything achieved by our distant ancestors. We hail as masterpieces the cave paintings in southern France and elsewhere, dating back some 20,000 years. Ant societies existed in something like their present form more than seventy million years ago. Beside this, prehistoric man looks technologically primitive. Is this then some kind of intelligence, albeit of a different kind?

Research conducted at Oxford, Sussex and Zürich Universities has shown that when desert ants return from a foraging trip, they navigate by integrating bearings and distances, which they continuously update in their heads. They combine the evidence of visual landmarks with a mental library of local directions, all within a framework which is consulted and updated. So ants can learn too.

And in a twelve-year programme of work, Ryabko and Reznikova have found evidence that ants can transmit very complex messages. Scouts who had located food in a maze returned to mobilise their foraging teams. They engaged in contact sessions, at the end of which the scout was removed in order to observe what her team might do. Often the foragers proceeded to the exact spot in the maze where the food had been. Elaborate precautions were taken to prevent the foraging team using odour clues. Discussion now centres on whether the route through the maze is communicated as a ''left-right'' sequence of turns or as a ''compass bearing and distance'' message.

During the course of this exhaustive study, Reznikova has grown so attached to her laboratory ants that she feels she knows them as individuals - even without the paint spots used to mark them. It''s no surprise that Edward Wilson, in his essay, "In the company of ants", advises readers who ask what to do with the ants in their kitchen to: "Watch where you step. Be careful of little lives".

Glossary
* aphids: small insects of a different species from ants',
    913,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '1c38c1d9-6129-4b45-b6b5-016b347736a4',
    'reading',
    '74578e3d-1d5e-46c0-b2a0-9eea87fd4523',
    1,
    'tfng',
    'Ants use the same channels of communication as humans do.',
    NULL,
    'FALSE',
    'The passage says ant communication can be compared to human communication, but it does not say they use the same channels.',
    1,
    '{"explanation":"The passage says ant communication can be compared to human communication, but it does not say they use the same channels.","fromPassage":"Such chemical communication can be compared to the human use of visual and auditory channels (as in religious chants, advertising images and jingles, political slogans and martial music) to arouse and propagate moods and attitudes.","instruction":"<p><strong><em>TRUE </em></strong><em>if the statement agrees with the information </em></p><p><strong><em>FALSE </em></strong><em>if the statement contradicts the information</em></p><p><strong><em>NOT GIVEN </em></strong><em>if there is no information on this</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0335e295-6dc9-4ebc-b04a-e360d3351037',
    'reading',
    '74578e3d-1d5e-46c0-b2a0-9eea87fd4523',
    2,
    'tfng',
    'City life is one factor that encourages the development of intelligence.',
    NULL,
    'TRUE',
    'The passage suggests that urban lifestyles encourage the development of intelligence.',
    1,
    '{"explanation":"The passage suggests that urban lifestyles encourage the development of intelligence.","fromPassage":"Whereas prehistoric man had no exposure to urban lifestyles - the forcing house of intelligence - the evidence suggests that ants have lived in urban settings for close on a hundred million years, developing and maintaining underground cities of specialised chambers and tunnels.","instruction":"<p><strong><em>TRUE </em></strong><em>if the statement agrees with the information </em></p><p><strong><em>FALSE </em></strong><em>if the statement contradicts the information</em></p><p><strong><em>NOT GIVEN </em></strong><em>if there is no information on this</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'af01befa-688a-4b1c-972e-9535745a8164',
    'reading',
    '74578e3d-1d5e-46c0-b2a0-9eea87fd4523',
    3,
    'tfng',
    'Ants can build large cities more quickly than humans do. ',
    NULL,
    'NOT GIVEN',
    'The passage describes large ant cities but does not compare the speed of construction with humans.',
    1,
    '{"explanation":"The passage describes large ant cities but does not compare the speed of construction with humans.","fromPassage":"This ''megalopolis'' was reported to be composed of 360 million workers and a million queens living in 4,500 interconnected nests across a territory of 2.7 square kilometres.","instruction":"<p><strong><em>TRUE </em></strong><em>if the statement agrees with the information </em></p><p><strong><em>FALSE </em></strong><em>if the statement contradicts the information</em></p><p><strong><em>NOT GIVEN </em></strong><em>if there is no information on this</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '6941fa64-c7ff-4da5-a02e-4caf46fedbe9',
    'reading',
    '74578e3d-1d5e-46c0-b2a0-9eea87fd4523',
    4,
    'tfng',
    'Some ants can find their way by making calculations based on distance and position.',
    NULL,
    'TRUE',
    'The passage explains that desert ants navigate by calculating bearings and distances.',
    1,
    '{"explanation":"The passage explains that desert ants navigate by calculating bearings and distances.","fromPassage":"Research conducted at Oxford, Sussex and Zürich Universities has shown that when desert ants return from a foraging trip, they navigate by integrating bearings and distances, which they continuously update in their heads.","instruction":"<p><strong><em>TRUE </em></strong><em>if the statement agrees with the information </em></p><p><strong><em>FALSE </em></strong><em>if the statement contradicts the information</em></p><p><strong><em>NOT GIVEN </em></strong><em>if there is no information on this</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '8ad58a78-bcc0-438b-89ba-7e45b8b63bdf',
    'reading',
    '74578e3d-1d5e-46c0-b2a0-9eea87fd4523',
    5,
    'tfng',
    'In one experiment, foraging teams were able to use their sense of smell to find food.',
    NULL,
    'FALSE',
    'The experiment specifically prevented ants from using odour clues.',
    1,
    '{"explanation":"The experiment specifically prevented ants from using odour clues.","fromPassage":"Elaborate precautions were taken to prevent the foraging team using odour clues.","instruction":"<p><strong><em>TRUE </em></strong><em>if the statement agrees with the information </em></p><p><strong><em>FALSE </em></strong><em>if the statement contradicts the information</em></p><p><strong><em>NOT GIVEN </em></strong><em>if there is no information on this</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'c6bd0eed-8b96-4b8f-9660-211ec8f408e5',
    'reading',
    '74578e3d-1d5e-46c0-b2a0-9eea87fd4523',
    6,
    'tfng',
    'The essay, ''In the company of ants'', explores ant communication.',
    NULL,
    'NOT GIVEN',
    'The essay is mentioned, but its content is not described as focusing on ant communication.',
    1,
    '{"explanation":"The essay is mentioned, but its content is not described as focusing on ant communication.","fromPassage":"It''s no surprise that Edward Wilson, in his essay, ''In the company of ants'', advises readers who ask what to do with the ants in their kitchen to: ''Watch where you step. Be careful of little lives''.","instruction":"<p><strong><em>TRUE </em></strong><em>if the statement agrees with the information </em></p><p><strong><em>FALSE </em></strong><em>if the statement contradicts the information</em></p><p><strong><em>NOT GIVEN </em></strong><em>if there is no information on this</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'f60d5218-69c8-490b-9bb7-69fe6fba385e',
    'reading',
    '74578e3d-1d5e-46c0-b2a0-9eea87fd4523',
    7,
    'summary_completion',
    'Question 7',
    '["aphids","agricultural","cellulose","exchanging","energy","fertilizers","food","fungi","growing","interbreeding","natural","other species","secretions","sustainable","environment"]'::jsonb,
    'C',
    'The fungi convert cellulose into a form that ants can digest.',
    1,
    '{"explanation":"The fungi convert cellulose into a form that ants can digest.","fromPassage":"Ants can''t digest the cellulose in leaves - but some fungi can.","instruction":"<p>Choose the correct letter</p>","context":"<p class=\"ql-align-center\"><strong>Ants&nbsp;as&nbsp;farmers</strong></p><p>Ants&nbsp;have&nbsp;sophisticated&nbsp;methods&nbsp;of&nbsp;farming,&nbsp;including&nbsp;herding&nbsp;livestock&nbsp;and&nbsp;growing&nbsp;crops,&nbsp;which&nbsp;are&nbsp;in&nbsp;many&nbsp;ways&nbsp;similar&nbsp;to&nbsp;those&nbsp;used&nbsp;in&nbsp;human&nbsp;agriculture.&nbsp;The&nbsp;ants&nbsp;cultivate&nbsp;a&nbsp;large&nbsp;number&nbsp;of&nbsp;different&nbsp;species&nbsp;of&nbsp;edible&nbsp;fungi&nbsp;which&nbsp;convert______into&nbsp;a&nbsp;form&nbsp;which&nbsp;they&nbsp;can&nbsp;digest.&nbsp;They&nbsp;use&nbsp;their&nbsp;own&nbsp;natural ______ as&nbsp;weed-killers&nbsp;and&nbsp;also&nbsp;use&nbsp;unwanted&nbsp;materials&nbsp;as______. Genetic&nbsp;analysis&nbsp;shows&nbsp;they&nbsp;constantly&nbsp;upgrade&nbsp;these&nbsp;fungi&nbsp;by&nbsp;developing&nbsp;new&nbsp;species&nbsp;and&nbsp;by______species&nbsp;with&nbsp;neighbouring&nbsp;ant&nbsp;colonies.&nbsp;In&nbsp;fact,&nbsp;the&nbsp;farming&nbsp;methods&nbsp;of&nbsp;ants&nbsp;could&nbsp;be&nbsp;said&nbsp;to&nbsp;be&nbsp;more&nbsp;advanced&nbsp;than&nbsp;human&nbsp;agribusiness,&nbsp;since&nbsp;they&nbsp;use ______ </p><p>methods,&nbsp;they&nbsp;do&nbsp;not&nbsp;affect&nbsp;the ______ and&nbsp;do&nbsp;not&nbsp;waste ______.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '7deff2ee-dfd5-478c-a564-60c572a30719',
    'reading',
    '74578e3d-1d5e-46c0-b2a0-9eea87fd4523',
    8,
    'summary_completion',
    'Question 8',
    '["aphids","agricultural","cellulose","exchanging","energy","fertilizers","food","fungi","growing","interbreeding","natural","other species","secretions","sustainable","environment"]'::jsonb,
    'M',
    'Ants produce antibiotics, which are natural secretions, to control other fungi.',
    1,
    '{"explanation":"Ants produce antibiotics, which are natural secretions, to control other fungi.","fromPassage":"Farmer ants secrete antibiotics to control other fungi that might act as ''weeds'', and spread waste to fertilise the crop.","instruction":"<p>Choose the correct letter</p>","context":"<p class=\"ql-align-center\"><strong>Ants&nbsp;as&nbsp;farmers</strong></p><p>Ants&nbsp;have&nbsp;sophisticated&nbsp;methods&nbsp;of&nbsp;farming,&nbsp;including&nbsp;herding&nbsp;livestock&nbsp;and&nbsp;growing&nbsp;crops,&nbsp;which&nbsp;are&nbsp;in&nbsp;many&nbsp;ways&nbsp;similar&nbsp;to&nbsp;those&nbsp;used&nbsp;in&nbsp;human&nbsp;agriculture.&nbsp;The&nbsp;ants&nbsp;cultivate&nbsp;a&nbsp;large&nbsp;number&nbsp;of&nbsp;different&nbsp;species&nbsp;of&nbsp;edible&nbsp;fungi&nbsp;which&nbsp;convert______into&nbsp;a&nbsp;form&nbsp;which&nbsp;they&nbsp;can&nbsp;digest.&nbsp;They&nbsp;use&nbsp;their&nbsp;own&nbsp;natural ______ as&nbsp;weed-killers&nbsp;and&nbsp;also&nbsp;use&nbsp;unwanted&nbsp;materials&nbsp;as______. Genetic&nbsp;analysis&nbsp;shows&nbsp;they&nbsp;constantly&nbsp;upgrade&nbsp;these&nbsp;fungi&nbsp;by&nbsp;developing&nbsp;new&nbsp;species&nbsp;and&nbsp;by______species&nbsp;with&nbsp;neighbouring&nbsp;ant&nbsp;colonies.&nbsp;In&nbsp;fact,&nbsp;the&nbsp;farming&nbsp;methods&nbsp;of&nbsp;ants&nbsp;could&nbsp;be&nbsp;said&nbsp;to&nbsp;be&nbsp;more&nbsp;advanced&nbsp;than&nbsp;human&nbsp;agribusiness,&nbsp;since&nbsp;they&nbsp;use ______ </p><p>methods,&nbsp;they&nbsp;do&nbsp;not&nbsp;affect&nbsp;the ______ and&nbsp;do&nbsp;not&nbsp;waste ______.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'bb9002bf-9b67-4a09-a510-a2ee242d61c9',
    'reading',
    '74578e3d-1d5e-46c0-b2a0-9eea87fd4523',
    9,
    'summary_completion',
    'Question 9',
    '["aphids","agricultural","cellulose","exchanging","energy","fertilizers","food","fungi","growing","interbreeding","natural","other species","secretions","sustainable","environment"]'::jsonb,
    'F',
    'The ants use waste to fertilise their crops.',
    1,
    '{"explanation":"The ants use waste to fertilise their crops.","fromPassage":"Farmer ants secrete antibiotics to control other fungi that might act as ''weeds'', and spread waste to fertilise the crop.","instruction":"<p>Choose the correct letter</p>","context":"<p class=\"ql-align-center\"><strong>Ants&nbsp;as&nbsp;farmers</strong></p><p>Ants&nbsp;have&nbsp;sophisticated&nbsp;methods&nbsp;of&nbsp;farming,&nbsp;including&nbsp;herding&nbsp;livestock&nbsp;and&nbsp;growing&nbsp;crops,&nbsp;which&nbsp;are&nbsp;in&nbsp;many&nbsp;ways&nbsp;similar&nbsp;to&nbsp;those&nbsp;used&nbsp;in&nbsp;human&nbsp;agriculture.&nbsp;The&nbsp;ants&nbsp;cultivate&nbsp;a&nbsp;large&nbsp;number&nbsp;of&nbsp;different&nbsp;species&nbsp;of&nbsp;edible&nbsp;fungi&nbsp;which&nbsp;convert______into&nbsp;a&nbsp;form&nbsp;which&nbsp;they&nbsp;can&nbsp;digest.&nbsp;They&nbsp;use&nbsp;their&nbsp;own&nbsp;natural ______ as&nbsp;weed-killers&nbsp;and&nbsp;also&nbsp;use&nbsp;unwanted&nbsp;materials&nbsp;as______. Genetic&nbsp;analysis&nbsp;shows&nbsp;they&nbsp;constantly&nbsp;upgrade&nbsp;these&nbsp;fungi&nbsp;by&nbsp;developing&nbsp;new&nbsp;species&nbsp;and&nbsp;by______species&nbsp;with&nbsp;neighbouring&nbsp;ant&nbsp;colonies.&nbsp;In&nbsp;fact,&nbsp;the&nbsp;farming&nbsp;methods&nbsp;of&nbsp;ants&nbsp;could&nbsp;be&nbsp;said&nbsp;to&nbsp;be&nbsp;more&nbsp;advanced&nbsp;than&nbsp;human&nbsp;agribusiness,&nbsp;since&nbsp;they&nbsp;use ______ </p><p>methods,&nbsp;they&nbsp;do&nbsp;not&nbsp;affect&nbsp;the ______ and&nbsp;do&nbsp;not&nbsp;waste ______.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '20cc2e09-6e93-4f53-9a79-f347a9e8feec',
    'reading',
    '74578e3d-1d5e-46c0-b2a0-9eea87fd4523',
    10,
    'summary_completion',
    'Question 10',
    '["aphids","agricultural","cellulose","exchanging","energy","fertilizers","food","fungi","growing","interbreeding","natural","other species","secretions","sustainable","environment"]'::jsonb,
    'D',
    'Ants improve fungi by swapping and sharing strains with neighbouring colonies.',
    1,
    '{"explanation":"Ants improve fungi by swapping and sharing strains with neighbouring colonies.","fromPassage":"Even more impressively, DNA analysis of the fungi suggests that the ants improve or modify the fungi by regularly swapping and sharing strains with neighbouring ant colonies.","instruction":"<p>Choose the correct letter</p>","context":"<p class=\"ql-align-center\"><strong>Ants&nbsp;as&nbsp;farmers</strong></p><p>Ants&nbsp;have&nbsp;sophisticated&nbsp;methods&nbsp;of&nbsp;farming,&nbsp;including&nbsp;herding&nbsp;livestock&nbsp;and&nbsp;growing&nbsp;crops,&nbsp;which&nbsp;are&nbsp;in&nbsp;many&nbsp;ways&nbsp;similar&nbsp;to&nbsp;those&nbsp;used&nbsp;in&nbsp;human&nbsp;agriculture.&nbsp;The&nbsp;ants&nbsp;cultivate&nbsp;a&nbsp;large&nbsp;number&nbsp;of&nbsp;different&nbsp;species&nbsp;of&nbsp;edible&nbsp;fungi&nbsp;which&nbsp;convert______into&nbsp;a&nbsp;form&nbsp;which&nbsp;they&nbsp;can&nbsp;digest.&nbsp;They&nbsp;use&nbsp;their&nbsp;own&nbsp;natural ______ as&nbsp;weed-killers&nbsp;and&nbsp;also&nbsp;use&nbsp;unwanted&nbsp;materials&nbsp;as______. Genetic&nbsp;analysis&nbsp;shows&nbsp;they&nbsp;constantly&nbsp;upgrade&nbsp;these&nbsp;fungi&nbsp;by&nbsp;developing&nbsp;new&nbsp;species&nbsp;and&nbsp;by______species&nbsp;with&nbsp;neighbouring&nbsp;ant&nbsp;colonies.&nbsp;In&nbsp;fact,&nbsp;the&nbsp;farming&nbsp;methods&nbsp;of&nbsp;ants&nbsp;could&nbsp;be&nbsp;said&nbsp;to&nbsp;be&nbsp;more&nbsp;advanced&nbsp;than&nbsp;human&nbsp;agribusiness,&nbsp;since&nbsp;they&nbsp;use ______ </p><p>methods,&nbsp;they&nbsp;do&nbsp;not&nbsp;affect&nbsp;the ______ and&nbsp;do&nbsp;not&nbsp;waste ______.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'be945e43-3eaf-4280-a8ea-f21d12ed1be7',
    'reading',
    '74578e3d-1d5e-46c0-b2a0-9eea87fd4523',
    11,
    'summary_completion',
    'Question 11',
    '["aphids","agricultural","cellulose","exchanging","energy","fertilizers","food","fungi","growing","interbreeding","natural","other species","secretions","sustainable","environment"]'::jsonb,
    'N',
    'The passage states that ant farming methods are sustainable.',
    1,
    '{"explanation":"The passage states that ant farming methods are sustainable.","fromPassage":"The farming methods of ants are at least sustainable.","instruction":"<p>Choose the correct letter</p>","context":"<p class=\"ql-align-center\"><strong>Ants&nbsp;as&nbsp;farmers</strong></p><p>Ants&nbsp;have&nbsp;sophisticated&nbsp;methods&nbsp;of&nbsp;farming,&nbsp;including&nbsp;herding&nbsp;livestock&nbsp;and&nbsp;growing&nbsp;crops,&nbsp;which&nbsp;are&nbsp;in&nbsp;many&nbsp;ways&nbsp;similar&nbsp;to&nbsp;those&nbsp;used&nbsp;in&nbsp;human&nbsp;agriculture.&nbsp;The&nbsp;ants&nbsp;cultivate&nbsp;a&nbsp;large&nbsp;number&nbsp;of&nbsp;different&nbsp;species&nbsp;of&nbsp;edible&nbsp;fungi&nbsp;which&nbsp;convert______into&nbsp;a&nbsp;form&nbsp;which&nbsp;they&nbsp;can&nbsp;digest.&nbsp;They&nbsp;use&nbsp;their&nbsp;own&nbsp;natural ______ as&nbsp;weed-killers&nbsp;and&nbsp;also&nbsp;use&nbsp;unwanted&nbsp;materials&nbsp;as______. Genetic&nbsp;analysis&nbsp;shows&nbsp;they&nbsp;constantly&nbsp;upgrade&nbsp;these&nbsp;fungi&nbsp;by&nbsp;developing&nbsp;new&nbsp;species&nbsp;and&nbsp;by______species&nbsp;with&nbsp;neighbouring&nbsp;ant&nbsp;colonies.&nbsp;In&nbsp;fact,&nbsp;the&nbsp;farming&nbsp;methods&nbsp;of&nbsp;ants&nbsp;could&nbsp;be&nbsp;said&nbsp;to&nbsp;be&nbsp;more&nbsp;advanced&nbsp;than&nbsp;human&nbsp;agribusiness,&nbsp;since&nbsp;they&nbsp;use ______ </p><p>methods,&nbsp;they&nbsp;do&nbsp;not&nbsp;affect&nbsp;the ______ and&nbsp;do&nbsp;not&nbsp;waste ______.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'b199c2f1-5919-4581-bd89-3d3db2d3d34c',
    'reading',
    '74578e3d-1d5e-46c0-b2a0-9eea87fd4523',
    12,
    'summary_completion',
    'Question 12',
    '["aphids","agricultural","cellulose","exchanging","energy","fertilizers","food","fungi","growing","interbreeding","natural","other species","secretions","sustainable","environment"]'::jsonb,
    'O',
    'Ant farming does not damage the environment.',
    1,
    '{"explanation":"Ant farming does not damage the environment.","fromPassage":"They do not ruin environments or use enormous amounts of energy.","instruction":"<p>Choose the correct letter</p>","context":"<p class=\"ql-align-center\"><strong>Ants&nbsp;as&nbsp;farmers</strong></p><p>Ants&nbsp;have&nbsp;sophisticated&nbsp;methods&nbsp;of&nbsp;farming,&nbsp;including&nbsp;herding&nbsp;livestock&nbsp;and&nbsp;growing&nbsp;crops,&nbsp;which&nbsp;are&nbsp;in&nbsp;many&nbsp;ways&nbsp;similar&nbsp;to&nbsp;those&nbsp;used&nbsp;in&nbsp;human&nbsp;agriculture.&nbsp;The&nbsp;ants&nbsp;cultivate&nbsp;a&nbsp;large&nbsp;number&nbsp;of&nbsp;different&nbsp;species&nbsp;of&nbsp;edible&nbsp;fungi&nbsp;which&nbsp;convert______into&nbsp;a&nbsp;form&nbsp;which&nbsp;they&nbsp;can&nbsp;digest.&nbsp;They&nbsp;use&nbsp;their&nbsp;own&nbsp;natural ______ as&nbsp;weed-killers&nbsp;and&nbsp;also&nbsp;use&nbsp;unwanted&nbsp;materials&nbsp;as______. Genetic&nbsp;analysis&nbsp;shows&nbsp;they&nbsp;constantly&nbsp;upgrade&nbsp;these&nbsp;fungi&nbsp;by&nbsp;developing&nbsp;new&nbsp;species&nbsp;and&nbsp;by______species&nbsp;with&nbsp;neighbouring&nbsp;ant&nbsp;colonies.&nbsp;In&nbsp;fact,&nbsp;the&nbsp;farming&nbsp;methods&nbsp;of&nbsp;ants&nbsp;could&nbsp;be&nbsp;said&nbsp;to&nbsp;be&nbsp;more&nbsp;advanced&nbsp;than&nbsp;human&nbsp;agribusiness,&nbsp;since&nbsp;they&nbsp;use ______ </p><p>methods,&nbsp;they&nbsp;do&nbsp;not&nbsp;affect&nbsp;the ______ and&nbsp;do&nbsp;not&nbsp;waste ______.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '799a770f-3c96-41c3-9967-021e4c1650d2',
    'reading',
    '74578e3d-1d5e-46c0-b2a0-9eea87fd4523',
    13,
    'summary_completion',
    'Question 13',
    '["aphids","agricultural","cellulose","exchanging","energy","fertilizers","food","fungi","growing","interbreeding","natural","other species","secretions","sustainable","environment"]'::jsonb,
    'E',
    'Ants do not use large amounts of energy in their farming methods.',
    1,
    '{"explanation":"Ants do not use large amounts of energy in their farming methods.","fromPassage":"They do not ruin environments or use enormous amounts of energy.","instruction":"<p>Choose the correct letter</p>","context":"<p class=\"ql-align-center\"><strong>Ants&nbsp;as&nbsp;farmers</strong></p><p>Ants&nbsp;have&nbsp;sophisticated&nbsp;methods&nbsp;of&nbsp;farming,&nbsp;including&nbsp;herding&nbsp;livestock&nbsp;and&nbsp;growing&nbsp;crops,&nbsp;which&nbsp;are&nbsp;in&nbsp;many&nbsp;ways&nbsp;similar&nbsp;to&nbsp;those&nbsp;used&nbsp;in&nbsp;human&nbsp;agriculture.&nbsp;The&nbsp;ants&nbsp;cultivate&nbsp;a&nbsp;large&nbsp;number&nbsp;of&nbsp;different&nbsp;species&nbsp;of&nbsp;edible&nbsp;fungi&nbsp;which&nbsp;convert______into&nbsp;a&nbsp;form&nbsp;which&nbsp;they&nbsp;can&nbsp;digest.&nbsp;They&nbsp;use&nbsp;their&nbsp;own&nbsp;natural ______ as&nbsp;weed-killers&nbsp;and&nbsp;also&nbsp;use&nbsp;unwanted&nbsp;materials&nbsp;as______. Genetic&nbsp;analysis&nbsp;shows&nbsp;they&nbsp;constantly&nbsp;upgrade&nbsp;these&nbsp;fungi&nbsp;by&nbsp;developing&nbsp;new&nbsp;species&nbsp;and&nbsp;by______species&nbsp;with&nbsp;neighbouring&nbsp;ant&nbsp;colonies.&nbsp;In&nbsp;fact,&nbsp;the&nbsp;farming&nbsp;methods&nbsp;of&nbsp;ants&nbsp;could&nbsp;be&nbsp;said&nbsp;to&nbsp;be&nbsp;more&nbsp;advanced&nbsp;than&nbsp;human&nbsp;agribusiness,&nbsp;since&nbsp;they&nbsp;use ______ </p><p>methods,&nbsp;they&nbsp;do&nbsp;not&nbsp;affect&nbsp;the ______ and&nbsp;do&nbsp;not&nbsp;waste ______.</p>"}'::jsonb
);

-- ============================================
-- Guli Muhammadova 7-3 - Part 2: Population movements and genetics
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '9df55622-71c0-48c7-876d-e2a53a974972',
    'Guli Muhammadova 7-3 - Part 2: Population movements and genetics',
    'Cambridge IELTS - Population movements and genetics',
    'medium',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    'dbd69201-e109-4d4b-b3ca-920faac597cb',
    '9df55622-71c0-48c7-876d-e2a53a974972',
    1,
    'Population movements and genetics',
    ' 
[HEADING: A]
Study of the origins and distribution of human populations used to be based on archaeological and fossil evidence. A number of techniques developed since the 1950s, however, have placed the study of these subjects on a sounder and more objective footing. The best information on early population movements is now being obtained from the ''archaeology of the living body'', the clues to be found in genetic material.

 
[HEADING: B]
Recent work on the problem of when people first entered the Americas is an example of the value of these new techniques. North-east Asia and Siberia have long been accepted as the launching ground for the first human colonisers of the New World*.But was there one major wave of migration across the Bering Strait into the Americas, or several? And when did this event, or events, take place? In recent years, new clues have come from research into genetics, including the distribution of genetic markers in modern Native Americans*.

 
[HEADING: C]
An important project, led by the biological anthropologist Robert Williams, focused on the variants (called Gm allotypes) of one particular protein immunoglobin G - found in the fluid portion of human blood. All proteins ''drift'', or produce variants, over the generations, and members of an interbreeding human population will share a set of such variants. Thus, by comparing the Gm allotypes of two different populations (e.g. two Indian tribes), one can establish their genetic ''distance'', which itself can be calibrated to give an indication of the length of time since these populations last interbred.

 
[HEADING: D]
Williams and his colleagues sampled the blood of over 5,000 American Indians in western North America during a twenty-year period. They found that their Gm allotypes could be divided into two groups, one of which also corresponded to the genetic typing of Central and South American Indians. Other tests showed that the Inuit (or Eskimo) and Aleut* formed a third group. From this evidence it was deduced that there had been three major waves of migration across the Bering Strait. The first, Paleo-Indian, wave more than 15,000 years ago was ancestral to all Central and South American Indians. The second wave, about 14,000-12,000 years ago, brought Na-Dene hunters, ancestors of the Navajo and Apache (who only migrated south from Canada about 600 or 700 years ago).The third wave, perhaps 10,000 or 9,000 years ago, saw the migration from North-east Asia of groups ancestral to the modern Eskimo and Aleut.

 
[HEADING: E]
How far does other research support these conclusions? Geneticist Douglas Wallace has studied mitochondrial DNA* in blood samples from three widely separated Native American groups: Pima-Papago Indians in Arizona, Maya Indians on the Yucatán peninsula, Mexico, and Ticuna Indians in the Upper Amazon region of Brazil. As would have been predicted by Robert Williams''s work, all three groups appear to be descended from the same ancestral (Paleo-Indian) population.

 
[HEADING: F]
There are two other kinds of research that have thrown some light on the origins of the Native American population; they involve the study of teeth and of languages. The biological anthropologist Christy Turner is an expert in the analysis of changing physical characteristics in human teeth. He argues that tooth crowns* and roots* have a high genetic component, minimally affected by environmental and other factors. Studies carried out by Turner of many thousands of New and Old World specimens, both ancient and modern, suggest that the majority of prehistoric Americans are linked to Northern Asian populations by crown and root traits such as incisor* shoveling (a scooping out on one or both surfaces of the tooth), single-rooted upper first premolars* and triple-rooted lower first molars*. According to Turner, this ties in with the idea of a single Paleo-lndian migration out of North Asia, which he sets at before 14,000 years ago by calibrating rates of dental micro-evolution. Tooth analyses also suggest that there were two later migrations of Na-Denes and Eskimo-Aleut.

 
G 
The linguist Joseph Greenberg has, since the 1950s, argued that all Native American languages belong to a single ''Amerind'' family, except for Na-Dene and Eskimo-Aleut - a view that gives credence to the idea of three main migrations. Greenberg is in a minority among fellow linguists, most of whom favour the notion of a great many waves of migration to account for the more than 1,000 languages spoken at one time by American Indians. But there is no doubt that the new genetic and dental evidence provides strong backing for Greenberg''s view. Dates given for the migrations should nevertheless be treated with caution, except where supported by hard archaeological evidence.

Glossary
* New World: the American continent, as opposed to the so-called Old World of Europe, Asia and Africa
* modern Native American: an American descended from the groups that were native to America
* Inuit and Aleut: two of the ethnic groups native to the northern regions of North America (i.e. northern Canada and Greenland)
* DNA: the substance in which genetic information is stored
* crown / root: parts of the tooth
* incisor / premolar / molar: kinds of teeth',
    845,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'e5d9d08c-f364-4d09-868e-ebb9d68e155a',
    'reading',
    'dbd69201-e109-4d4b-b3ca-920faac597cb',
    14,
    'matching_headings',
    'Question 14',
    '["The results of the research into blood-variants","Dental evidence","Greenberg''s analysis of the dental and linguistic evidence","Developments in the methods used to study early population movements","Indian migration from Canada to the U.S.A.","Further genetic evidence relating to the three-wave theory","Long-standing questions about prehistoric migration to America","Conflicting views of the three-wave theory, based on non-genetic evidence","Questions about the causes of prehistoric migration to America","How analysis of blood-variants measures the closeness of the relationship between different populations"]'::jsonb,
    'iv',
    'Section A explains how new genetic techniques since the 1950s have improved the study of early population movements.',
    1,
    '{"explanation":"Section A explains how new genetic techniques since the 1950s have improved the study of early population movements.","fromPassage":"Study of the origins and distribution of human populations used to be based on archaeological and fossil evidence. A number of techniques developed since the 1950s, however, have placed the study of these subjects on a sounder and more objective footing.","instruction":"<p>Choose the correct letter</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'f00a14ce-b686-481a-96fa-0cd64a2c78a1',
    'reading',
    'dbd69201-e109-4d4b-b3ca-920faac597cb',
    15,
    'matching_headings',
    'Question 15',
    '["The results of the research into blood-variants","Dental evidence","Greenberg''s analysis of the dental and linguistic evidence","Developments in the methods used to study early population movements","Indian migration from Canada to the U.S.A.","Further genetic evidence relating to the three-wave theory","Long-standing questions about prehistoric migration to America","Conflicting views of the three-wave theory, based on non-genetic evidence","Questions about the causes of prehistoric migration to America","How analysis of blood-variants measures the closeness of the relationship between different populations"]'::jsonb,
    'vii',
    'Section B raises long-standing questions about how and when people first migrated to the Americas.',
    1,
    '{"explanation":"Section B raises long-standing questions about how and when people first migrated to the Americas.","fromPassage":"But was there one major wave of migration across the Bering Strait into the Americas, or several? And when did this event, or events, take place?","instruction":"<p>Choose the correct letter</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'cbf4352c-c31f-406b-a22d-4341e9dcd2ef',
    'reading',
    'dbd69201-e109-4d4b-b3ca-920faac597cb',
    16,
    'matching_headings',
    'Question 16',
    '["The results of the research into blood-variants","Dental evidence","Greenberg''s analysis of the dental and linguistic evidence","Developments in the methods used to study early population movements","Indian migration from Canada to the U.S.A.","Further genetic evidence relating to the three-wave theory","Long-standing questions about prehistoric migration to America","Conflicting views of the three-wave theory, based on non-genetic evidence","Questions about the causes of prehistoric migration to America","How analysis of blood-variants measures the closeness of the relationship between different populations"]'::jsonb,
    'x',
    'Section C explains how comparing blood variants (Gm allotypes) can measure genetic distance between populations.',
    1,
    '{"explanation":"Section C explains how comparing blood variants (Gm allotypes) can measure genetic distance between populations.","fromPassage":"Thus, by comparing the Gm allotypes of two different populations (e.g. two Indian tribes), one can establish their genetic ''distance'', which itself can be calibrated to give an indication of the length of time since these populations last interbred.","instruction":"<p>Choose the correct letter</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '03a0dab0-ebad-409c-881c-b49c1223b975',
    'reading',
    'dbd69201-e109-4d4b-b3ca-920faac597cb',
    17,
    'matching_headings',
    'Question 17',
    '["The results of the research into blood-variants","Dental evidence","Greenberg''s analysis of the dental and linguistic evidence","Developments in the methods used to study early population movements","Indian migration from Canada to the U.S.A.","Further genetic evidence relating to the three-wave theory","Long-standing questions about prehistoric migration to America","Conflicting views of the three-wave theory, based on non-genetic evidence","Questions about the causes of prehistoric migration to America","How analysis of blood-variants measures the closeness of the relationship between different populations"]'::jsonb,
    'i',
    'Section D presents the findings from Williams’s research into blood variants and outlines the three migration waves.',
    1,
    '{"explanation":"Section D presents the findings from Williams’s research into blood variants and outlines the three migration waves.","fromPassage":"They found that their Gm allotypes could be divided into two groups, one of which also corresponded to the genetic typing of Central and South American Indians. Other tests showed that the Inuit (or Eskimo) and Aleut* formed a third group. From this evidence it was deduced that there had been three major waves of migration across the Bering Strait.","instruction":"<p>Choose the correct letter</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'ee04d498-7788-435d-9175-dd822e5a7151',
    'reading',
    'dbd69201-e109-4d4b-b3ca-920faac597cb',
    18,
    'matching_headings',
    'Question 18',
    '["The results of the research into blood-variants","Dental evidence","Greenberg''s analysis of the dental and linguistic evidence","Developments in the methods used to study early population movements","Indian migration from Canada to the U.S.A.","Further genetic evidence relating to the three-wave theory","Long-standing questions about prehistoric migration to America","Conflicting views of the three-wave theory, based on non-genetic evidence","Questions about the causes of prehistoric migration to America","How analysis of blood-variants measures the closeness of the relationship between different populations"]'::jsonb,
    'vi',
    'Section E provides additional genetic evidence (mitochondrial DNA) supporting the three-wave theory.',
    1,
    '{"explanation":"Section E provides additional genetic evidence (mitochondrial DNA) supporting the three-wave theory.","fromPassage":"Geneticist Douglas Wallace has studied mitochondrial DNA* in blood samples from three widely separated Native American groups: Pima-Papago Indians in Arizona, Maya Indians on the Yucatán peninsula, Mexico, and Ticuna Indians in the Upper Amazon region of Brazil. As would have been predicted by Robert Williams''s work, all three groups appear to be descended from the same ancestral (Paleo-Indian) population.","instruction":"<p>Choose the correct letter</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '90164c5f-bdd0-4336-970c-e9e524f40f01',
    'reading',
    'dbd69201-e109-4d4b-b3ca-920faac597cb',
    19,
    'matching_headings',
    'Question 19',
    '["The results of the research into blood-variants","Dental evidence","Greenberg''s analysis of the dental and linguistic evidence","Developments in the methods used to study early population movements","Indian migration from Canada to the U.S.A.","Further genetic evidence relating to the three-wave theory","Long-standing questions about prehistoric migration to America","Conflicting views of the three-wave theory, based on non-genetic evidence","Questions about the causes of prehistoric migration to America","How analysis of blood-variants measures the closeness of the relationship between different populations"]'::jsonb,
    'ii',
    'Section F focuses on dental studies and how tooth characteristics support migration theories.',
    1,
    '{"explanation":"Section F focuses on dental studies and how tooth characteristics support migration theories.","fromPassage":"There are two other kinds of research that have thrown some light on the origins of the Native American population; they involve the study of teeth and of languages. The biological anthropologist Christy Turner is an expert in the analysis of changing physical characteristics in human teeth.","instruction":"<p>Choose the correct letter</p>"}'::jsonb
);

-- ============================================
-- Guli Muhammadova 7-3 - Part 3: European Forests: Challenges, Functions, and Policy Responses
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '57195535-5744-48e9-8de7-37419aa25bb9',
    'Guli Muhammadova 7-3 - Part 3: European Forests: Challenges, Functions, and Policy Responses',
    'Cambridge IELTS - European Forests: Challenges, Functions, and Policy Responses',
    'medium',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    '9c00cd1f-8496-4887-ba3a-40ef267e12bf',
    '57195535-5744-48e9-8de7-37419aa25bb9',
    1,
    'European Forests: Challenges, Functions, and Policy Responses',
    'Forests are one of the main elements of our natural heritage. The decline of Europe''s forests over the last decade and a half has led to an increasing awareness and understanding of the serious imbalances which threaten them. European countries are becoming increasingly concerned by major threats to European forests, threats which know no frontiers other than those of geography or climate: air pollution, soil deterioration, the increasing number of forest fires and sometimes even the mismanagement of our woodland and forest heritage. There has been a growing awareness of the need for countries to get together to co-ordinate their policies. In December 1990, Strasbourg hosted the first Ministerial Conference on the protection of Europe''s forests. The conference brought together 31 countries from both Western and Eastern Europe. The topics discussed included the co-ordinated study of the destruction of forests, as well as how to combat forest fires and the extension of European research programs on the forest ecosystem. The preparatory work for the conference had been undertaken at two meetings of experts. Their initial task was to decide which of the many forest problems of concern to Europe involved the largest number of countries and might be the subject of joint action. Those confined to particular geographical areas, such as countries bordering the Mediterranean or the Nordic countries therefore had to be discarded. However, this does not mean that in future they will be ignored.

As a whole, European countries see forests as performing a triple function: biological, economic and recreational. The first is to act as a ''green lung'' for our planet; by means of photosynthesis, forests produce oxygen through the transformation of solar energy, thus fulfilling what for humans is the essential role of an immense, non-polluting power plant.

At the same time, forests provide raw materials for human activities through their constantly renewed production of wood. Finally, they offer those condemned to spend five days a week in an urban environment an unrivalled area of freedom to unwind and take part in a range of leisure activities, such as hunting, riding and hiking. The economic importance of forests has been understood since the dawn of man - wood was the first fuel. The other aspects have been recognised only for a few centuries but they are becoming more and more important. Hence, there is a real concern throughout Europe about the damage to the forest environment which threatens these three basic roles.

The myth of the ''natural'' forest has survived, yet there are effectively no remaining ''primary'' forests in Europe. All European forests are artificial, having been adapted and exploited by man for thousands of years. This means that a forest policy is vital, that it must transcend national frontiers and generations of people, and that it must allow for the inevitable changes that take place in the forests, in needs, and hence in policy. The Strasbourg conference was one of the first events on such a scale to reach this conclusion. A general declaration was made that "a central place in any ecologically coherent forest policy must be given to continuity over time and to the possible effects of unforeseen events, to ensure that the full potential of these forests is maintained".

That general declaration was accompanied by six detailed resolutions to assist national policy-making. The first proposes the extension and systematisation of surveillance sites to monitor forest decline. Forest decline is still poorly understood but leads to the loss of a high proportion of a tree''s needles or leaves. The entire continent and the majority of species are now affected: between 30% and 50% of the tree population. The condition appears to result from the cumulative effect of a number of factors, with atmospheric pollutants the principal culprits. Compounds of nitrogen and sulphur dioxide should be particularly closely watched. However, their effects are probably accentuated by climatic factors, such as drought and hard winters, or soil imbalances such as soil acidification, which damages the roots. The second resolution concentrates on the need to preserve the genetic diversity of European forests. The aim is to reverse the decline in the number of tree species or at least to preserve the ''genetic material'' of all of them. Although forest fires do not affect all of Europe to the same extent, the amount of damage caused the experts to propose as the third resolution that the Strasbourg conference consider the establishment of a European databank on the subject. All information used in the development of national preventative policies would become generally available. The subject of the fourth resolution discussed by the ministers was mountain forests. In Europe, it is undoubtedly the mountain ecosystem which has changed most rapidly and is most at risk. A thinly scattered permanent population and development of leisure activities, particularly skiing, have resulted in significant long-term changes to the local ecosystems. Proposed developments include a preferential research program on mountain forests. The fifth resolution relaunched the European research network on the physiology of trees, called Eurosilva. Eurosilva should support joint European research on tree diseases and their physiological and biochemical aspects. Each country concerned could increase the number of scholarships and other financial support for doctoral theses and research projects in this area. Finally, the conference established the framework for a European research network on forest ecosystems. This would also involve harmonising activities in individual countries as well as identifying a number of priority research topics relating to the protection of forests. The Strasbourg conference''s main concern was to provide for the future. This was the initial motivation, one now shared by all 31 participants representing 31 European countries. Their final text commits them to on-going discussion between government representatives with responsibility for forests.',
    951,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd5072a86-bf4b-4f3f-8501-c995dd664c5c',
    'reading',
    '9c00cd1f-8496-4887-ba3a-40ef267e12bf',
    27,
    'tfng',
    'Forest problems of Mediterranean countries are to be discussed at the next meeting of experts.',
    NULL,
    'NOT GIVEN',
    'The passage says Mediterranean issues were discarded from joint action for this conference, but it does not state they will be discussed at the next meeting.',
    1,
    '{"explanation":"The passage says Mediterranean issues were discarded from joint action for this conference, but it does not state they will be discussed at the next meeting.","fromPassage":"Those confined to particular geographical areas, such as countries bordering the Mediterranean or the Nordic countries therefore had to be discarded.","instruction":"<p><strong><em>TRUE </em></strong><em>if the statement agrees with the information </em></p><p><strong><em>FALSE </em></strong><em>if the statement contradicts the information </em></p><p><strong><em>NOT GIVEN </em></strong><em>if there is no information on this</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '3122344b-f8c3-4e1e-8bb1-684da58e405e',
    'reading',
    '9c00cd1f-8496-4887-ba3a-40ef267e12bf',
    28,
    'tfng',
    'Problems in Nordic countries were excluded because they are outside the European Economic Community.',
    NULL,
    'FALSE',
    'Nordic problems were excluded because they were geographically limited, not because of their relationship to the European Economic Community.',
    1,
    '{"explanation":"Nordic problems were excluded because they were geographically limited, not because of their relationship to the European Economic Community.","fromPassage":"Those confined to particular geographical areas, such as countries bordering the Mediterranean or the Nordic countries therefore had to be discarded.","instruction":"<p><strong><em>TRUE </em></strong><em>if the statement agrees with the information </em></p><p><strong><em>FALSE </em></strong><em>if the statement contradicts the information </em></p><p><strong><em>NOT GIVEN </em></strong><em>if there is no information on this</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '3412812a-85d0-4b51-93f9-5444d31e537b',
    'reading',
    '9c00cd1f-8496-4887-ba3a-40ef267e12bf',
    29,
    'tfng',
    'Forests are a renewable source of raw material.',
    NULL,
    'TRUE',
    'The passage clearly states that forests provide constantly renewed production of wood, meaning they are renewable.',
    1,
    '{"explanation":"The passage clearly states that forests provide constantly renewed production of wood, meaning they are renewable.","fromPassage":"At the same time, forests provide raw materials for human activities through their constantly renewed production of wood.","instruction":"<p><strong><em>TRUE </em></strong><em>if the statement agrees with the information </em></p><p><strong><em>FALSE </em></strong><em>if the statement contradicts the information </em></p><p><strong><em>NOT GIVEN </em></strong><em>if there is no information on this</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'da9389c8-6af5-410c-9265-bda65b941d2d',
    'reading',
    '9c00cd1f-8496-4887-ba3a-40ef267e12bf',
    30,
    'tfng',
    'The biological functions of forests were recognised only in the twentieth century.',
    NULL,
    'FALSE',
    'The passage says the non-economic aspects were recognised only for a few centuries, not specifically in the twentieth century.',
    1,
    '{"explanation":"The passage says the non-economic aspects were recognised only for a few centuries, not specifically in the twentieth century.","fromPassage":"The other aspects have been recognised only for a few centuries but they are becoming more and more important.","instruction":"<p><strong><em>TRUE </em></strong><em>if the statement agrees with the information </em></p><p><strong><em>FALSE </em></strong><em>if the statement contradicts the information </em></p><p><strong><em>NOT GIVEN </em></strong><em>if there is no information on this</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'bb1828ee-5615-44bf-a0c8-cd8d5e2a3da1',
    'reading',
    '9c00cd1f-8496-4887-ba3a-40ef267e12bf',
    31,
    'tfng',
    'Natural forests still exist in parts of Europe.',
    NULL,
    'FALSE',
    'The passage explicitly states that there are no remaining primary (natural) forests in Europe.',
    1,
    '{"explanation":"The passage explicitly states that there are no remaining primary (natural) forests in Europe.","fromPassage":"The myth of the ''natural'' forest has survived, yet there are effectively no remaining ''primary'' forests in Europe.","instruction":"<p><strong><em>TRUE </em></strong><em>if the statement agrees with the information </em></p><p><strong><em>FALSE </em></strong><em>if the statement contradicts the information </em></p><p><strong><em>NOT GIVEN </em></strong><em>if there is no information on this</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'f80092e3-e04f-4aff-9c3b-2225fc46d0f9',
    'reading',
    '9c00cd1f-8496-4887-ba3a-40ef267e12bf',
    32,
    'tfng',
    'Forest policy should be limited by national boundaries.',
    NULL,
    'FALSE',
    'The passage says forest policy must transcend national frontiers, meaning it should not be limited by them.',
    1,
    '{"explanation":"The passage says forest policy must transcend national frontiers, meaning it should not be limited by them.","fromPassage":"This means that a forest policy is vital, that it must transcend national frontiers and generations of people, and that it must allow for the inevitable changes that take place in the forests, in needs, and hence in policy.","instruction":"<p><strong><em>TRUE </em></strong><em>if the statement agrees with the information </em></p><p><strong><em>FALSE </em></strong><em>if the statement contradicts the information </em></p><p><strong><em>NOT GIVEN </em></strong><em>if there is no information on this</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '08b5d6fa-7e6d-4e38-ba0b-774ea4f5fffd',
    'reading',
    '9c00cd1f-8496-4887-ba3a-40ef267e12bf',
    33,
    'tfng',
    'The Strasbourg conference decided that a forest policy must allow for the possibility of change.',
    NULL,
    'TRUE',
    'The declaration states that forest policy must consider possible unforeseen events and continuity over time, implying allowance for change.',
    1,
    '{"explanation":"The declaration states that forest policy must consider possible unforeseen events and continuity over time, implying allowance for change.","fromPassage":"This means that a forest policy is vital, that it must transcend national frontiers and generations of people, and that it must allow for the inevitable changes that take place in the forests, in needs, and hence in policy.","instruction":"<p><strong><em>TRUE </em></strong><em>if the statement agrees with the information </em></p><p><strong><em>FALSE </em></strong><em>if the statement contradicts the information </em></p><p><strong><em>NOT GIVEN </em></strong><em>if there is no information on this</em></p>"}'::jsonb
);

