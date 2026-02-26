-- ============================================
-- Auto-generated seed for: Day 19: The Development of Plastics
-- Source API ID: 1794
-- Generated: 2026-02-26T11:43:53.262Z
-- ============================================

-- ============================================
-- Day 19: The Development of Plastics - Part 1: The Development of Plastics
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    'b3117bcb-9a59-4a3e-9c2d-fb09ea2084bd',
    'Day 19: The Development of Plastics - Part 1: The Development of Plastics',
    'Cambridge IELTS - The Development of Plastics',
    'easy',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    '6fff60a3-72e3-4a50-a274-d4076ce29871',
    'b3117bcb-9a59-4a3e-9c2d-fb09ea2084bd',
    1,
    'The Development of Plastics',
    'The first plastics were developed as a substitute for natural rubber. Chemically, rubber is a polymer—a compound containing large molecules that are formed by the bonding of many smaller, simpler units, repeated over and over again. The same bonding principle—polymerization—is the basis of the creation of a huge range of plastics by the chemical industry.

The first plastic was developed as a result of a competition in the USA. In the 1860s, $10,000 was offered to anybody who could replace ivory—supplies of which were declining—with something equally good as a material for making billiard balls. The prize was won by John Wesley Hyatt, with a material called celluloid. Celluloid was made by dissolving cellulose, a carbohydrate obtained from plants, in a solution of camphor dissolved in ethanol. This new material rapidly found other applications in the manufacture of everyday products such as knife handles and detachable collars and cuffs. But perhaps the best-known celluloid product was photographic film, without which the film industry could never have taken off at the end of the 19th century.

Celluloid can be repeatedly softened and reshaped by heat, and is known as a thermoplastic. In 1907, Leo Baekeland (1863-1944), a Belgian chemist working in the USA, invented a different kind of plastic, by causing phenol and formaldehyde to react together. Baekeland called it Bakelite, and it was the first of the thermosets—plastic that can be cast and moulded while hot, but cannot be softened by heat and reshaped once they have set. Bakelite was a good insulator, and was resistant to water and acid. With these properties it was soon being used in the manufacture of electrical switches as well as a variety of domestic items.

As the century went on, the range of newly developed plastics increased. Chemists began looking for other small molecules that could be strung together to make polymers. In the 1930s, chemists in Britain discovered that the gas ethylene would polymerize under heat and pressure to form a thermoplastic they called polythene. Polypropylene followed in the 1950s. Both are used to make bottles, pipes, and plastic bags. A small change in the starting material—replacing a hydrogen atom in ethylene with a chlorine atom—produced rigid PVC (polyvinyl chloride), a fireproof plastic suitable for drains and gutters. By adding certain chemicals, a soft form of PVC can be produced, suitable as a substitute for rubber in items such as waterproof clothing. A closely related plastic is Teflon or PTFE (polytetrafluoroethylene). It produces very little friction, making it ideal for products such as non-stick frying pans.

Polystyrene, a hard, clear material like glass, was developed during the 1930s in Germany, and its applications included food containers and toys. Expanded polystyrene is rigid and is widely used in packaging and insulation. Polyurethane, developed in the same country, was commonly produced as a foam which was very useful in the production of insulating materials.

In the 1930s, the first of the man-made fibres was created—nylon. Its inventor was a chemist called Wallace Carothers (1896-1937), who worked for the Du Pont company in the USA. He found that under the right conditions two particular chemicals would form a polymer that could be pumped out through holes and then stretched to form long glossy threads that could be woven like silk. Its first use was to make parachutes for the US armed forces in World War II. In the postwar years, it completely replaced silk in the manufacture of stockings.

Many other synthetic fibres joined nylon, including Orion, Acrilan, and Terylene. Today most garments are made of a blend of natural fibres, such as cotton and wool, and man-made fibres that make fabrics easier to look after.

