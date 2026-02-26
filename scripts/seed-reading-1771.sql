-- ============================================
-- Auto-generated seed for: Day 10: Dolls Through the Ages
-- Source API ID: 1771
-- Generated: 2026-02-26T11:43:50.117Z
-- ============================================

-- ============================================
-- Day 10: Dolls Through the Ages - Part 1: Dolls Through the Ages
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    'e843d22c-5f5c-4f12-ad6e-64f25cc88c9b',
    'Day 10: Dolls Through the Ages - Part 1: Dolls Through the Ages',
    'Cambridge IELTS - Dolls Through the Ages',
    'easy',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    '00d220b8-fd2e-4cc1-a6b5-272e14a2ecb6',
    'e843d22c-5f5c-4f12-ad6e-64f25cc88c9b',
    1,
    'Dolls Through the Ages',
    'What is today a simple children’s toy has a surprisingly rich history. Dolls have been a part of humankind for thousands of years. Often depicting religious figures, or used as playthings, early dolls were probably made from primitive materials such as clay, fur, or wood.

Dolls constructed of flat pieces of wood, painted with various designs, and with ‘hair’ made of clay, have often been found in Egyptian graves dating back to 2000 BC. Egyptian tombs of wealthy families have included pottery dolls. Dolls being placed in these graves leads some to believe that they were cherished possessions.

Girls from ancient Greece and Rome offered their wooden dolls to goddesses after they were too ‘grown-up’ to play with dolls. Most ancient dolls that were found in tombs were very simple creations, often made from such materials as clay, rags, wood, or bone. Some of the more unique dolls were made with ivory or wax. The main goal was to make the doll as lifelike as possible. That ideal led to the creation of dolls with movable limbs and removable garments, dating back to 600 BC.

Following the era of the ancient dolls, Europe became a major hub for doll production. These dolls were primarily made of wood. Fewer than 30 examples of primitive wooden stump dolls from England survive today. The Grodnertal area of Germany produced many peg wooden dolls, a type of doll that has very simple peg joints and resembles a clothespin (a device for hanging washing on a clothesline). An alternative to wood was developed in the 1800s.

‘Composition’ is a collective term for mixtures of pulped wood or paper that were used to make doll heads and bodies. These mixtures were moulded under pressure, creating a durable doll that could be mass-produced. Manufacturers closely guarded the recipes for their mixtures, sometimes using strange ingredients like ash or eggshells. Papier-mâché, a type of composition, was one of the most popular mixtures.

In addition to wooden dolls, wax dolls grew in popularity in the 17th and 18th centuries. Munich in Germany was a major manufacturing centre for wax dolls. Wax dollmakers would model a doll’s head in wax or clay, and then cover it with plaster to create a mould. Then they would pour melted wax into the cast. The wax for the head would be very thin, no more than 3 mm. Some of the most distinctive wax dolls were created in England between 1850 and 1930. One of the first dolls that portrayed a baby was made in England from wax at the beginning of the 19th century.

Around the same time, porcelain became popular. It is made by firing special clays in a kiln at more than 2,372 degrees Fahrenheit (1300°C), and only a few clays can withstand firing at such high temperatures. Porcelain is used generically to refer to both china and bisque dolls; china is glazed, whereas bisque is unglazed. Germany, France, and Denmark started creating china heads for dolls in the 1840s. These china heads were replaced in the 1860s by ones made of bisque. Bisque, which is porcelain fired twice with colour added to it after the first firing, looked more like skin than china did.

In France, the bébé was popular in the 1880s, and it has become a highly sought-after doll today. The bébé, first made in the 1850s, was different from its predecessors because it depicted a younger girl. Until then, most French dolls were representations of adults. Although the French dolls were unrivalled in their artistry, German bisque dolls became quite popular because they were not as expensive. Kammer & Reinhardt introduced a bisque character doll in the 1900s, starting a trend of creating realistic dolls.

For many centuries, rag dolls were made by mothers for their children. The term ‘rag doll’ refers generically to dolls made of any fabric. ‘Cloth doll’ refers to a subset of rag dolls made of linen or cotton. Commercially produced rag dolls were first introduced in the 1850s by English and American manufacturers. Although not as sophisticated as dolls made from other materials, rag dolls were well loved, often as a child’s first toy.

