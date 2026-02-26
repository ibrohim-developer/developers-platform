-- ============================================
-- Auto-generated seed for: Day 4: A Brief History of Humans and Food
-- Source API ID: 1358
-- Generated: 2026-02-26T11:43:26.794Z
-- ============================================

-- ============================================
-- Day 4: A Brief History of Humans and Food - Part 1: A Brief History of Humans and Food
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '31b6da8c-5a74-45a5-9aaf-ff0ce56abdf4',
    'Day 4: A Brief History of Humans and Food - Part 1: A Brief History of Humans and Food',
    'Cambridge IELTS - A Brief History of Humans and Food',
    'easy',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    '628ffd58-3998-41c2-8455-cc71521c55ec',
    '31b6da8c-5a74-45a5-9aaf-ff0ce56abdf4',
    1,
    'A Brief History of Humans and Food',
    'During the journey from our hunter-gatherer ancestors to the present day, there have been three seismic changes that have impacted the food we eat: the discovery of cooking, the emergence of agriculture, and the invention of methods of preserving food.

The 19th-century scientist Charles Darwin thought that cooking, after language, was the greatest discovery made by man. All of us eat some raw food, such as fruit and vegetables, but the great majority of food we consume is cooked. Cooking can turn plants that are inedible into edible food by destroying toxic chemicals that plants often manufacture to protect themselves against attack by insects or other herbivorous animals. These toxic chemicals are referred to as "plant secondary compounds" because they are not directly involved in the plant''s normal growth, development, and reproduction, and are produced purely as chemical defenses. They give many of the plants we consume, such as coffee or Brussels sprouts, their bitter taste.

Cooked food is often more digestible because heat breaks down tough cellulose cell walls in plants or tough connective tissue in animals. Chewing raw turnip, a plate of uncooked rice, or a raw leg of lamb is much harder work than eating the cooked equivalent. The energy expended in chewing to break down the tough material is replaced by energy from the fuel used in cooking the food, so the ratio of energy gained to energy expended by the body is greater when food is cooked.

Until the development of agriculture, hunter-gatherers spent up to seven hours a day gathering food. This all began to change around 10,500 years ago with the advent of farming, which led to dramatic changes in human societies. People began to create a variety of new tools to aid survival, and in turn, populations increased in size. These changes led to the possibility of specialization of different tasks within society. Around this time, writing became more sophisticated and allowed people to maintain records of the harvest and taxes. Eventually, formalized structures of government were established as people settled in one area.

The arrival of agriculture meant that, for the first time, our ancestors had more food than they could eat immediately. This, combined with the seasonality of production, led them to discover methods of preserving food: smoking, drying, adding acid by fermentation, or adding salt. These four methods all share one feature in common—they make the food a more hostile environment for bacteria that can cause it to spoil. They also tend to slow down natural chemical reactions in the food that would cause decay.

Although foods today are still preserved in these ancient ways, two more recent methods of preserving food have become more common: canning and freezing. Canning was invented by a Frenchman, Nicholas Appert, in the early 19th century. He sealed food in bottles fabricated from glass and then heated them in boiling water to cook the contents. Appert''s method had great advantages over older methods of food preservation: it could be applied to a wide range of foods, and the flavor and texture were similar to freshly cooked products. His idea was soon copied by an Englishman, Peter Durand. Until this point, containers had been too heavy to be widely used, but Durand produced the first ones which were lightweight and resistant to damage. Two years later, in 1812, two Englishmen, Bryan Donkin and John Hall, started the commercial canning of food, although the real rise in popularity of canning had to wait until the invention of the can opener in 1855. Until then, cans were opened with a chisel and hammer. Canning is an extremely effective way of preserving food: one can containing meat, dating back to 1824, was opened in 1939, and the contents were still in good condition.

