-- ============================================
-- Auto-generated seed for: The History of the Guitar
-- Source API ID: 1003
-- Generated: 2026-02-26T15:57:52.837Z
-- ============================================

-- ============================================
-- The History of the Guitar - Part 1: The History of the Guitar
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    'd8dd3726-721c-4a1d-b482-d6fc10d6a51f',
    'The History of the Guitar - Part 1: The History of the Guitar',
    'Cambridge IELTS - The History of the Guitar',
    'medium',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    '7621df6c-9618-41e2-bef2-e154ae186f72',
    'd8dd3726-721c-4a1d-b482-d6fc10d6a51f',
    1,
    'The History of the Guitar',
    'The earliest stringed instruments currently known to archaeologists are bowl harps. For millennia, people made bowl harps using, for example, tortoise shells as resonators, with a bent stick for a neck and one or more gut or silk strings. The world''s museums contain many such harps from the ancient Sumerian, Babylonian, and Egyptian civilisations. Around 2500-2000 BC more advanced harps, such as the beautifully carved 11-stringed instrument found in the tomb of Queen Shub-Ad in ancient Mesopotamia, now modern day Iraq, started to appear.

The tanbur probably developed from the bowl harp. It was different from the bowl harp in that its neck was straightened out to allow the strings to be pressed down to create more notes. Tomb paintings and stone carvings in Egypt indicate that harps and tanburs - plus flutes and percussion instruments - were being played together 3,500-4,000 years ago. Archaeologists have also found many similar relics amongst the ruins of the ancient Mesopotamian civilisation. Many of these instruments have survived into modern times in almost unchanged form, for example folk instruments of the region such as the Turkish saz and Afghan panchtar.

At 3,500 years old, the tanbur which belonged to the Egyptian singer Har-Mose is the earliest known example of this instrument. Har-Mose''s tanbur had three strings and a plectrum suspended from the neck by a cord. The soundbox, which increased the volume, was made of beautifully polished cedarwood and covered in rawhide. It can be seen today at the Archaeological Museum in Cairo.

In order to distinguish guitars from other stringed instruments, it is helpful to have a broad definition of the guitar. Music expert Dr Michael Kasha defines a guitar as having ''a long, fretted neck, flat wooden soundboard, ribs, and a flat back, most often with sides that curve inwards''. The oldest known visual representation of such an instrument is a stone carving at Alaca Huyuk in Turkey, which shows a 3,300-year-old instrument with a long neck and sides that clearly curve inwards.

The name ''guitar'' comes from the ancient Sanskrit word for ''string'' - ''tar''. Many popular stringed instruments used in central Asia today have existed in an unchanged form for several thousand years, as shown by archaeological finds in the area. Many have names that end in ''tar'', with a prefix indicating the number of strings, such as the doter, a two-stringed instrument found in Turkestan, and the Persian three-stringed setar and four-stringed chartar. The Indian sitar almost certainly took its name from the setar, but over the centuries it evolved radically, following the Indians'' own aesthetic and cultural ideals.

Tanburs and harps spread around the ancient world with travellers, merchants and seamen. The earliest guitar-like instruments to arrive in Europe had, most often, four strings. Many such instruments, and variations with from three to five strings, can be seen in mediaeval illustrated manuscripts. They were also carved in stone in European churches and cathedrals, from the first century AD through until the 13th century.

When the four-stringed Persian chartar arrived in Spain, however, it changed in form and construction, acquiring pairs of strings tuned to the same note instead of single strings. It became known as the chitarra. By the middle of the 14th century, the chitarra had become dominant, at least in most of Europe. The earliest known music for the eight-stringed chitarra was written in 16th-century Spain. The ten-string version first appeared in Italy at the same time, and gradually replaced the eight-stringed instrument. A further two strings first appeared in the 17th century, an innovation which guitar makers all over Europe quickly took up. However, this twelve-string arrangement gradually gave way to six single strings across the continent. The six-stringed guitar can thus be said to be a development of the twelve-stringed, rather than vice versa, as was thought previously.

