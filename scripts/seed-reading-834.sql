-- ============================================
-- Auto-generated seed for: The English Canal System
-- Source API ID: 834
-- Generated: 2026-02-26T16:02:58.861Z
-- ============================================

-- ============================================
-- The English Canal System - Part 1: The English Canal System
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '97d237c3-fd6e-4d13-bf6f-f17fdaed72ae',
    'The English Canal System - Part 1: The English Canal System',
    'Cambridge IELTS - The English Canal System',
    'medium',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    '89f61541-4690-4141-8d65-cdb04bd56693',
    '97d237c3-fd6e-4d13-bf6f-f17fdaed72ae',
    1,
    'The English Canal System',
    'The development of an extensive inland network of rivers and canals in England during the 18th century was a direct result of the Industrial Revolution, which required an effective transport system. The widespread use of inland waterways in England may seem surprising, as the country''s rivers are relatively small compared to those in continental Europe, and no part of England lies more than about 150 kilometres from the sea. At first glance, road transport might have appeared to be a more practical option. However, the small scale of English rivers may actually have been advantageous. During the early 18th century, hydraulic engineering was still at an early stage, and the modest size of the required works made it easier for engineers of the time to plan and construct them successfully.

Another factor that encouraged the growth of inland water transport was the poor condition of roads in the 18th century. They were few in number, badly maintained, and often impassable, particularly in the steep hills and valleys of northern England. As a result, they were incapable of carrying the large quantities of heavy materials demanded by expanding industries. Merchants and factory owners needed a cheaper means of moving both raw materials and finished goods. In England, it was these merchants who financed the construction of the first successful canals, unlike in many parts of Europe, where such projects were typically funded by the aristocracy.

By the second half of the 18th century, most of England''s canal system had been completed. Civil engineering had advanced considerably, and many of the earlier canals, which had taken long, winding routes, were later made more direct, thereby reducing travel distances. Another major innovation was the introduction of locks, which made it possible to build canals through hilly areas. Locks functioned like steps, raising or lowering boats from one level to another. When a boat was enclosed in the central chamber and both sets of lock gates were closed, no water could enter or escape through them, as they were watertight. However, water could flow in or out through sluice gates positioned below the lock gates. By opening or closing these, the water level inside the lock could be adjusted until it matched the level of the water outside, allowing the boat to continue on its journey.

Nevertheless, several factors associated with the late 18th-century canal network led to persistent problems. To minimize construction costs, many canals and locks in industrial areas were built to very small dimensions—sometimes only 2.15 metres wide. Consequently, the boats that used them also had to be narrow. The canal builders of the time had not anticipated the rapid growth in traffic that would follow. By contrast, canals linking to coastal rivers and ports were wider, with larger boats and locks measuring around 4.3 metres across. This lack of standardisation resulted in a fragmented transport network.

During the 1790s, many newly planned canals were viewed primarily as profit-making ventures by investors who were often speculators with no connection to local industry. These individuals believed that any canal would be profitable, regardless of its location. In practice, only a few canals yielded good returns, most of them wide canals in northern England that served as vital links between industrial centres and transport routes. Canals built in agricultural regions rarely carried enough cargo to recover their construction costs. By the early 19th century, many canals could no longer compete with the newly emerging railways. To reduce competition, railway companies purchased many of these canals but often neglected their maintenance, leading to their eventual abandonment.

Today, inland water transport is no longer a major mode of goods transportation in England, with most freight now moved by road. In the latter half of the 20th century, the General Development Initiative (GDI) campaigned to increase public awareness of the historical and recreational value of canals. It was not an easy task, as many influential figures considered canals to be derelict and even dangerous to children, with some parents calling for them to be drained. However, growing public interest gradually brought national attention to these waterways. Many people became fascinated by their history, as centuries of neglect had left them largely unchanged since their construction over 200 years ago. Today, thanks to restoration and conservation efforts, England''s canals are recognised as sites of both historical and environmental significance.',
    722,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '42c067de-1771-4067-bae6-ccd19e637bcd',
    'reading',
    '89f61541-4690-4141-8d65-cdb04bd56693',
    1,
    'tfng',
    'Larger rivers would have made the work of 18th-century hydraulic engineers more difficult.',
    NULL,
    'TRUE',
    '🔍 Explanation (Paragraph 1): “…the small scale of English rivers may actually have been advantageous… the modest size of the required works made it easier for engineers of the time…”