Dollmaking did not become an industry in the United States until after the Civil War in the 1860s. Doll production was concentrated in the New England region of the United States, with dolls made from a variety of materials such as leather, rubber, papier-mâché, and cloth. Celluloid was developed in the state of New Jersey in the late 1860s and was used to manufacture dolls until the mid-1950s. German, French, American, and Japanese factories churned out cheaply produced celluloid dolls in mass quantities. However, celluloid fell out of favour because of its extreme flammability and propensity to fade in bright light.

After World War I, dollmakers experimented with plastics. Hard plastic dolls were manufactured in the 1940s. They resembled composition dolls, but they were much more durable. Other materials used in doll manufacturing included rubber, foam rubber, and vinyl in the 1950s and 1960s. Vinyl changed dollmaking, allowing dollmakers to root hair into the head, rather than using wigs or painting the hair. Although most dolls are now mass-manufactured using these modern materials, many modern dollmakers are still using the traditional materials of the past to make collectible dolls.',
    882,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '9f5b4935-891a-4b21-a5bf-057bde20db51',
    'reading',
    '00d220b8-fd2e-4cc1-a6b5-272e14a2ecb6',
    1,
    'gap_fill',
    'Question 1',
    NULL,
    'clay',
    'The sentence clearly states that clay was used for the hair of early dolls in Egypt. This matches the note: "was used for the hair", so clay is the correct answer.',
    1,
    '{"explanation":"The sentence clearly states that clay was used for the hair of early dolls in Egypt. This matches the note: \"was used for the hair\", so clay is the correct answer.","fromPassage":"Dolls constructed of flat pieces of wood, painted with various designs, and with ‘hair’ made of clay, have often been found in Egyptian graves dating back to 2000 BC.","instruction":"<p><strong>Complete the notes below.</strong></p><p>Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the passage for each answer.</p>","context":"<h2><strong>Dolls</strong></h2><h3><strong>Earliest known dolls</strong></h3><ul><li>represented religious figures</li><li>used as toys</li></ul><h3><strong>Egypt, 2000 BC</strong></h3><ul><li>bodies were made of wood</li><li> ______ was used for the hair</li></ul><h3><strong>Ancient Greece and Rome</strong></h3><ul><li>dolls were given to&nbsp; ______ by older girls</li></ul><h3><strong>600 BC</strong></h3><ul><li>realistic dolls had separate clothes and&nbsp;______ that could be put in different positions</li></ul><h3><strong>17th and 18th centuries</strong></h3><ul><li>dolls made of&nbsp;______ became more common</li><li>moulds made of&nbsp;______ </li></ul><h3><strong>1800s</strong></h3><ul><li>new manufacturing process developed</li><li>new group of mixtures known as&nbsp;______ </li><li>recipes for these mixtures kept secret</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '39ad77de-9250-4e83-9ef2-a7e84c144d49',
    'reading',
    '00d220b8-fd2e-4cc1-a6b5-272e14a2ecb6',
    2,
    'gap_fill',
    'Question 2',
    NULL,
    'goddesses',
    'The note says dolls were given to ___ by older girls. The phrase "offered their wooden dolls to goddesses" fits exactly. So, goddesses is the right answer.',
    1,
    '{"explanation":"The note says dolls were given to ___ by older girls. The phrase \"offered their wooden dolls to goddesses\" fits exactly. So, goddesses is the right answer.","fromPassage":"Girls from ancient Greece and Rome offered their wooden dolls to goddesses after they were too ‘grown-up’ to play with dolls.","instruction":"<p><strong>Complete the notes below.</strong></p><p>Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the passage for each answer.</p>","context":"<h2><strong>Dolls</strong></h2><h3><strong>Earliest known dolls</strong></h3><ul><li>represented religious figures</li><li>used as toys</li></ul><h3><strong>Egypt, 2000 BC</strong></h3><ul><li>bodies were made of wood</li><li> ______ was used for the hair</li></ul><h3><strong>Ancient Greece and Rome</strong></h3><ul><li>dolls were given to&nbsp; ______ by older girls</li></ul><h3><strong>600 BC</strong></h3><ul><li>realistic dolls had separate clothes and&nbsp;______ that could be put in different positions</li></ul><h3><strong>17th and 18th centuries</strong></h3><ul><li>dolls made of&nbsp;______ became more common</li><li>moulds made of&nbsp;______ </li></ul><h3><strong>1800s</strong></h3><ul><li>new manufacturing process developed</li><li>new group of mixtures known as&nbsp;______ </li><li>recipes for these mixtures kept secret</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '70946a44-fc0b-4f19-8a88-4da7fd18cc66',
    'reading',
    '00d220b8-fd2e-4cc1-a6b5-272e14a2ecb6',
    3,
    'gap_fill',
    'Question 3',
    NULL,
    'limbs',
    'The note mentions separate clothes and something that could be moved. This matches with "movable limbs and removable garments". So, limbs is the correct answer.',
    1,
    '{"explanation":"The note mentions separate clothes and something that could be moved. This matches with \"movable limbs and removable garments\". So, limbs is the correct answer.","fromPassage":"That ideal led to the creation of dolls with movable limbs and removable garments, dating back to 600 BC.","instruction":"<p><strong>Complete the notes below.</strong></p><p>Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the passage for each answer.</p>","context":"<h2><strong>Dolls</strong></h2><h3><strong>Earliest known dolls</strong></h3><ul><li>represented religious figures</li><li>used as toys</li></ul><h3><strong>Egypt, 2000 BC</strong></h3><ul><li>bodies were made of wood</li><li> ______ was used for the hair</li></ul><h3><strong>Ancient Greece and Rome</strong></h3><ul><li>dolls were given to&nbsp; ______ by older girls</li></ul><h3><strong>600 BC</strong></h3><ul><li>realistic dolls had separate clothes and&nbsp;______ that could be put in different positions</li></ul><h3><strong>17th and 18th centuries</strong></h3><ul><li>dolls made of&nbsp;______ became more common</li><li>moulds made of&nbsp;______ </li></ul><h3><strong>1800s</strong></h3><ul><li>new manufacturing process developed</li><li>new group of mixtures known as&nbsp;______ </li><li>recipes for these mixtures kept secret</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'be27b90e-1e58-4f8a-840f-8e03b635ea6e',
    'reading',
    '00d220b8-fd2e-4cc1-a6b5-272e14a2ecb6',
    4,
    'gap_fill',
    'Question 4',
    NULL,
    'wax',
    'The note refers to materials dolls were made of in the 17th and 18th centuries. The passage says wax dolls grew in popularity during that time, so wax is correct.',
    1,
    '{"explanation":"The note refers to materials dolls were made of in the 17th and 18th centuries. The passage says wax dolls grew in popularity during that time, so wax is correct.","fromPassage":"In addition to wooden dolls, wax dolls grew in popularity in the 17th and 18th centuries.","instruction":"<p><strong>Complete the notes below.</strong></p><p>Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the passage for each answer.</p>","context":"<h2><strong>Dolls</strong></h2><h3><strong>Earliest known dolls</strong></h3><ul><li>represented religious figures</li><li>used as toys</li></ul><h3><strong>Egypt, 2000 BC</strong></h3><ul><li>bodies were made of wood</li><li> ______ was used for the hair</li></ul><h3><strong>Ancient Greece and Rome</strong></h3><ul><li>dolls were given to&nbsp; ______ by older girls</li></ul><h3><strong>600 BC</strong></h3><ul><li>realistic dolls had separate clothes and&nbsp;______ that could be put in different positions</li></ul><h3><strong>17th and 18th centuries</strong></h3><ul><li>dolls made of&nbsp;______ became more common</li><li>moulds made of&nbsp;______ </li></ul><h3><strong>1800s</strong></h3><ul><li>new manufacturing process developed</li><li>new group of mixtures known as&nbsp;______ </li><li>recipes for these mixtures kept secret</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '49975a3f-418b-46a8-9d9a-e5ff62ab2b89',
    'reading',
    '00d220b8-fd2e-4cc1-a6b5-272e14a2ecb6',
    5,
    'gap_fill',
    'Question 5',
    NULL,
    'plaster',
    'The note refers to the material used for moulds. The sentence directly says plaster was used to create moulds, so this is the right answer.',
    1,
    '{"explanation":"The note refers to the material used for moulds. The sentence directly says plaster was used to create moulds, so this is the right answer.","fromPassage":"Wax dollmakers would model a doll’s head in wax or clay, and then cover it with plaster to create a mould.","instruction":"<p><strong>Complete the notes below.</strong></p><p>Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the passage for each answer.</p>","context":"<h2><strong>Dolls</strong></h2><h3><strong>Earliest known dolls</strong></h3><ul><li>represented religious figures</li><li>used as toys</li></ul><h3><strong>Egypt, 2000 BC</strong></h3><ul><li>bodies were made of wood</li><li> ______ was used for the hair</li></ul><h3><strong>Ancient Greece and Rome</strong></h3><ul><li>dolls were given to&nbsp; ______ by older girls</li></ul><h3><strong>600 BC</strong></h3><ul><li>realistic dolls had separate clothes and&nbsp;______ that could be put in different positions</li></ul><h3><strong>17th and 18th centuries</strong></h3><ul><li>dolls made of&nbsp;______ became more common</li><li>moulds made of&nbsp;______ </li></ul><h3><strong>1800s</strong></h3><ul><li>new manufacturing process developed</li><li>new group of mixtures known as&nbsp;______ </li><li>recipes for these mixtures kept secret</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'f39460a1-2db3-4479-8d0f-27b3c84ec408',
    'reading',
    '00d220b8-fd2e-4cc1-a6b5-272e14a2ecb6',
    6,
    'gap_fill',
    'Question 6',
    NULL,
    'composition',
    'The note asks for the name of a group of mixtures. The passage defines composition as this group, so it fits the blank exactly.',
    1,
    '{"explanation":"The note asks for the name of a group of mixtures. The passage defines composition as this group, so it fits the blank exactly.","fromPassage":"Composition’ is a collective term for mixtures of pulped wood or paper that were used to make doll heads and bodies.","instruction":"<p><strong>Complete the notes below.</strong></p><p>Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the passage for each answer.</p>","context":"<h2><strong>Dolls</strong></h2><h3><strong>Earliest known dolls</strong></h3><ul><li>represented religious figures</li><li>used as toys</li></ul><h3><strong>Egypt, 2000 BC</strong></h3><ul><li>bodies were made of wood</li><li> ______ was used for the hair</li></ul><h3><strong>Ancient Greece and Rome</strong></h3><ul><li>dolls were given to&nbsp; ______ by older girls</li></ul><h3><strong>600 BC</strong></h3><ul><li>realistic dolls had separate clothes and&nbsp;______ that could be put in different positions</li></ul><h3><strong>17th and 18th centuries</strong></h3><ul><li>dolls made of&nbsp;______ became more common</li><li>moulds made of&nbsp;______ </li></ul><h3><strong>1800s</strong></h3><ul><li>new manufacturing process developed</li><li>new group of mixtures known as&nbsp;______ </li><li>recipes for these mixtures kept secret</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd5f0b798-d723-4b37-a8a0-84e16f4c82e5',
    'reading',
    '00d220b8-fd2e-4cc1-a6b5-272e14a2ecb6',
    7,
    'tfng',
    'Bisque dolls appear less realistic than dolls made of china.',
    NULL,
    'FALSE',
    'The statement says bisque dolls appear less realistic, but the passage clearly
