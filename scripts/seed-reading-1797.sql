-- ============================================
-- Auto-generated seed for: Day 13: Deep Sea Discovery
-- Source API ID: 1797
-- Generated: 2026-02-26T11:44:02.476Z
-- ============================================

-- ============================================
-- Day 13: Deep Sea Discovery - Part 1: Deep Sea Discovery
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    'f2abd209-73c1-457f-91b0-4e47edd28615',
    'Day 13: Deep Sea Discovery - Part 1: Deep Sea Discovery',
    'Cambridge IELTS - Deep Sea Discovery',
    'easy',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    'c92ba344-4bd5-4005-a2b3-60a1ccfc2b73',
    'f2abd209-73c1-457f-91b0-4e47edd28615',
    1,
    'Deep Sea Discovery',
    'Nico Michiels is an ecologist from the University of Tubingen in Germany who spends part of each year in Egypt, where he dives in the Red Sea, observing fish life and gathering data on its coral reefs. In September 2007 he decided to find out how far red light could penetrate the ocean depths. Seawater absorbs different colours at different depths, and as an experienced diver, Michiels was aware that red light is extinguished not far below the surface whereas blue-green light penetrates deeper. To find out the depth at which red disappeared in this particular ocean, however, he attached a special plastic filter to his dive mask which was designed to block out all colours except red. Then he began to descend. In theory, once he reached about 15 metres, he should have been plunged into darkness. Instead, something totally unexpected happened. Sure enough, 20 metres down it was as dark as night. ''All the fish disappeared. With no light from the surface, they were effectively black and had become invisible,'' he says. But it didn''t stay black for long. Then I saw a group of goby fish with bright red eyes lit up against the background. After that red spots began to show up all over the reef.

Even with the red filter removed, Michiels could pick them out without much trouble once his eyes grew accustomed to the gloom. It seems strange that no diver or researcher had spotted all this red before, but as Michiels points out, no one saw it because no one expected to see it. On that one dive Michiels discovered three fish species with prominent red markings, and has found many others since.

But how can fish appear red where there''s no red light? Ordinary red pigments look red because they reflect red light while absorbing all other wavelengths. At 20 metres down, there had to be some other explanation for the red Michiels was seeing. He suspected fluorescence. Fluorescent pigments behave differently from ordinary ones: they receive incoming light of one wavelength, for example blue, and emit light of a longer wavelength, in this case red. On the reef in the Red Sea during daytime, the most likely explanation was that the predominantly blue and green wavelengths at depth triggered the emission of fluorescent red in the fish.

With only a week left in Egypt, and lacking the equipment to confirm that the fish were fluorescent, Michiels photographed as many of them as he could. Then once back in Germany, he bought an assortment of tropical fish and installed them in his lab. Here he confirmed that the fish did indeed fluoresce. In most of the fish he looked at, the fluorescence could be traced to specialised pigment cells that lie in the skin beneath the scales. These cells contain ''guanine crystals'', which scatter light to give fish their silvery sheen. However, Michiels says they are still not sure exactly what is fluorescing. ''It''s not the crystals themselves. It''s probably a fluorescent protein built into the crystals, and we have a suspicion that it might be made by bacteria.''

Intrigued, Michiels began a systematic search for red fluorescence in reef fish. He and his colleagues, Nils Anthes and Dennis Sprenger, have identified some 50 species with red fluorescence. The most common markings tend to be on the body towards the head and to a lesser extent around the eyes, and then the fins. To Michiels, the distribution of these markings is one of the strongest indications that red fluorescence has a very particular function: communication with other members of the species. According to several recent studies, a whole range of animals employ fluorescence as a natural highlighter to boost the visibility of body parts they use to signal, for example to ward off enemies. In reef fish, the red tends to be confined to parts of the body used to signal, suggesting these markings serve a similar function. But instead of highlighting an existing colour, the fluorescence gives the fish a colour that otherwise wouldn''t exist. For example, fish commonly use eye rings to signal that they are present and their direction of gaze, and Michiels suspects that red-eyed gobies use signals to indicate their location and keep their group together.