In the 21st century, the dominance of canning as a method of food preservation has been overtaken by freezing. Chilling food to keep it fresh is an old idea. The earliest mentions of icehouses, thick-walled buildings, half underground, date back to 1700 BC in northwest Iran. In early 16th-century Italy, water was mixed with chemicals to lower its freezing point to -18 degrees Celsius. Several centuries later, frozen fish and other goods were transported by ship from Australia to England. However, the modern frozen food industry was started in the 1920s by an American, Clarence Birdseye. While on a fishing trip with the Inuit in the Canadian Arctic, Birdseye observed that rapid freezing creates smaller ice crystals and therefore causes less damage to food—a discovery he had not expected. Nevertheless, the major growth in demand for frozen food came with the arrival of freezers in ordinary people’s homes. The advantages of frozen over canned food include the fact that the flavor and consistency are often identical to the fresh product, and freezing can be used to preserve a wide variety of foods.',
    808,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0a41782b-d8b8-4f39-ad48-87f667b8fa59',
    'reading',
    '628ffd58-3998-41c2-8455-cc71521c55ec',
    1,
    'tfng',
    'According to Darwin, cooking was the most significant development in human history.',
    NULL,
    'FALSE',
    NULL,
    1,
    '{"instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'b41ef26a-f804-4dfe-90c0-ac937e66df5b',
    'reading',
    '628ffd58-3998-41c2-8455-cc71521c55ec',
    2,
    'tfng',
    'The process of cooking gets rid of some plant poisons.',
    NULL,
    'TRUE',
    NULL,
    1,
    '{"instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'bae4609d-9638-42d8-b165-3b62ec67cfbe',
    'reading',
    '628ffd58-3998-41c2-8455-cc71521c55ec',
    3,
    'tfng',
    'Eating cooked food is more energy efficient than eating raw food.',
    NULL,
    'TRUE',
    NULL,
    1,
    '{"instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '4e15e21c-4966-4c51-bdf1-92a4c6847c3e',
    'reading',
    '628ffd58-3998-41c2-8455-cc71521c55ec',
    4,
    'tfng',
    'Clarence Birdseye had previously worked in the Australian food industry.',
    NULL,
    'NOT GIVEN',
    NULL,
    1,
    '{"instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '02bd501d-e9bf-4a8e-b749-7c80d115629f',
    'reading',
    '628ffd58-3998-41c2-8455-cc71521c55ec',
    5,
    'tfng',
    'Birdseye’s trip with the Inuit confirmed what he already believed about rapid freezing.',
    NULL,
    'FALSE',
    NULL,
    1,
    '{"instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '77e1314d-56f7-476e-9fee-732485674ea0',
    'reading',
    '628ffd58-3998-41c2-8455-cc71521c55ec',
    6,
    'gap_fill',
    'Question 6',
    NULL,
    'populations',
    NULL,
    1,
    '{"instruction":"<p><strong>Complete the notes below.</strong></p><p>Choose <strong>ONE WORD ONLY</strong> from the passage for each answer.</p>","context":"<h3><strong>The development of agriculture and food preservation</strong></h3><p><strong>The changes agriculture brought about were:</strong></p><ul><li>The development of equipment and larger&nbsp; ______ .</li><li>The ability to keep&nbsp; ______ &nbsp;as writing developed.</li><li>The setting up of organized government.</li></ul><p><strong>Food preservation</strong></p><p>• early methods of food preservation included: smoking, drying and combining food with acid or  ______ .</p><p><strong>Canning</strong></p><ul><li>Nicholas Appert put food into containers made of  ______ .</li><li>Appert''s method resulted in preserved food with the same taste and&nbsp; ______ &nbsp;as fresh food.</li><li>Peter Durand introduced cans which had the advantage of being&nbsp; ______ &nbsp;and hard to break.</li><li>In 1855, the metal can opener replaced the&nbsp; ______ &nbsp;which had been used with a hammer to open cans.</li><li>Some food was still edible after more than 100 years, e.g., an old can of&nbsp; ______ .</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '40f5fcfd-56a3-4eba-8ee2-42c905c931f5',
    'reading',
    '628ffd58-3998-41c2-8455-cc71521c55ec',
    7,
    'gap_fill',
    'Question 7',
    NULL,
    'records',
    NULL,
    1,
    '{"instruction":"<p><strong>Complete the notes below.</strong></p><p>Choose <strong>ONE WORD ONLY</strong> from the passage for each answer.</p>","context":"<h3><strong>The development of agriculture and food preservation</strong></h3><p><strong>The changes agriculture brought about were:</strong></p><ul><li>The development of equipment and larger&nbsp; ______ .</li><li>The ability to keep&nbsp; ______ &nbsp;as writing developed.</li><li>The setting up of organized government.</li></ul><p><strong>Food preservation</strong></p><p>• early methods of food preservation included: smoking, drying and combining food with acid or  ______ .</p><p><strong>Canning</strong></p><ul><li>Nicholas Appert put food into containers made of  ______ .</li><li>Appert''s method resulted in preserved food with the same taste and&nbsp; ______ &nbsp;as fresh food.</li><li>Peter Durand introduced cans which had the advantage of being&nbsp; ______ &nbsp;and hard to break.</li><li>In 1855, the metal can opener replaced the&nbsp; ______ &nbsp;which had been used with a hammer to open cans.</li><li>Some food was still edible after more than 100 years, e.g., an old can of&nbsp; ______ .</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'e84773a1-9f9e-4008-bdc9-a1ef26dc703f',
    'reading',
    '628ffd58-3998-41c2-8455-cc71521c55ec',
    8,
    'gap_fill',
    'Question 8',
    NULL,
    'salt',
    NULL,
    1,
    '{"instruction":"<p><strong>Complete the notes below.</strong></p><p>Choose <strong>ONE WORD ONLY</strong> from the passage for each answer.</p>","context":"<h3><strong>The development of agriculture and food preservation</strong></h3><p><strong>The changes agriculture brought about were:</strong></p><ul><li>The development of equipment and larger&nbsp; ______ .</li><li>The ability to keep&nbsp; ______ &nbsp;as writing developed.</li><li>The setting up of organized government.</li></ul><p><strong>Food preservation</strong></p><p>• early methods of food preservation included: smoking, drying and combining food with acid or  ______ .</p><p><strong>Canning</strong></p><ul><li>Nicholas Appert put food into containers made of  ______ .</li><li>Appert''s method resulted in preserved food with the same taste and&nbsp; ______ &nbsp;as fresh food.</li><li>Peter Durand introduced cans which had the advantage of being&nbsp; ______ &nbsp;and hard to break.</li><li>In 1855, the metal can opener replaced the&nbsp; ______ &nbsp;which had been used with a hammer to open cans.</li><li>Some food was still edible after more than 100 years, e.g., an old can of&nbsp; ______ .</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '32ac4371-b664-4c68-ac62-96ef7d363301',
    'reading',
    '628ffd58-3998-41c2-8455-cc71521c55ec',
    9,
    'gap_fill',
    'Question 9',
    NULL,
    'glass',
    NULL,
    1,
    '{"instruction":"<p><strong>Complete the notes below.</strong></p><p>Choose <strong>ONE WORD ONLY</strong> from the passage for each answer.</p>","context":"<h3><strong>The development of agriculture and food preservation</strong></h3><p><strong>The changes agriculture brought about were:</strong></p><ul><li>The development of equipment and larger&nbsp; ______ .</li><li>The ability to keep&nbsp; ______ &nbsp;as writing developed.</li><li>The setting up of organized government.</li></ul><p><strong>Food preservation</strong></p><p>• early methods of food preservation included: smoking, drying and combining food with acid or  ______ .</p><p><strong>Canning</strong></p><ul><li>Nicholas Appert put food into containers made of  ______ .</li><li>Appert''s method resulted in preserved food with the same taste and&nbsp; ______ &nbsp;as fresh food.</li><li>Peter Durand introduced cans which had the advantage of being&nbsp; ______ &nbsp;and hard to break.</li><li>In 1855, the metal can opener replaced the&nbsp; ______ &nbsp;which had been used with a hammer to open cans.</li><li>Some food was still edible after more than 100 years, e.g., an old can of&nbsp; ______ .</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '4d6cbf6a-3edc-42a4-b50a-dfe307bcfbb2',
    'reading',
    '628ffd58-3998-41c2-8455-cc71521c55ec',
    10,
    'gap_fill',
    'Question 10',
    NULL,
    'texture',
    NULL,
    1,
    '{"instruction":"<p><strong>Complete the notes below.</strong></p><p>Choose <strong>ONE WORD ONLY</strong> from the passage for each answer.</p>","context":"<h3><strong>The development of agriculture and food preservation</strong></h3><p><strong>The changes agriculture brought about were:</strong></p><ul><li>The development of equipment and larger&nbsp; ______ .</li><li>The ability to keep&nbsp; ______ &nbsp;as writing developed.</li><li>The setting up of organized government.</li></ul><p><strong>Food preservation</strong></p><p>• early methods of food preservation included: smoking, drying and combining food with acid or  ______ .</p><p><strong>Canning</strong></p><ul><li>Nicholas Appert put food into containers made of  ______ .</li><li>Appert''s method resulted in preserved food with the same taste and&nbsp; ______ &nbsp;as fresh food.</li><li>Peter Durand introduced cans which had the advantage of being&nbsp; ______ &nbsp;and hard to break.</li><li>In 1855, the metal can opener replaced the&nbsp; ______ &nbsp;which had been used with a hammer to open cans.</li><li>Some food was still edible after more than 100 years, e.g., an old can of&nbsp; ______ .</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '62f7f0b8-93ca-4073-880f-d0326b1573d1',
    'reading',
    '628ffd58-3998-41c2-8455-cc71521c55ec',
    11,
    'gap_fill',
    'Question 11',
    NULL,
    'lightweight',
    NULL,
    1,
    '{"instruction":"<p><strong>Complete the notes below.</strong></p><p>Choose <strong>ONE WORD ONLY</strong> from the passage for each answer.</p>","context":"<h3><strong>The development of agriculture and food preservation</strong></h3><p><strong>The changes agriculture brought about were:</strong></p><ul><li>The development of equipment and larger&nbsp; ______ .</li><li>The ability to keep&nbsp; ______ &nbsp;as writing developed.</li><li>The setting up of organized government.</li></ul><p><strong>Food preservation</strong></p><p>• early methods of food preservation included: smoking, drying and combining food with acid or  ______ .</p><p><strong>Canning</strong></p><ul><li>Nicholas Appert put food into containers made of  ______ .</li><li>Appert''s method resulted in preserved food with the same taste and&nbsp; ______ &nbsp;as fresh food.</li><li>Peter Durand introduced cans which had the advantage of being&nbsp; ______ &nbsp;and hard to break.</li><li>In 1855, the metal can opener replaced the&nbsp; ______ &nbsp;which had been used with a hammer to open cans.</li><li>Some food was still edible after more than 100 years, e.g., an old can of&nbsp; ______ .</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0336e9f1-f475-458d-90c6-ce8fb6839b4a',
    'reading',
    '628ffd58-3998-41c2-8455-cc71521c55ec',
    12,
    'gap_fill',
    'Question 12',
    NULL,
    'chisel',
    NULL,
    1,
    '{"instruction":"<p><strong>Complete the notes below.</strong></p><p>Choose <strong>ONE WORD ONLY</strong> from the passage for each answer.</p>","context":"<h3><strong>The development of agriculture and food preservation</strong></h3><p><strong>The changes agriculture brought about were:</strong></p><ul><li>The development of equipment and larger&nbsp; ______ .</li><li>The ability to keep&nbsp; ______ &nbsp;as writing developed.</li><li>The setting up of organized government.</li></ul><p><strong>Food preservation</strong></p><p>• early methods of food preservation included: smoking, drying and combining food with acid or  ______ .</p><p><strong>Canning</strong></p><ul><li>Nicholas Appert put food into containers made of  ______ .</li><li>Appert''s method resulted in preserved food with the same taste and&nbsp; ______ &nbsp;as fresh food.</li><li>Peter Durand introduced cans which had the advantage of being&nbsp; ______ &nbsp;and hard to break.</li><li>In 1855, the metal can opener replaced the&nbsp; ______ &nbsp;which had been used with a hammer to open cans.</li><li>Some food was still edible after more than 100 years, e.g., an old can of&nbsp; ______ .</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '2e283df2-0cc6-416b-b1ea-c3ceabd7e907',
    'reading',
    '628ffd58-3998-41c2-8455-cc71521c55ec',
    13,
    'gap_fill',
    'Question 13',
    NULL,
    'meat',
    NULL,
    1,
    '{"instruction":"<p><strong>Complete the notes below.</strong></p><p>Choose <strong>ONE WORD ONLY</strong> from the passage for each answer.</p>","context":"<h3><strong>The development of agriculture and food preservation</strong></h3><p><strong>The changes agriculture brought about were:</strong></p><ul><li>The development of equipment and larger&nbsp; ______ .</li><li>The ability to keep&nbsp; ______ &nbsp;as writing developed.</li><li>The setting up of organized government.</li></ul><p><strong>Food preservation</strong></p><p>• early methods of food preservation included: smoking, drying and combining food with acid or  ______ .</p><p><strong>Canning</strong></p><ul><li>Nicholas Appert put food into containers made of  ______ .</li><li>Appert''s method resulted in preserved food with the same taste and&nbsp; ______ &nbsp;as fresh food.</li><li>Peter Durand introduced cans which had the advantage of being&nbsp; ______ &nbsp;and hard to break.</li><li>In 1855, the metal can opener replaced the&nbsp; ______ &nbsp;which had been used with a hammer to open cans.</li><li>Some food was still edible after more than 100 years, e.g., an old can of&nbsp; ______ .</li></ul>"}'::jsonb
);