says they looked more like skin. This directly contradicts the statement, so the
correct answer is FALSE',
    1,
    '{"explanation":"The statement says bisque dolls appear less realistic, but the passage clearly\nsays they looked more like skin. This directly contradicts the statement, so the\ncorrect answer is FALSE","fromPassage":"Bisque, which is porcelain fired twice with colour added to it after the\nfirst firing, looked more like skin than china did.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '76b7d7f1-32b9-4c8b-bcc1-3cdf4e247df8',
    'reading',
    '00d220b8-fd2e-4cc1-a6b5-272e14a2ecb6',
    8,
    'tfng',
    'French dolls tended to cost more than German bisque dolls.',
    NULL,
    'TRUE',
    'This means French dolls were more expensive than German bisque dolls, so the
statement is TRUE',
    1,
    '{"explanation":"This means French dolls were more expensive than German bisque dolls, so the\nstatement is TRUE","fromPassage":"Although the French dolls were unrivalled in their artistry, German\nbisque dolls became quite popular because they were not as\nexpensive.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '9c704200-4647-47f3-8583-fb821a2b67d3',
    'reading',
    '00d220b8-fd2e-4cc1-a6b5-272e14a2ecb6',
    9,
    'tfng',
    'The first rag dolls were made in the 1850s.',
    NULL,
    'FALSE',
    'The question says "The first rag dolls were made in the 1850s." However, the passage clearly states that rag dolls had already existed for many centuries before that time. The 1850s only mark the beginning of commercially produced rag dolls, not the first rag dolls ever. So, the statement in the question is incorrect — rag dolls were made long before the 1850s.',
    1,
    '{"explanation":"The question says \"The first rag dolls were made in the 1850s.\" However, the passage clearly states that rag dolls had already existed for many centuries before that time. The 1850s only mark the beginning of commercially produced rag dolls, not the first rag dolls ever. So, the statement in the question is incorrect — rag dolls were made long before the 1850s.","fromPassage":"For many centuries, rag dolls were made by mothers for their children. The term ‘rag doll’ refers generically to dolls made of any fabric. ‘Cloth doll’ refers to a subset of rag dolls made of linen or cotton. Commercially produced rag dolls were first introduced in the 1850s by English and American manufacturers.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '68fc91e4-26e6-414e-90fb-cab972b27c2a',
    'reading',
    '00d220b8-fd2e-4cc1-a6b5-272e14a2ecb6',
    10,
    'tfng',
    'Only dolls made of cotton or linen are classified as cloth dolls.',
    NULL,
    'TRUE',
    'Only dolls made of linen or cotton are classified as cloth dolls. This supports the
