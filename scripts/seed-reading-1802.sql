-- ============================================
-- Auto-generated seed for: Day 16: Rubber
-- Source API ID: 1802
-- Generated: 2026-02-26T11:44:11.642Z
-- ============================================

-- ============================================
-- Day 16: Rubber - Part 1: Rubber
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '24a38492-b7c9-45de-b339-a5d67040854a',
    'Day 16: Rubber - Part 1: Rubber',
    'Cambridge IELTS - Rubber',
    'easy',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    '2c26a515-e05b-45bb-8508-273386ce1ec6',
    '24a38492-b7c9-45de-b339-a5d67040854a',
    1,
    'Rubber',
    'The plants that produce rubber are spread right across the globe, and grow in many different habitats. One might think it likely, therefore, that humankind has known about rubber for thousands of years. Yet, unlike other crops of economic importance, rubber led a relatively anonymous life until the last 150 years or so. The Indians of South America appear to be the first people to have understood the properties of rubber, and the Aztecs of what is now Mexico were the first to be recorded using the substance; a wall painting dating back to the sixth century depicts a scene of a tributary offering of crude rubber. With the arrival of Columbus in the Americas and the resulting Spanish influx, further evidence starts to appear concerning the Native American use of rubber. Antonio de Herrera y Tordesillas describes a ritual game played with a rubber ball at the court of the Aztec Emperor Montezuma II, and the Mayan and Toltec people are known to have taken part in similar activities. Rubber was also used to make raincoats, shoes, jars, torches and musical instruments, all of which must have been made from the indigenous Castilla elastica, as the Para plant now favoured for rubber cultivation does not grow in the Mexican region.

The first description of latex (liquid rubber) extraction is made by Juan de Torquemada, who noted that if a receptacle was not at hand the Native Americans would place the latex on their bodies to allow it to solidify. However, no real interest in rubber was shown by any European until Charles de la Condamine, a French mathematician, published an account of his journey to South America in 1735. The journey was undertaken on behalf of the Paris Academy of Sciences to measure an arc of the meridian line on the equator, but the journey home was to turn out to be more significant than the true purpose of the trip. Condamine explored Brazil and Peru and discovered how the local people used one single piece of coagulated latex to make boots. The boots were impervious to water and, when smoked, looked like real leather. In 1747 the first description of the rubber tree and latex tapping was made by a military engineer and amateur botanist, François Fresneau, who was posted to French Guiana. The publications of Condamine and Fresneau created considerable excitement among French scientists, and an attempt was made to discover a solvent that could turn the crude rubber into a substance for commercial exploitation.

In 1818 a British medical student named James Syme first used rubber to make waterproof cloth. Another early use of the substance was as an eraser of pencil marks, hence the name ''rubber''. This was complemented by balloons, rubber bands, braces, boots for the army and other ideas that met with varying degrees of success. In 1820 Thomas Hancock, an English manufacturer of rubber goods such as driving belts, industrial rollers and rubber hoses, invented a machine he called the ''piokle'', which chewed up waste strips for re-use. It was discovered that the masticated rubber was more malleable, while maintaining much of its elasticity. In Scotland at the same time Charles Mackintosh had discovered a way of using rubber as waterproofing material, by a process he patented in 1823. Hancock and Mackintosh joined forces in 1834, and three years later Hancock invented a machine for spreading rubber onto material.

Despite their beneficial qualities, such as waterproofing, rubber goods were still not particularly popular as they had some major flaws, including the fact that they dissolved malodorously. They also became pliant when warm and rigid when cold. Then in 1839 the American Charles Goodyear discovered that it was possible to stabilise rubber by mixing it with sulphur while exposing it to heat - a process he called vulcanisation - and the full versatility of this extraordinary substance became apparent.

Rubber goods could now be manufactured which had all the beneficial qualities of the material, such as durability, elasticity and variability, but which were not sticky, soluble or governed by the vagaries of the weather. The economic potential of rubber was now clearly evident. It played an important role in the Industrial Revolution, being employed in the steam engines found in factories, mills, mines and railways. It made a triumphant entrance as a new and innovative material at the Great Exhibition of 1851, where shoes, airbeds, furniture and clothing made out of newly improved rubber were proudly displayed.