Red light, whatever its source, doesn''t travel far through water, which suggests signals are intended to be private, seen only by nearby fish of the right species. There are several lines of evidence to support this, says Michiels. And closely related species do not have completely identical markings, which suggests they might be important in species recognition.

Michiels suspects red fluorescence has another important role for some reef fish: helping them blend in. During his first dive with the red filter, he noticed corals glow a dark but faint red too. Against this irregular red background, a fish that glows red all over would be hard to distinguish. More compelling for Michiels is the case of the scorpionfish, which lies perfectly still until food swims past which it then sucks in.

Yet if red plays any part in a fish''s life then it must be able to see it. Fish that live in a world dominated by blue-green light are assumed to have eyes tuned to those wavelengths, and most marine fish that have been studied are thought incapable of seeing red. One exception is the seahorse, whose eyes are sensitive to red. As for the other fish, it remains to be seen.

*pigments: a pigment is a substance that gives something a particular colour',
    925,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'c418a588-91d7-4f01-8ae7-053834df81dc',
    'reading',
    'c92ba344-4bd5-4005-a2b3-60a1ccfc2b73',
    1,
    'tfng',
    'During his 2007 dive, Michiels expected to encounter total darkness at about 15 metres.',
    NULL,
    'TRUE',
    'The passage clearly states he expected darkness at 15 meters due to loss of red light.',
    1,
    '{"explanation":"The passage clearly states he expected darkness at 15 meters due to loss of red light.","fromPassage":"In theory, once he reached about 15 metres, he should have been plunged into darkness.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '96fcd563-a48d-4eb7-87b5-dbc46a8514ef',
    'reading',
    'c92ba344-4bd5-4005-a2b3-60a1ccfc2b73',
    2,
    'tfng',
    'Michiels could see the red markings on fish without the aid of the red filter.',
    NULL,
    'TRUE',
    'Paragraph B says he could see the red markings even without the red filter.',
    1,
    '{"explanation":"Paragraph B says he could see the red markings even without the red filter.","fromPassage":"Even with the red filter removed, Michiels could pick them out without much trouble once his eyes grew accustomed to the gloom.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '51bcbbdf-1f1e-4597-afd2-715d79d0f37b',
    'reading',
    'c92ba344-4bd5-4005-a2b3-60a1ccfc2b73',
    3,
    'tfng',
    'Other divers had assumed they would see fish with red markings.',
    NULL,
    'FALSE',
    'No diver had seen the red before because no one expected it.',
    1,
    '{"explanation":"No diver had seen the red before because no one expected it.","fromPassage":"It seems strange that no diver or researcher had spotted all this red before, but as Michiels points out, no one saw it because no one expected to see it.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd6e03897-b125-415c-9b91-6078a80ed1ef',
    'reading',
    'c92ba344-4bd5-4005-a2b3-60a1ccfc2b73',
    4,
    'tfng',
    'All the fish with red markings that Michiels found during his diving expeditions came from the Red Sea.',
    NULL,
    'NOT GIVEN',
    'We are told that he found species in the Red Sea and later in Germany in his lab — but NOT that all red-marked fish were from the Red Sea.',
    1,
    '{"explanation":"We are told that he found species in the Red Sea and later in Germany in his lab — but NOT that all red-marked fish were from the Red Sea.","fromPassage":"On that one dive Michiels discovered three fish species with prominent red markings, and has found many others since.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'a82da058-6136-41c4-92f8-fec63895b74f',
    'reading',
    'c92ba344-4bd5-4005-a2b3-60a1ccfc2b73',
    5,
    'tfng',
    'Michiels first thought of the possibility that fish could fluoresce while he was in Germany.',
    NULL,
    'FALSE',
    'He suspected fluorescence during the dive in the Red Sea — not in Germany.',
    1,
    '{"explanation":"He suspected fluorescence during the dive in the Red Sea — not in Germany.","fromPassage":"He suspected fluorescence.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '42b666bf-3355-4dec-b3d9-1c80da827c54',
    'reading',
    'c92ba344-4bd5-4005-a2b3-60a1ccfc2b73',
    6,
    'tfng',
    'Michiels remains uncertain as to what creates fluorescence in fish.',
    NULL,
    'TRUE',
    'He is still unsure what exactly fluoresces.',
    1,
    '{"explanation":"He is still unsure what exactly fluoresces.","fromPassage":"However, Michiels says they are still not sure exactly what is fluorescing. ‘It’s not the crystals themselves. It’s probably a fluorescent protein built into the crystals, and we have a suspicion that it might be made by bacteria.’","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'f72abc08-7584-4129-a8f7-0e11c7ebdd33',
    'reading',
    'c92ba344-4bd5-4005-a2b3-60a1ccfc2b73',
    7,
    'gap_fill',
    'Question 7',
    NULL,
    'head',
    'Markings are mainly near the head.',
    1,
    '{"explanation":"Markings are mainly near the head.","fromPassage":"The most common markings tend to be on the body towards the head and to a lesser extent around the eyes, and then the fins.","instruction":"<p>Complete the notes. Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the text for each answer.</p>","context":"<h3>                                             Michiels''s Findings</h3><p><strong>Michiels has observed:</strong></p><ul><li>50 types of fish with red fluorescence in total</li><li>markings mainly near the&nbsp; ______ </li></ul><p><strong>Some of Michiels''s beliefs are that:</strong></p><ul><li>red fluorescence is used specifically for&nbsp; ______ &nbsp;purposes</li><li>fish, like some animals, use fluorescence to keep&nbsp; ______ &nbsp;away</li><li>gobies depend on red fluorescence to show their&nbsp; ______ </li><li>there are variations in the markings of fish among those&nbsp; ______ &nbsp;which are very similar</li></ul><p><strong>Other benefits of red fluorescence:</strong></p><ul><li>fish cannot easily be seen near backgrounds of&nbsp; ______ &nbsp;which give off a red light</li><li>helps some fish catch their prey</li></ul><p><strong>The ability to see red amongst fish:</strong></p><ul><li>the only fish proven to have this ability is the&nbsp; ______ </li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'af6defa4-6f8e-4134-8592-86771e6946d8',
    'reading',
    'c92ba344-4bd5-4005-a2b3-60a1ccfc2b73',
    8,
    'gap_fill',
    'Question 8',
    NULL,
    'communication',
    'Michiels believes fluorescence serves a communication function.',
    1,
    '{"explanation":"Michiels believes fluorescence serves a communication function.","fromPassage":"To Michiels, the distribution of these markings is one of the strongest indications that red fluorescence has a very particular function: communication with other members of the species.","instruction":"<p>Complete the notes. Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the text for each answer.</p>","context":"<h3>                                             Michiels''s Findings</h3><p><strong>Michiels has observed:</strong></p><ul><li>50 types of fish with red fluorescence in total</li><li>markings mainly near the&nbsp; ______ </li></ul><p><strong>Some of Michiels''s beliefs are that:</strong></p><ul><li>red fluorescence is used specifically for&nbsp; ______ &nbsp;purposes</li><li>fish, like some animals, use fluorescence to keep&nbsp; ______ &nbsp;away</li><li>gobies depend on red fluorescence to show their&nbsp; ______ </li><li>there are variations in the markings of fish among those&nbsp; ______ &nbsp;which are very similar</li></ul><p><strong>Other benefits of red fluorescence:</strong></p><ul><li>fish cannot easily be seen near backgrounds of&nbsp; ______ &nbsp;which give off a red light</li><li>helps some fish catch their prey</li></ul><p><strong>The ability to see red amongst fish:</strong></p><ul><li>the only fish proven to have this ability is the&nbsp; ______ </li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0e82d1ff-c814-4fcd-957d-cc1a17ea0e3e',
    'reading',
    'c92ba344-4bd5-4005-a2b3-60a1ccfc2b73',
    9,
    'gap_fill',
    'Question 9',
    NULL,
    'enemies',
    'Fluorescence is used to signal and ward off enemies.',
    1,
    '{"explanation":"Fluorescence is used to signal and ward off enemies.","fromPassage":"According to several recent studies, a whole range of animals employ fluorescence as a natural highlighter to boost the visibility of body parts they use to signal, for example to ward off enemies.","instruction":"<p>Complete the notes. Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the text for each answer.</p>","context":"<h3>                                             Michiels''s Findings</h3><p><strong>Michiels has observed:</strong></p><ul><li>50 types of fish with red fluorescence in total</li><li>markings mainly near the&nbsp; ______ </li></ul><p><strong>Some of Michiels''s beliefs are that:</strong></p><ul><li>red fluorescence is used specifically for&nbsp; ______ &nbsp;purposes</li><li>fish, like some animals, use fluorescence to keep&nbsp; ______ &nbsp;away</li><li>gobies depend on red fluorescence to show their&nbsp; ______ </li><li>there are variations in the markings of fish among those&nbsp; ______ &nbsp;which are very similar</li></ul><p><strong>Other benefits of red fluorescence:</strong></p><ul><li>fish cannot easily be seen near backgrounds of&nbsp; ______ &nbsp;which give off a red light</li><li>helps some fish catch their prey</li></ul><p><strong>The ability to see red amongst fish:</strong></p><ul><li>the only fish proven to have this ability is the&nbsp; ______ </li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '8a0ed665-e97b-484f-8182-a3c30dbd0a16',
    'reading',
    'c92ba344-4bd5-4005-a2b3-60a1ccfc2b73',
    10,
    'gap_fill',
    'Question 10',
    NULL,
    'location',
    'Goby fish use fluorescence to show location and stay together.',
    1,
    '{"explanation":"Goby fish use fluorescence to show location and stay together.","fromPassage":"For example, fish commonly use eye rings to signal that they are present and their direction of gaze, and Michiels suspects that red-eyed gobies use signals to indicate their location and keep their group together.","instruction":"<p>Complete the notes. Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the text for each answer.</p>","context":"<h3>                                             Michiels''s Findings</h3><p><strong>Michiels has observed:</strong></p><ul><li>50 types of fish with red fluorescence in total</li><li>markings mainly near the&nbsp; ______ </li></ul><p><strong>Some of Michiels''s beliefs are that:</strong></p><ul><li>red fluorescence is used specifically for&nbsp; ______ &nbsp;purposes</li><li>fish, like some animals, use fluorescence to keep&nbsp; ______ &nbsp;away</li><li>gobies depend on red fluorescence to show their&nbsp; ______ </li><li>there are variations in the markings of fish among those&nbsp; ______ &nbsp;which are very similar</li></ul><p><strong>Other benefits of red fluorescence:</strong></p><ul><li>fish cannot easily be seen near backgrounds of&nbsp; ______ &nbsp;which give off a red light</li><li>helps some fish catch their prey</li></ul><p><strong>The ability to see red amongst fish:</strong></p><ul><li>the only fish proven to have this ability is the&nbsp; ______ </li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'fc757c2d-9834-4634-973e-9cfb5c866dbd',
    'reading',
    'c92ba344-4bd5-4005-a2b3-60a1ccfc2b73',
    11,
    'gap_fill',
    'Question 11',
    NULL,
    'species',
    'Variations in markings help with species recognition.',
    1,
    '{"explanation":"Variations in markings help with species recognition.","fromPassage":"And closely related species do not have completely identical markings, which suggests they might be important in species recognition.","instruction":"<p>Complete the notes. Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the text for each answer.</p>","context":"<h3>                                             Michiels''s Findings</h3><p><strong>Michiels has observed:</strong></p><ul><li>50 types of fish with red fluorescence in total</li><li>markings mainly near the&nbsp; ______ </li></ul><p><strong>Some of Michiels''s beliefs are that:</strong></p><ul><li>red fluorescence is used specifically for&nbsp; ______ &nbsp;purposes</li><li>fish, like some animals, use fluorescence to keep&nbsp; ______ &nbsp;away</li><li>gobies depend on red fluorescence to show their&nbsp; ______ </li><li>there are variations in the markings of fish among those&nbsp; ______ &nbsp;which are very similar</li></ul><p><strong>Other benefits of red fluorescence:</strong></p><ul><li>fish cannot easily be seen near backgrounds of&nbsp; ______ &nbsp;which give off a red light</li><li>helps some fish catch their prey</li></ul><p><strong>The ability to see red amongst fish:</strong></p><ul><li>the only fish proven to have this ability is the&nbsp; ______ </li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '448fb335-e9e4-4f4b-9887-7e6d9084d846',
    'reading',
    'c92ba344-4bd5-4005-a2b3-60a1ccfc2b73',
    12,
    'gap_fill',
    'Question 12',
    NULL,
    'corals',
    'Red fluorescence helps fish blend in near faintly glowing red corals.',
    1,
    '{"explanation":"Red fluorescence helps fish blend in near faintly glowing red corals.","fromPassage":"During his first dive with the red filter, he noticed corals glow a dark but faint red too. Against this irregular red background, a fish that glows red all over would be hard to distinguish.","instruction":"<p>Complete the notes. Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the text for each answer.</p>","context":"<h3>                                             Michiels''s Findings</h3><p><strong>Michiels has observed:</strong></p><ul><li>50 types of fish with red fluorescence in total</li><li>markings mainly near the&nbsp; ______ </li></ul><p><strong>Some of Michiels''s beliefs are that:</strong></p><ul><li>red fluorescence is used specifically for&nbsp; ______ &nbsp;purposes</li><li>fish, like some animals, use fluorescence to keep&nbsp; ______ &nbsp;away</li><li>gobies depend on red fluorescence to show their&nbsp; ______ </li><li>there are variations in the markings of fish among those&nbsp; ______ &nbsp;which are very similar</li></ul><p><strong>Other benefits of red fluorescence:</strong></p><ul><li>fish cannot easily be seen near backgrounds of&nbsp; ______ &nbsp;which give off a red light</li><li>helps some fish catch their prey</li></ul><p><strong>The ability to see red amongst fish:</strong></p><ul><li>the only fish proven to have this ability is the&nbsp; ______ </li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'be8e4e1d-075f-48a0-bfad-b709e3979edb',
    'reading',
    'c92ba344-4bd5-4005-a2b3-60a1ccfc2b73',
    13,
    'gap_fill',
    'Question 13',
    NULL,
    'seahorse',
    'The seahorse is the only fish proven to see red.',
    1,
    '{"explanation":"The seahorse is the only fish proven to see red.","fromPassage":"One exception is the seahorse, whose eyes are sensitive to red.","instruction":"<p>Complete the notes. Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the text for each answer.</p>","context":"<h3>                                             Michiels''s Findings</h3><p><strong>Michiels has observed:</strong></p><ul><li>50 types of fish with red fluorescence in total</li><li>markings mainly near the&nbsp; ______ </li></ul><p><strong>Some of Michiels''s beliefs are that:</strong></p><ul><li>red fluorescence is used specifically for&nbsp; ______ &nbsp;purposes</li><li>fish, like some animals, use fluorescence to keep&nbsp; ______ &nbsp;away</li><li>gobies depend on red fluorescence to show their&nbsp; ______ </li><li>there are variations in the markings of fish among those&nbsp; ______ &nbsp;which are very similar</li></ul><p><strong>Other benefits of red fluorescence:</strong></p><ul><li>fish cannot easily be seen near backgrounds of&nbsp; ______ &nbsp;which give off a red light</li><li>helps some fish catch their prey</li></ul><p><strong>The ability to see red amongst fish:</strong></p><ul><li>the only fish proven to have this ability is the&nbsp; ______ </li></ul>"}'::jsonb
);