At the beginning of the 19th century, the present-day guitar began to take shape, although bodies were still fairly small and narrow-waisted. The modern classical guitar first appeared in its current form in the mid-19th century, when the Spanish guitar maker Antonio Torres increased the size of the body, altered its proportions, and introduced the revolutionary fan-braced top. His design radically increased the volume and improved the tone of the instrument, and very soon became the norm. This design has remained essentially unchanged to this day.

At the time when Torres made his breakthrough, German immigrants to America - among them Christian Fredrich Martin - began making guitars with X-braced tops. Steel strings, which became widely available several decades later in the early 1900s, offered the promise of much louder guitar, but the increased tension was too much for the fan-braced top. The stronger X-braced top proved equal to the job, and quickly became the industry standard.

At the end of the 19th century, guitar manufacturer Orville Gibson added steel strings to a body constructed like a cello, a combination which produced more volume. The electric guitar was born when pickups were fitted to Hawaiian and jazz guitars in the late 1920s, but met with little success until 1936, when Gibson introduced its famous ES150 model.',
    851,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0a5ff1b5-750a-48e4-9915-ac6b529fae01',
    'reading',
    '7621df6c-9618-41e2-bef2-e154ae186f72',
    1,
    'tfng',
    'The instrument found in Queen Shub-Ad''s tomb is the world''s oldest known version of a harp.',
    NULL,
    'NOT GIVEN',
    'Explanation: The text mentions an 11-string instrument in Queen Shub-Ad’s tomb but does not claim it is the world’s oldest harp — so the statement is Not Given.',
    1,
    '{"explanation":"Explanation: The text mentions an 11-string instrument in Queen Shub-Ad’s tomb but does not claim it is the world’s oldest harp — so the statement is Not Given.","fromPassage":"TEST","instruction":"<p>Do the following statements agree with the information given in Reading Passage 1?</p><p>In boxes <strong>1-6 </strong>on your answer sheet, write:</p><p><strong><em>TRUE</em></strong><em> - if the statement agrees with the information</em></p><p><strong><em>FALSE</em></strong><em> - if the statement contradicts the information</em></p><p><strong><em>NOT GIVEN </em></strong><em>- if there is no information</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '4affec7b-6db8-41d7-b43b-4cb14d598145',
    'reading',
    '7621df6c-9618-41e2-bef2-e154ae186f72',
    2,
    'tfng',
    'Today''s Afghan panchtar is very similar to an ancient Mesopotamian instrument.',
    NULL,
    'TRUE',
    'Explanation: It says many instruments survived almost unchanged and cites the Afghan panchtar; similar relics were found in Mesopotamia — supporting TRUE.',
    1,
    '{"explanation":"Explanation: It says many instruments survived almost unchanged and cites the Afghan panchtar; similar relics were found in Mesopotamia — supporting TRUE.","instruction":"<p>Do the following statements agree with the information given in Reading Passage 1?</p><p>In boxes <strong>1-6 </strong>on your answer sheet, write:</p><p><strong><em>TRUE</em></strong><em> - if the statement agrees with the information</em></p><p><strong><em>FALSE</em></strong><em> - if the statement contradicts the information</em></p><p><strong><em>NOT GIVEN </em></strong><em>- if there is no information</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '489123e4-f902-46c2-8f50-1f53dfbbefbc',
    'reading',
    '7621df6c-9618-41e2-bef2-e154ae186f72',
    3,
    'tfng',
    'The Egyptian singer Har-Mose was an excellent tanbur player.',
    NULL,
    'NOT GIVEN',
    'Explanation: Har-Mose’s tanbur is described (age, materials), but nothing about his playing skill — Not Given.',
    1,
    '{"explanation":"Explanation: Har-Mose’s tanbur is described (age, materials), but nothing about his playing skill — Not Given.","instruction":"<p>Do the following statements agree with the information given in Reading Passage 1?</p><p>In boxes <strong>1-6 </strong>on your answer sheet, write:</p><p><strong><em>TRUE</em></strong><em> - if the statement agrees with the information</em></p><p><strong><em>FALSE</em></strong><em> - if the statement contradicts the information</em></p><p><strong><em>NOT GIVEN </em></strong><em>- if there is no information</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'ec789fa7-077b-44cd-8dce-0efd684fc3c0',
    'reading',
    '7621df6c-9618-41e2-bef2-e154ae186f72',
    4,
    'tfng',
    'Cairo Archaeological Museum contains many historic musical instruments.',
    NULL,
    'NOT GIVEN',
    'Explanation: Only Har-Mose’s tanbur is stated to be on display in Cairo; there’s no claim about many instruments — Not Given.',
    1,
    '{"explanation":"Explanation: Only Har-Mose’s tanbur is stated to be on display in Cairo; there’s no claim about many instruments — Not Given.","instruction":"<p>Do the following statements agree with the information given in Reading Passage 1?</p><p>In boxes <strong>1-6 </strong>on your answer sheet, write:</p><p><strong><em>TRUE</em></strong><em> - if the statement agrees with the information</em></p><p><strong><em>FALSE</em></strong><em> - if the statement contradicts the information</em></p><p><strong><em>NOT GIVEN </em></strong><em>- if there is no information</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '6aa07376-ae27-45cd-bb9a-d947112c3401',
    'reading',
    '7621df6c-9618-41e2-bef2-e154ae186f72',
    5,
    'tfng',
    'The instrument carved in stone at Alaca Huyuk is consistent with Dr Michael Kasha''s definition of a guitar.',
    NULL,
    'TRUE',
    'Explanation: Kasha’s definition (long, fretted neck; inward curves, etc.) is paired with the Alaca Huyuk carving that shows such an instrument — TRUE.',
    1,
    '{"explanation":"Explanation: Kasha’s definition (long, fretted neck; inward curves, etc.) is paired with the Alaca Huyuk carving that shows such an instrument — TRUE.","instruction":"<p>Do the following statements agree with the information given in Reading Passage 1?</p><p>In boxes <strong>1-6 </strong>on your answer sheet, write:</p><p><strong><em>TRUE</em></strong><em> - if the statement agrees with the information</em></p><p><strong><em>FALSE</em></strong><em> - if the statement contradicts the information</em></p><p><strong><em>NOT GIVEN </em></strong><em>- if there is no information</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '49f3f126-e5df-4f8b-8565-257df4293756',
    'reading',
    '7621df6c-9618-41e2-bef2-e154ae186f72',
    6,
    'tfng',
    'The different instruments that appeared in medieval literature had the same number of strings.',
    NULL,
    'FALSE',
    'Explanation: Medieval sources show several instruments with three to five strings, i.e., not the same number — FALSE.',
    1,
    '{"explanation":"Explanation: Medieval sources show several instruments with three to five strings, i.e., not the same number — FALSE.","instruction":"<p>Do the following statements agree with the information given in Reading Passage 1?</p><p>In boxes <strong>1-6 </strong>on your answer sheet, write:</p><p><strong><em>TRUE</em></strong><em> - if the statement agrees with the information</em></p><p><strong><em>FALSE</em></strong><em> - if the statement contradicts the information</em></p><p><strong><em>NOT GIVEN </em></strong><em>- if there is no information</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'dc2472f4-4e06-486e-a280-e36539736666',
    'reading',
    '7621df6c-9618-41e2-bef2-e154ae186f72',
    7,
    'gap_fill',
    'Question 7',
    NULL,
    'chartar',
    'Explanation: Chitarra in Spain developed from the Persian ‘chartar’ (four-string), which later changed construction/tuning.',
    1,
    '{"explanation":"Explanation: Chitarra in Spain developed from the Persian ‘chartar’ (four-string), which later changed construction/tuning.","instruction":"<p>Complete the table below.</p><p>Choose <strong>ONE WORD ONLY</strong> from the passage for each answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'b6a81d86-aac8-414e-aacb-23abadd25f18',
    'reading',
    '7621df6c-9618-41e2-bef2-e154ae186f72',
    8,
    'gap_fill',
    'Question 8',
    NULL,
    'body',
    'Explanation: Antonio Torres increased the size of the guitar’s ‘body’, among other changes.',
    1,
    '{"explanation":"Explanation: Antonio Torres increased the size of the guitar’s ‘body’, among other changes.","instruction":"<p>Complete the table below.</p><p>Choose <strong>ONE WORD ONLY</strong> from the passage for each answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'fe0d0a58-751a-4321-b30e-051bce9e6c8a',
    'reading',
    '7621df6c-9618-41e2-bef2-e154ae186f72',
    9,
    'gap_fill',
    'Question 9',
    NULL,
    'volume',
    'Explanation: Torres’s design ‘increased the volume and improved the tone’ — hence ‘volume’.',
    1,
    '{"explanation":"Explanation: Torres’s design ‘increased the volume and improved the tone’ — hence ‘volume’.","instruction":"<p>Complete the table below.</p><p>Choose <strong>ONE WORD ONLY</strong> from the passage for each answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '8a960685-8258-402c-b2bc-7c7f82122056',
    'reading',
    '7621df6c-9618-41e2-bef2-e154ae186f72',
    10,
    'gap_fill',
    'Question 10',
    NULL,
    'America',
    'Explanation: German immigrants to ‘America’ (e.g., C.F. Martin) first made X-braced guitars in the mid-19th century.',
    1,
    '{"explanation":"Explanation: German immigrants to ‘America’ (e.g., C.F. Martin) first made X-braced guitars in the mid-19th century.","instruction":"<p>Complete the table below.</p><p>Choose <strong>ONE WORD ONLY</strong> from the passage for each answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '1d32df3a-29ef-4990-947f-c9602fc40b2f',
    'reading',
    '7621df6c-9618-41e2-bef2-e154ae186f72',
    11,
    'gap_fill',
    'Question 11',
    NULL,
    'steel',
    'Explanation: ‘Steel’ strings became widely available in the early 1900s (≈ around 1900).',
    1,
    '{"explanation":"Explanation: ‘Steel’ strings became widely available in the early 1900s (≈ around 1900).","instruction":"<p>Complete the table below.</p><p>Choose <strong>ONE WORD ONLY</strong> from the passage for each answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'ed477c6a-0cff-4805-8631-8ccf4a4a72c1',
    'reading',
    '7621df6c-9618-41e2-bef2-e154ae186f72',
    12,
    'gap_fill',
    'Question 12',
    NULL,
    'pickups',
    'Explanation: In the late 1920s, ‘pickups’ were fitted to guitars, leading to the electric guitar.',
    1,
    '{"explanation":"Explanation: In the late 1920s, ‘pickups’ were fitted to guitars, leading to the electric guitar.","instruction":"<p>Complete the table below.</p><p>Choose <strong>ONE WORD ONLY</strong> from the passage for each answer.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '233486d8-3410-4fdf-865c-1551b28da51a',
    'reading',
    '7621df6c-9618-41e2-bef2-e154ae186f72',
    13,
    'gap_fill',
    'Question 13',
    NULL,
    'Gibson',
    'Explanation: Gibson introduced the famous ES-150 (1936), a well-known version — hence ‘Gibson’.',
    1,
    '{"explanation":"Explanation: Gibson introduced the famous ES-150 (1936), a well-known version — hence ‘Gibson’.","instruction":"<p>Complete the table below.</p><p>Choose <strong>ONE WORD ONLY</strong> from the passage for each answer.</p>"}'::jsonb
);