One of the most important rubber inventions was made in 1888, when an Irishman called John Boyd Dunlop produced the first pneumatic tyre. Solid rubber tyres had been used for the previous 18 years, but Dunlop''s new design, which he updated in 1890, immediately became popular. In 1895 Dunlop''s tyres were first used in motor cars, and with the mass production of cars just over the horizon the rubber industry had never looked healthier. The import levels of rubber over the nineteenth century bear witness to its irrepressible rise. In 1830 Britain had imported just 211 kg of crude rubber. This had risen to 10,000kg in 1857, and by 1874 levels were just under six times as much again.',
    863,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'f1ccb264-46cd-4d84-8b17-d3b8cbcbdcb4',
    'reading',
    '2c26a515-e05b-45bb-8508-273386ce1ec6',
    1,
    'tfng',
    'Rubber plants grow only in certain regions of the world.',
    NULL,
    'FALSE',
    'The passage says rubber plants grow across the globe and in many habitats, not only in limited regions.',
    1,
    '{"explanation":"The passage says rubber plants grow across the globe and in many habitats, not only in limited regions.","fromPassage":"The plants that produce rubber are spread right across the globe, and grow in many different habitats.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '12063e1c-8524-4e2e-ae89-c8e1718cd69f',
    'reading',
    '2c26a515-e05b-45bb-8508-273386ce1ec6',
    2,
    'tfng',
    'Rubber was extracted in Mexico as early as the sixth century.',
    NULL,
    'TRUE',
    'The passage states that a sixth-century painting showed people offering rubber, which means it was used in Mexico at that time.',
    1,
    '{"explanation":"The passage states that a sixth-century painting showed people offering rubber, which means it was used in Mexico at that time.","fromPassage":"a wall painting dating back to the sixth century depicts a scene of a tributary offering of crude rubber.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '31903fb3-f744-4319-8434-ae0e9c8e8eeb',
    'reading',
    '2c26a515-e05b-45bb-8508-273386ce1ec6',
    3,
    'tfng',
    'Rubber from the Castilla elastica plant is of poorer quality than that from the Para plant.',
    NULL,
    'NOT GIVEN',
    'The passage says Castilla elastica was used by ancient peoples and Para rubber does not grow there — but it never compares the quality of the two types. Therefore, the statement cannot be confirmed.',
    1,
    '{"explanation":"The passage says Castilla elastica was used by ancient peoples and Para rubber does not grow there — but it never compares the quality of the two types. Therefore, the statement cannot be confirmed.","fromPassage":"all of which must have been made from the indigenous Castilla elastica, as the Para plant now favoured for rubber cultivation does not grow in the Mexican region.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0a21d0e3-692e-45c0-9b08-f06c29f09fc0',
    'reading',
    '2c26a515-e05b-45bb-8508-273386ce1ec6',
    4,
    'tfng',
    'A French mathematician inspired real interest in rubber amongst Europeans.',
    NULL,
    'TRUE',
    'The passage clearly says that Europeans showed no interest in rubber until Condamine’s report was published.',
    1,
    '{"explanation":"The passage clearly says that Europeans showed no interest in rubber until Condamine’s report was published.","fromPassage":"However, no real interest in rubber was shown by any European until Charles de la Condamine, a French mathematician, published an account of his journey to South America in 1735.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'c01ee6eb-1477-4d88-9dd2-24c5036efc7b',
    'reading',
    '2c26a515-e05b-45bb-8508-273386ce1ec6',
    5,
    'tfng',
    'The process of vulcanisation was discovered by accident.',
    NULL,
    'NOT GIVEN',
    'The passage states that Goodyear discovered vulcanisation, but does not say whether it was accidental or intentional.',
    1,
    '{"explanation":"The passage states that Goodyear discovered vulcanisation, but does not say whether it was accidental or intentional.","fromPassage":"Then in 1839 the American Charles Goodyear discovered that it was possible to stabilise rubber by mixing it with sulphur while exposing it to heat - a process he called vulcanisation - and the full versatility of this extraordinary substance became apparent.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '51b59242-1215-4e05-8b0f-39355dca1444',
    'reading',
    '2c26a515-e05b-45bb-8508-273386ce1ec6',
    6,
    'tfng',
    'Imports of crude rubber into Britain fell during the nineteenth century.',
    NULL,
    'FALSE',
    'Imports increased massively, not decreased.',
    1,
    '{"explanation":"Imports increased massively, not decreased.","fromPassage":"In 1830 Britain had imported just 211 kg of crude rubber. This had risen to 10,000 kg in 1857, and by 1874 levels were just under six times as much again.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'dd18decc-738a-4fd5-9db5-27fc7af8b5db',
    'reading',
    '2c26a515-e05b-45bb-8508-273386ce1ec6',
    7,
    'summary_completion',
    'Question 7',
    NULL,
    'waterproof cloth',
    'The passage states that the first major 1818 invention using rubber was waterproof cloth.',
    1,
    '{"explanation":"The passage states that the first major 1818 invention using rubber was waterproof cloth.","fromPassage":"In 1818 a British medical student named James Syme first used rubber to make waterproof cloth.","instruction":"<p>Answer the questions. Write&nbsp;<strong>NO MORE THAN THREE WORDS </strong>from the text&nbsp;for&nbsp;each&nbsp;answer.</p>","context":"<h3><strong>The Commercial Development of Rubber</strong></h3><p>Early European travellers gave accounts of various rubber objects in use in Central and South America, and these accounts created interest in the commercial exploitation of rubber. In 1818,&nbsp; ______ &nbsp;was produced using rubber, and in 1820 a machine was invented for recycling&nbsp; ______ &nbsp;of rubber. </p><p><br></p><p>Over the next few years, other attempts were made to improve rubber, but some problems remained. For example, rubber products smelt bad when they were dissolved, and could turn either soft or&nbsp; ______ &nbsp;depending on the temperature.&nbsp;However, in 1839 a new process to&nbsp; ______ &nbsp;the substance greatly increased its potential. For example, rubber was used in the creation of the&nbsp; ______ &nbsp;industry during the Industrial Revolution.Then in 1888 the&nbsp; ______ &nbsp;was developed, and a few years later the&nbsp; ______ &nbsp;of the motor car began.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '6bdbf787-12b7-4f83-900a-d4f1d61cc0a8',
    'reading',
    '2c26a515-e05b-45bb-8508-273386ce1ec6',
    8,
    'summary_completion',
    'Question 8',
    NULL,
    'waste strips',
    'Hancock invented a machine to reuse waste strips of rubber.',
    1,
    '{"explanation":"Hancock invented a machine to reuse waste strips of rubber.","fromPassage":"he invented a machine he called the ‘piokle’, which chewed up waste strips for re-use.","instruction":"<p>Answer the questions. Write&nbsp;<strong>NO MORE THAN THREE WORDS </strong>from the text&nbsp;for&nbsp;each&nbsp;answer.</p>","context":"<h3><strong>The Commercial Development of Rubber</strong></h3><p>Early European travellers gave accounts of various rubber objects in use in Central and South America, and these accounts created interest in the commercial exploitation of rubber. In 1818,&nbsp; ______ &nbsp;was produced using rubber, and in 1820 a machine was invented for recycling&nbsp; ______ &nbsp;of rubber. </p><p><br></p><p>Over the next few years, other attempts were made to improve rubber, but some problems remained. For example, rubber products smelt bad when they were dissolved, and could turn either soft or&nbsp; ______ &nbsp;depending on the temperature.&nbsp;However, in 1839 a new process to&nbsp; ______ &nbsp;the substance greatly increased its potential. For example, rubber was used in the creation of the&nbsp; ______ &nbsp;industry during the Industrial Revolution.Then in 1888 the&nbsp; ______ &nbsp;was developed, and a few years later the&nbsp; ______ &nbsp;of the motor car began.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'cc00d24b-bf29-477e-94bb-ae2fde1cf400',
    'reading',
    '2c26a515-e05b-45bb-8508-273386ce1ec6',
    9,
    'summary_completion',
    'Question 9',
    NULL,
    'rigid',
    'Before improvements, rubber became soft when hot and rigid when cold.',
    1,
    '{"explanation":"Before improvements, rubber became soft when hot and rigid when cold.","fromPassage":"They also became pliant when warm and rigid when cold.","instruction":"<p>Answer the questions. Write&nbsp;<strong>NO MORE THAN THREE WORDS </strong>from the text&nbsp;for&nbsp;each&nbsp;answer.</p>","context":"<h3><strong>The Commercial Development of Rubber</strong></h3><p>Early European travellers gave accounts of various rubber objects in use in Central and South America, and these accounts created interest in the commercial exploitation of rubber. In 1818,&nbsp; ______ &nbsp;was produced using rubber, and in 1820 a machine was invented for recycling&nbsp; ______ &nbsp;of rubber. </p><p><br></p><p>Over the next few years, other attempts were made to improve rubber, but some problems remained. For example, rubber products smelt bad when they were dissolved, and could turn either soft or&nbsp; ______ &nbsp;depending on the temperature.&nbsp;However, in 1839 a new process to&nbsp; ______ &nbsp;the substance greatly increased its potential. For example, rubber was used in the creation of the&nbsp; ______ &nbsp;industry during the Industrial Revolution.Then in 1888 the&nbsp; ______ &nbsp;was developed, and a few years later the&nbsp; ______ &nbsp;of the motor car began.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '17ec0b66-810c-4d58-9791-3a0fa1800c2b',
    'reading',
    '2c26a515-e05b-45bb-8508-273386ce1ec6',
    10,
    'summary_completion',
    'Question 10',
    NULL,
    'stabilise',
    'Goodyear discovered a process that stabilised rubber.',
    1,
    '{"explanation":"Goodyear discovered a process that stabilised rubber.","fromPassage":"it was possible to stabilise rubber by mixing it with sulphur while exposing it to heat - a process he called vulcanisation","instruction":"<p>Answer the questions. Write&nbsp;<strong>NO MORE THAN THREE WORDS </strong>from the text&nbsp;for&nbsp;each&nbsp;answer.</p>","context":"<h3><strong>The Commercial Development of Rubber</strong></h3><p>Early European travellers gave accounts of various rubber objects in use in Central and South America, and these accounts created interest in the commercial exploitation of rubber. In 1818,&nbsp; ______ &nbsp;was produced using rubber, and in 1820 a machine was invented for recycling&nbsp; ______ &nbsp;of rubber. </p><p><br></p><p>Over the next few years, other attempts were made to improve rubber, but some problems remained. For example, rubber products smelt bad when they were dissolved, and could turn either soft or&nbsp; ______ &nbsp;depending on the temperature.&nbsp;However, in 1839 a new process to&nbsp; ______ &nbsp;the substance greatly increased its potential. For example, rubber was used in the creation of the&nbsp; ______ &nbsp;industry during the Industrial Revolution.Then in 1888 the&nbsp; ______ &nbsp;was developed, and a few years later the&nbsp; ______ &nbsp;of the motor car began.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '145f5b0b-d85c-464c-a12a-85ef6a70af40',
    'reading',
    '2c26a515-e05b-45bb-8508-273386ce1ec6',
    11,
    'summary_completion',
    'Question 11',
    NULL,
    'steam engines',
    'Improved rubber was used in steam engines during the Industrial Revolution.',
    1,
    '{"explanation":"Improved rubber was used in steam engines during the Industrial Revolution.","fromPassage":"It played an important role in the Industrial Revolution, being employed in the steam engines found in factories, mills, mines and railways.","instruction":"<p>Answer the questions. Write&nbsp;<strong>NO MORE THAN THREE WORDS </strong>from the text&nbsp;for&nbsp;each&nbsp;answer.</p>","context":"<h3><strong>The Commercial Development of Rubber</strong></h3><p>Early European travellers gave accounts of various rubber objects in use in Central and South America, and these accounts created interest in the commercial exploitation of rubber. In 1818,&nbsp; ______ &nbsp;was produced using rubber, and in 1820 a machine was invented for recycling&nbsp; ______ &nbsp;of rubber. </p><p><br></p><p>Over the next few years, other attempts were made to improve rubber, but some problems remained. For example, rubber products smelt bad when they were dissolved, and could turn either soft or&nbsp; ______ &nbsp;depending on the temperature.&nbsp;However, in 1839 a new process to&nbsp; ______ &nbsp;the substance greatly increased its potential. For example, rubber was used in the creation of the&nbsp; ______ &nbsp;industry during the Industrial Revolution.Then in 1888 the&nbsp; ______ &nbsp;was developed, and a few years later the&nbsp; ______ &nbsp;of the motor car began.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '9037e44c-c713-42aa-81d0-a4147bcc008f',
    'reading',
    '2c26a515-e05b-45bb-8508-273386ce1ec6',
    12,
    'summary_completion',
    'Question 12',
    NULL,
    'first pneumatic tyre',
    'Dunlop invented the first pneumatic tyre in 1888.',
    1,
    '{"explanation":"Dunlop invented the first pneumatic tyre in 1888.","fromPassage":"One of the most important rubber inventions was made in 1888, when an Irishman called John Boyd Dunlop produced the first pneumatic tyre.","instruction":"<p>Answer the questions. Write&nbsp;<strong>NO MORE THAN THREE WORDS </strong>from the text&nbsp;for&nbsp;each&nbsp;answer.</p>","context":"<h3><strong>The Commercial Development of Rubber</strong></h3><p>Early European travellers gave accounts of various rubber objects in use in Central and South America, and these accounts created interest in the commercial exploitation of rubber. In 1818,&nbsp; ______ &nbsp;was produced using rubber, and in 1820 a machine was invented for recycling&nbsp; ______ &nbsp;of rubber. </p><p><br></p><p>Over the next few years, other attempts were made to improve rubber, but some problems remained. For example, rubber products smelt bad when they were dissolved, and could turn either soft or&nbsp; ______ &nbsp;depending on the temperature.&nbsp;However, in 1839 a new process to&nbsp; ______ &nbsp;the substance greatly increased its potential. For example, rubber was used in the creation of the&nbsp; ______ &nbsp;industry during the Industrial Revolution.Then in 1888 the&nbsp; ______ &nbsp;was developed, and a few years later the&nbsp; ______ &nbsp;of the motor car began.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '90393437-9be7-46c0-bcc1-b06674ebc3cf',
    'reading',
    '2c26a515-e05b-45bb-8508-273386ce1ec6',
    13,
    'summary_completion',
    'Question 13',
    NULL,
    'mass production',
    'Dunlop’s tyres entered motor cars just before mass production of cars began.',
    1,
    '{"explanation":"Dunlop’s tyres entered motor cars just before mass production of cars began.","fromPassage":"In 1895 Dunlop''s tyres were first used in motor cars, and with the mass production of cars just over the horizon the rubber industry had never looked healthier.","instruction":"<p>Answer the questions. Write&nbsp;<strong>NO MORE THAN THREE WORDS </strong>from the text&nbsp;for&nbsp;each&nbsp;answer.</p>","context":"<h3><strong>The Commercial Development of Rubber</strong></h3><p>Early European travellers gave accounts of various rubber objects in use in Central and South America, and these accounts created interest in the commercial exploitation of rubber. In 1818,&nbsp; ______ &nbsp;was produced using rubber, and in 1820 a machine was invented for recycling&nbsp; ______ &nbsp;of rubber. </p><p><br></p><p>Over the next few years, other attempts were made to improve rubber, but some problems remained. For example, rubber products smelt bad when they were dissolved, and could turn either soft or&nbsp; ______ &nbsp;depending on the temperature.&nbsp;However, in 1839 a new process to&nbsp; ______ &nbsp;the substance greatly increased its potential. For example, rubber was used in the creation of the&nbsp; ______ &nbsp;industry during the Industrial Revolution.Then in 1888 the&nbsp; ______ &nbsp;was developed, and a few years later the&nbsp; ______ &nbsp;of the motor car began.</p>"}'::jsonb
);