This shows the opposite of what the question says. Smaller rivers helped engineers; therefore, larger ones would likely have made it more difficult. The statement is logically opposite to what the text suggests.

👍🏼 Synonyms/Paraphrases:
“larger rivers” ↔ opposite of “small scale of English rivers”
“made…more difficult” ↔ “made it easier” (opposite meaning)',
    1,
    '{"explanation":"🔍 Explanation (Paragraph 1): “…the small scale of English rivers may actually have been advantageous… the modest size of the required works made it easier for engineers of the time…”\n\nThis shows the opposite of what the question says. Smaller rivers helped engineers; therefore, larger ones would likely have made it more difficult. The statement is logically opposite to what the text suggests.\n\n👍🏼 Synonyms/Paraphrases:\n“larger rivers” ↔ opposite of “small scale of English rivers”\n“made…more difficult” ↔ “made it easier” (opposite meaning)","instruction":"<p>Do the following statements agree with the information given in Reading Passage 1?</p><p>In boxes 1–5 on your answer sheet, write:</p><p><strong><em>TRUE</em></strong><em> - if the statement agrees with the information</em></p><p><strong><em>FALSE</em></strong><em> - if the statement contradicts the information</em></p><p><strong><em>NOT GIVEN</em></strong><em> - if there is no information on this</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'b9053355-1891-4f70-ba75-0cd85871cb11',
    'reading',
    '89f61541-4690-4141-8d65-cdb04bd56693',
    2,
    'tfng',
    'Merchants refused to pay the high costs associated with road transport.',
    NULL,
    'NOT GIVEN',
    '🔍 Explanation (Paragraph 2): “Merchants and factory owners needed a cheaper means of moving… raw materials and finished goods. In England, it was these merchants who financed the construction of the first successful canals…”

The passage says they looked for a cheaper option but does not say they refused to pay for road transport. No explicit refusal is mentioned.

👍🏼 Synonyms/Paraphrases:
“refused to pay” ≠ “needed a cheaper means”
“high costs associated with road transport” ↔ “incapable of carrying heavy materials… cheaper means”',
    1,
    '{"explanation":"🔍 Explanation (Paragraph 2): “Merchants and factory owners needed a cheaper means of moving… raw materials and finished goods. In England, it was these merchants who financed the construction of the first successful canals…”\n\nThe passage says they looked for a cheaper option but does not say they refused to pay for road transport. No explicit refusal is mentioned.\n\n👍🏼 Synonyms/Paraphrases:\n“refused to pay” ≠ “needed a cheaper means”\n“high costs associated with road transport” ↔ “incapable of carrying heavy materials… cheaper means”","instruction":"<p>Do the following statements agree with the information given in Reading Passage 1?</p><p>In boxes 1–5 on your answer sheet, write:</p><p><strong><em>TRUE</em></strong><em> - if the statement agrees with the information</em></p><p><strong><em>FALSE</em></strong><em> - if the statement contradicts the information</em></p><p><strong><em>NOT GIVEN</em></strong><em> - if there is no information on this</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'e7afabbd-15d7-43bb-ba09-96499650dfb7',
    'reading',
    '89f61541-4690-4141-8d65-cdb04bd56693',
    3,
    'tfng',
    '18th-century European and English canals were funded differently.',
    NULL,
    'TRUE',
    '🔍 Explanation (Paragraph 2): “In England… merchants… financed… canals, unlike in many parts of Europe, where such projects were typically funded by the aristocracy.”

This directly supports the idea that funding sources were different between England and Europe.