Despite its enormous usefulness, plastic has its drawbacks. In fact, one of its great strengths—its indestructibility—is its greatest disadvantage. Beaches all over the world, even on the remotest islands, are littered with plastic bottles that nothing can destroy. Nor is it very easy to recycle plastics, as different types of plastics are often found in the same items and call for different treatments. Plastics can be made biodegradable by incorporating into their structure a material such as starch, which is attacked by bacteria and causes the plastic to fall apart. Other materials can be incorporated that gradually decay in sunlight—although bottles made of such materials have to be stored in the dark, to ensure they do not disintegrate before they have been used.',
    734,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'f09e8359-12ec-4221-8b78-ffbf075b68d5',
    'reading',
    '6fff60a3-72e3-4a50-a274-d4076ce29871',
    1,
    'gap_fill',
    'Question 1',
    NULL,
    'photographic film',
    'The passage states that the best-known use of celluloid was photographic film.',
    1,
    '{"explanation":"The passage states that the best-known use of celluloid was photographic film.","fromPassage":"But perhaps the best-known celluloid product was photographic film, without which the film industry could never have taken off at the end of the 19th century.","instruction":"<p>Complete the table. Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the text for each answer.</p><p><br></p><h2>                              Early Types of Plastic</h2>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'c14004fb-8df7-4531-a3a6-6e36967d87a1',
    'reading',
    '6fff60a3-72e3-4a50-a274-d4076ce29871',
    2,
    'gap_fill',
    'Question 2',
    NULL,
    'bakelite',
    'The second type of plastic mentioned (after celluloid) is Bakelite.',
    1,
    '{"explanation":"The second type of plastic mentioned (after celluloid) is Bakelite.","fromPassage":"Baekeland called it Bakelite, and it was the first of the thermosets—plastic that can be cast and moulded while hot, but cannot be softened by heat and reshaped once they have set.","instruction":"<p>Complete the table. Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the text for each answer.</p><p><br></p><h2>                              Early Types of Plastic</h2>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '2a94d892-c869-4b57-9369-8c82f46a5b02',
    'reading',
    '6fff60a3-72e3-4a50-a274-d4076ce29871',
    3,
    'gap_fill',
    'Question 3',
    NULL,
    'electrical switches',
    'Bakelite was used to manufacture electrical switches.',
    1,
    '{"explanation":"Bakelite was used to manufacture electrical switches.","fromPassage":"With these properties it was soon being used in the manufacture of electrical switches as well as a variety of domestic items.","instruction":"<p>Complete the table. Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the text for each answer.</p><p><br></p><h2>                              Early Types of Plastic</h2>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '927afe10-440e-4e14-b1e3-608752966fd0',
    'reading',
    '6fff60a3-72e3-4a50-a274-d4076ce29871',
    4,
    'gap_fill',
    'Question 4',
    NULL,
    'Britain',
    'Polythene was developed in Britain.',
    1,
    '{"explanation":"Polythene was developed in Britain.","fromPassage":"In the 1930s, chemists in Britain discovered that the gas ethylene would polymerize under heat and pressure to form a thermoplastic they called polythene.","instruction":"<p>Complete the table. Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the text for each answer.</p><p><br></p><h2>                              Early Types of Plastic</h2>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '3661d011-1c25-424f-bba5-735160e75e87',
    'reading',
    '6fff60a3-72e3-4a50-a274-d4076ce29871',
    5,
    'gap_fill',
    'Question 5',
    NULL,
    'fireproof',
    'Rigid PVC is described as a fireproof plastic.',
    1,
    '{"explanation":"Rigid PVC is described as a fireproof plastic.","fromPassage":"A small change in the starting material—replacing a hydrogen atom in ethylene with a chlorine atom—produced rigid PVC (polyvinyl chloride), a fireproof plastic suitable for drains and gutters.","instruction":"<p>Complete the table. Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the text for each answer.</p><p><br></p><h2>                              Early Types of Plastic</h2>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'df365c17-b6ab-4cf2-b86b-16a40d378076',
    'reading',
    '6fff60a3-72e3-4a50-a274-d4076ce29871',
    6,
    'gap_fill',
    'Question 6',
    NULL,
    'glass',
    'Polystyrene resembles glass.',
    1,
    '{"explanation":"Polystyrene resembles glass.","fromPassage":"Polystyrene, a hard, clear material like glass, was developed during the 1930s in Germany, and its applications included food containers and toys.","instruction":"<p>Complete the table. Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the text for each answer.</p><p><br></p><h2>                              Early Types of Plastic</h2>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '732c1860-de45-4d4f-81d7-0d0caa7c5893',
    'reading',
    '6fff60a3-72e3-4a50-a274-d4076ce29871',
    7,
    'gap_fill',
    'Question 7',
    NULL,
    'foam',
    'Polyurethane was commonly produced as a foam.',
    1,
    '{"explanation":"Polyurethane was commonly produced as a foam.","fromPassage":"Polyurethane, developed in the same country, was commonly produced as a foam which was very useful in the production of insulating materials.","instruction":"<p>Complete the table. Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the text for each answer.</p><p><br></p><h2>                              Early Types of Plastic</h2>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '4fd13a02-a6d2-4170-83f3-b599c3dd4d07',
    'reading',
    '6fff60a3-72e3-4a50-a274-d4076ce29871',
    8,
    'tfng',
    'The chemical structure of rubber is very different to that of plastics.',
    NULL,
    'FALSE',
    'The passage says rubber and plastics share the same bonding principle—polymerization—so they are not chemically very different in structure.',
    1,
    '{"explanation":"The passage says rubber and plastics share the same bonding principle—polymerization—so they are not chemically very different in structure.","fromPassage":"Chemically, rubber is a polymer—a compound containing large molecules that are formed by the bonding of many smaller, simpler units, repeated over and over again.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT</strong> <strong>GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '63ef6ff4-d4e6-4333-8e8d-48803df09e6e',
    'reading',
    '6fff60a3-72e3-4a50-a274-d4076ce29871',
    9,
    'tfng',
    'John Wesley Hyatt was an industrial chemist.',
    NULL,
    'NOT GIVEN',
    'The text does not state whether Hyatt was an industrial chemist or not.',
    1,
    '{"explanation":"The text does not state whether Hyatt was an industrial chemist or not.","fromPassage":"The prize was won by John Wesley Hyatt, with a material called celluloid. Celluloid was made by dissolving cellulose, a carbohydrate obtained from plants, in a solution of camphor dissolved in ethanol.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT</strong> <strong>GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'bb8b2b44-8861-4f85-8e2d-6bffb0348576',
    'reading',
    '6fff60a3-72e3-4a50-a274-d4076ce29871',
    10,
    'tfng',
    ' Celluloid and Bakelite react in the same way to heat.',
    NULL,
    'FALSE',
    'Celluloid softens with heat; Bakelite cannot be softened after setting. They react differently.',
    1,
    '{"explanation":"Celluloid softens with heat; Bakelite cannot be softened after setting. They react differently.","fromPassage":"Celluloid can be repeatedly softened and reshaped by heat, and is known as a thermoplastic.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT</strong> <strong>GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '9345391a-aa19-48bb-80eb-ead2e471ed91',
    'reading',
    '6fff60a3-72e3-4a50-a274-d4076ce29871',
    11,
    'tfng',
    'If an object is made of several plastics, these prove hard to break down and reuse.',
    NULL,
    'TRUE',
    'Objects made from several different plastics are hard to recycle because each plastic needs a different treatment.',
    1,
    '{"explanation":"Objects made from several different plastics are hard to recycle because each plastic needs a different treatment.","fromPassage":"Nor is it very easy to recycle plastics, as different types of plastics are often found in the same items and call for different treatments.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT</strong> <strong>GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '7fb52e16-e353-4b6c-85d8-a6ed88050c8d',
    'reading',
    '6fff60a3-72e3-4a50-a274-d4076ce29871',
    12,
    'tfng',
    'Adding starch to plastic makes it more durable.',
    NULL,
    'FALSE',
    'Adding starch does not make plastic more durable — it makes it biodegradable (breaks apart).',
    1,
    '{"explanation":"Adding starch does not make plastic more durable — it makes it biodegradable (breaks apart).","fromPassage":"Plastics can be made biodegradable by incorporating into their structure a material such as starch, which is attacked by bacteria and causes the plastic to fall apart.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT</strong> <strong>GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '6a23a48e-00ae-4924-a08a-86553b171704',
    'reading',
    '6fff60a3-72e3-4a50-a274-d4076ce29871',
    13,
    'tfng',
    'Containers which are designed to decompose need particular storage conditions.',
    NULL,
    'TRUE',
    'Plastics designed to decay in sunlight must be stored in darkness.',
    1,
    '{"explanation":"Plastics designed to decay in sunlight must be stored in darkness.","fromPassage":"Other materials can be incorporated that gradually decay in sunlight—although bottles made of such materials have to be stored in the dark, to ensure they do not disintegrate before they have been used.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT</strong> <strong>GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