statement, so the answer is TRUE.',
    1,
    '{"explanation":"Only dolls made of linen or cotton are classified as cloth dolls. This supports the\nstatement, so the answer is TRUE.","fromPassage":"The term ‘rag doll’ refers generically to dolls made of any fabric. ‘Cloth\ndoll’ refers to a subset of rag dolls made of linen or cotton.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '29d36ac8-9023-48b5-84c1-3210d149b20a',
    'reading',
    '00d220b8-fd2e-4cc1-a6b5-272e14a2ecb6',
    11,
    'tfng',
    'Dolls made of celluloid tended to lose their colour.',
    NULL,
    'TRUE',
    'The phrase “propensity to fade” means that celluloid dolls did lose their colour.
This supports the statement, making it TRUE.',
    1,
    '{"explanation":"The phrase “propensity to fade” means that celluloid dolls did lose their colour.\nThis supports the statement, making it TRUE.","fromPassage":"However, celluloid fell out of favour because of its extreme\nflammability and propensity to fade in bright light.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'a0b2d960-b89f-4753-9d3e-cc61e54a907b',
    'reading',
    '00d220b8-fd2e-4cc1-a6b5-272e14a2ecb6',
    12,
    'tfng',
    'Composition dolls lasted longer than the plastic dolls that were made in the 1940s.',
    NULL,
    'FALSE',
    'Plastic dolls of the 1940s were more durable than composition dolls, not less.
This contradicts the statement, so the correct answer is FALSE.',
    1,
    '{"explanation":"Plastic dolls of the 1940s were more durable than composition dolls, not less.\nThis contradicts the statement, so the correct answer is FALSE.","fromPassage":"They resembled composition dolls, but they were much more\ndurable.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '3c0c9cc8-8313-48a1-9905-54b3e7ffa16d',
    'reading',
    '00d220b8-fd2e-4cc1-a6b5-272e14a2ecb6',
    13,
    'tfng',
    'Doll collectors prefer a doll to be dressed in its original clothing.',
    NULL,
    'NOT GIVEN',
    'The passage does not mention whether doll collectors prefer dolls to be dressed
in original clothing. There is no relevant sentence on this topic, so the answer is
NOT GIVEN',
    1,
    '{"explanation":"The passage does not mention whether doll collectors prefer dolls to be dressed\nin original clothing. There is no relevant sentence on this topic, so the answer is\nNOT GIVEN","fromPassage":"Although most dolls are now mass-manufactured using these modern materials, many modern dollmakers are still using the traditional materials of the past to make collectible dolls.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