👍🏼 Synonyms/Paraphrases:
“funded differently” ↔ “merchants… unlike… aristocracy”
“European and English canals” → “England” vs. “many parts of Europe”',
    1,
    '{"explanation":"🔍 Explanation (Paragraph 2): “In England… merchants… financed… canals, unlike in many parts of Europe, where such projects were typically funded by the aristocracy.”\n\nThis directly supports the idea that funding sources were different between England and Europe.\n\n👍🏼 Synonyms/Paraphrases:\n“funded differently” ↔ “merchants… unlike… aristocracy”\n“European and English canals” → “England” vs. “many parts of Europe”","instruction":"<p>Do the following statements agree with the information given in Reading Passage 1?</p><p>In boxes 1–5 on your answer sheet, write:</p><p><strong><em>TRUE</em></strong><em> - if the statement agrees with the information</em></p><p><strong><em>FALSE</em></strong><em> - if the statement contradicts the information</em></p><p><strong><em>NOT GIVEN</em></strong><em> - if there is no information on this</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '3f226796-b302-4966-9992-986eb3fec276',
    'reading',
    '89f61541-4690-4141-8d65-cdb04bd56693',
    4,
    'tfng',
    'Canals were narrower in some places than in others.',
    NULL,
    'TRUE',
    '🔍 Explanation (Paragraph 4): “…many canals and locks in industrial areas were built to very small dimensions… By contrast, canals linking to coastal rivers and ports were wider…”

This contrast confirms variation in canal width depending on the location.

👍🏼 Synonyms/Paraphrases:
“narrower in some places” ↔ “very small dimensions”
“than in others” ↔ “by contrast… were wider”',
    1,
    '{"explanation":"🔍 Explanation (Paragraph 4): “…many canals and locks in industrial areas were built to very small dimensions… By contrast, canals linking to coastal rivers and ports were wider…”\n\nThis contrast confirms variation in canal width depending on the location.\n\n👍🏼 Synonyms/Paraphrases:\n“narrower in some places” ↔ “very small dimensions”\n“than in others” ↔ “by contrast… were wider”","instruction":"<p>Do the following statements agree with the information given in Reading Passage 1?</p><p>In boxes 1–5 on your answer sheet, write:</p><p><strong><em>TRUE</em></strong><em> - if the statement agrees with the information</em></p><p><strong><em>FALSE</em></strong><em> - if the statement contradicts the information</em></p><p><strong><em>NOT GIVEN</em></strong><em> - if there is no information on this</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'e5188f06-f811-4bf1-b489-cdc6ee4910b1',
    'reading',
    '89f61541-4690-4141-8d65-cdb04bd56693',
    5,
    'tfng',
    'Canal locks were first introduced in the 19th century.',
    NULL,
    'FALSE',
    '🔍 Explanation (Paragraph 3): “Another major innovation was the introduction of locks… By the second half of the 18th century, most of England’s canal system had been completed.”

Locks were introduced before the 19th century, i.e., during or before the late 18th century.

👍🏼 Synonyms/Paraphrases:
“first introduced” ↔ “introduction of locks”
“19th century” ≠ “second half of the 18th century”',
    1,
    '{"explanation":"🔍 Explanation (Paragraph 3): “Another major innovation was the introduction of locks… By the second half of the 18th century, most of England’s canal system had been completed.”\n\nLocks were introduced before the 19th century, i.e., during or before the late 18th century.\n\n👍🏼 Synonyms/Paraphrases:\n“first introduced” ↔ “introduction of locks”\n“19th century” ≠ “second half of the 18th century”","instruction":"<p>Do the following statements agree with the information given in Reading Passage 1?</p><p>In boxes 1–5 on your answer sheet, write:</p><p><strong><em>TRUE</em></strong><em> - if the statement agrees with the information</em></p><p><strong><em>FALSE</em></strong><em> - if the statement contradicts the information</em></p><p><strong><em>NOT GIVEN</em></strong><em> - if there is no information on this</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'e28923d4-b03a-4674-851d-18e7fc92c0b3',
    'reading',
    '89f61541-4690-4141-8d65-cdb04bd56693',
    6,
    'gap_fill',
    'Question 6',
    NULL,
    'hilly areas',
    '🔍 Explanation (Paragraph 3): “Locks… made it possible to build canals through hilly areas.',
    1,
    '{"explanation":"🔍 Explanation (Paragraph 3): “Locks… made it possible to build canals through hilly areas.","instruction":"<h3><strong>Complete the notes below.</strong></h3><p>Choose&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the passage for each answer.</p><p>Write your answers in boxes 6–9 on your answer sheet.</p>","context":"<h2><strong>Canal Locks</strong></h2><h3><strong>Reasons for locks:</strong></h3><ul><li>Locks allowed canal boats to travel through  ______ .</li></ul><h3><strong>How locks operate:</strong></h3><ul><li>The boat is shut in the  ______ of the lock.</li><li> ______ open or close to raise or lower the water level.</li><li>Water levels must be  ______ before the boat can exit.</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '115fc8cb-9d69-458a-9641-1727b5f8c619',
    'reading',
    '89f61541-4690-4141-8d65-cdb04bd56693',
    7,
    'gap_fill',
    'Question 7',
    NULL,
    'central chamber',
    '🔍 Explanation (Paragraph 3): “When a boat was enclosed in the central chamber…',
    1,
    '{"explanation":"🔍 Explanation (Paragraph 3): “When a boat was enclosed in the central chamber…","instruction":"<h3><strong>Complete the notes below.</strong></h3><p>Choose&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the passage for each answer.</p><p>Write your answers in boxes 6–9 on your answer sheet.</p>","context":"<h2><strong>Canal Locks</strong></h2><h3><strong>Reasons for locks:</strong></h3><ul><li>Locks allowed canal boats to travel through  ______ .</li></ul><h3><strong>How locks operate:</strong></h3><ul><li>The boat is shut in the  ______ of the lock.</li><li> ______ open or close to raise or lower the water level.</li><li>Water levels must be  ______ before the boat can exit.</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'e6bd879b-90b3-41b4-9b0a-1f00f56b26c8',
    'reading',
    '89f61541-4690-4141-8d65-cdb04bd56693',
    8,
    'gap_fill',
    'Question 8',
    NULL,
    'sluice gates',
    '🔍 Explanation (Paragraph 3): “...sluice gates… By opening or closing these, the water level… could be adjusted…',
    1,
    '{"explanation":"🔍 Explanation (Paragraph 3): “...sluice gates… By opening or closing these, the water level… could be adjusted…","instruction":"<h3><strong>Complete the notes below.</strong></h3><p>Choose&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the passage for each answer.</p><p>Write your answers in boxes 6–9 on your answer sheet.</p>","context":"<h2><strong>Canal Locks</strong></h2><h3><strong>Reasons for locks:</strong></h3><ul><li>Locks allowed canal boats to travel through  ______ .</li></ul><h3><strong>How locks operate:</strong></h3><ul><li>The boat is shut in the  ______ of the lock.</li><li> ______ open or close to raise or lower the water level.</li><li>Water levels must be  ______ before the boat can exit.</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '92eaf473-7f51-4bcd-a1da-c89d887890b9',
    'reading',
    '89f61541-4690-4141-8d65-cdb04bd56693',
    9,
    'gap_fill',
    'Question 9',
    NULL,
    'matched',
    '🔍 Explanation (Paragraph 3): “...the water level inside the lock could be adjusted until it matched the level of the water outside…',
    1,
    '{"explanation":"🔍 Explanation (Paragraph 3): “...the water level inside the lock could be adjusted until it matched the level of the water outside…","instruction":"<h3><strong>Complete the notes below.</strong></h3><p>Choose&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the passage for each answer.</p><p>Write your answers in boxes 6–9 on your answer sheet.</p>","context":"<h2><strong>Canal Locks</strong></h2><h3><strong>Reasons for locks:</strong></h3><ul><li>Locks allowed canal boats to travel through  ______ .</li></ul><h3><strong>How locks operate:</strong></h3><ul><li>The boat is shut in the  ______ of the lock.</li><li> ______ open or close to raise or lower the water level.</li><li>Water levels must be  ______ before the boat can exit.</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd8299f81-522d-41b9-9f72-4098cc7a9fee',
    'reading',
    '89f61541-4690-4141-8d65-cdb04bd56693',
    10,
    'gap_fill',
    'Question 10',
    NULL,
    'speculators',
    '🔍 Explanation (Paragraph 5): “...investors who were often speculators with no connection to local industry.',
    1,
    '{"explanation":"🔍 Explanation (Paragraph 5): “...investors who were often speculators with no connection to local industry.","instruction":"<p><strong>Answer the questions below.</strong></p><p><em>Choose&nbsp;</em><strong><em>NO MORE THAN TWO WORDS</em></strong><em>&nbsp;from the passage for each answer.</em></p><p><em>Write your answers in boxes 10–13 on your answer sheet.</em></p>","context":"<p>Which group of people from outside the local community saw canals as a way of getting rich? </p><p> ______ </p><p>In which geographical area did the canals make more money?</p><p> ______ </p><p>What were the wrong kinds of areas to build profitable canals in?</p><p> ______ </p><p>Who bought the canals that were not making a profit?</p><p> ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'f5b61970-b076-46d6-a98a-fe1e634f7cb9',
    'reading',
    '89f61541-4690-4141-8d65-cdb04bd56693',
    11,
    'gap_fill',
    'Question 11',
    NULL,
    'northern England',
    '🔍 Explanation (Paragraph 5): “...wide canals in northern England... yielded good returns...',
    1,
    '{"explanation":"🔍 Explanation (Paragraph 5): “...wide canals in northern England... yielded good returns...","instruction":"<p><strong>Answer the questions below.</strong></p><p><em>Choose&nbsp;</em><strong><em>NO MORE THAN TWO WORDS</em></strong><em>&nbsp;from the passage for each answer.</em></p><p><em>Write your answers in boxes 10–13 on your answer sheet.</em></p>","context":"<p>Which group of people from outside the local community saw canals as a way of getting rich? </p><p> ______ </p><p>In which geographical area did the canals make more money?</p><p> ______ </p><p>What were the wrong kinds of areas to build profitable canals in?</p><p> ______ </p><p>Who bought the canals that were not making a profit?</p><p> ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '1c2199dc-8948-4d12-9c9b-893f229fbca9',
    'reading',
    '89f61541-4690-4141-8d65-cdb04bd56693',
    12,
    'gap_fill',
    'Question 12',
    NULL,
    'agricultural regions',
    '🔍 Explanation (Paragraph 5): “Canals built in agricultural regions rarely carried enough cargo to recover their construction costs.',
    1,
    '{"explanation":"🔍 Explanation (Paragraph 5): “Canals built in agricultural regions rarely carried enough cargo to recover their construction costs.","instruction":"<p><strong>Answer the questions below.</strong></p><p><em>Choose&nbsp;</em><strong><em>NO MORE THAN TWO WORDS</em></strong><em>&nbsp;from the passage for each answer.</em></p><p><em>Write your answers in boxes 10–13 on your answer sheet.</em></p>","context":"<p>Which group of people from outside the local community saw canals as a way of getting rich? </p><p> ______ </p><p>In which geographical area did the canals make more money?</p><p> ______ </p><p>What were the wrong kinds of areas to build profitable canals in?</p><p> ______ </p><p>Who bought the canals that were not making a profit?</p><p> ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '5a65be9e-afb6-4c06-85e8-99fb11c15542',
    'reading',
    '89f61541-4690-4141-8d65-cdb04bd56693',
    13,
    'gap_fill',
    'Question 13',
    NULL,
    'railway companies',
    '🔍 Explanation (Paragraph 5): “...railway companies purchased many of these canals...',
    1,
    '{"explanation":"🔍 Explanation (Paragraph 5): “...railway companies purchased many of these canals...","instruction":"<p><strong>Answer the questions below.</strong></p><p><em>Choose&nbsp;</em><strong><em>NO MORE THAN TWO WORDS</em></strong><em>&nbsp;from the passage for each answer.</em></p><p><em>Write your answers in boxes 10–13 on your answer sheet.</em></p>","context":"<p>Which group of people from outside the local community saw canals as a way of getting rich? </p><p> ______ </p><p>In which geographical area did the canals make more money?</p><p> ______ </p><p>What were the wrong kinds of areas to build profitable canals in?</p><p> ______ </p><p>Who bought the canals that were not making a profit?</p><p> ______ </p>"}'::jsonb
);

