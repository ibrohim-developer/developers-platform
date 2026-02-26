-- ============================================
-- Auto-generated seed for: Day 17: Lean Production Innovation – in Manufacturing Systems
-- Source API ID: 1795
-- Generated: 2026-02-26T11:43:56.403Z
-- ============================================

-- ============================================
-- Day 17: Lean Production Innovation – in Manufacturing Systems - Part 2: Lean Production Innovation – in Manufacturing Systems
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '6c42dc82-8193-4cca-aa32-994251e11ab8',
    'Day 17: Lean Production Innovation – in Manufacturing Systems - Part 2: Lean Production Innovation – in Manufacturing Systems',
    'Cambridge IELTS - Lean Production Innovation – in Manufacturing Systems',
    'medium',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    'a57bac95-17bd-451c-b216-d2a75d711807',
    '6c42dc82-8193-4cca-aa32-994251e11ab8',
    1,
    'Lean Production Innovation – in Manufacturing Systems',
    ' 
[HEADING: A]
After the First World War, car makers Henry Ford and Arthur Sloan of General Motors moved world manufacturing from centuries of craft production into the age of mass production. Largely as a result of this, the United States soon dominated the world economy. After the Second World War, and approximately a hundred years after Japan opened up to the modern world, Eiji Toyoda and Taiichi Ohno pioneered the concept of lean production at the Toyota car company. And now, although superimposing the method on existing mass production systems causes pain and upheaval, manufacturers around the world are trying to embrace this innovative system.

 
[HEADING: B] 
Perhaps the best way to describe lean production is to compare it with the two other major manufacturing systems: craft production and mass production. The craft producer uses highly skilled workers and simple but flexible tools to make exactly what the customer asks for – one item at a time. A present-day example of this method is the customised production of a few exotic sports cars. The concept of craft production remains very popular, but the problem with it is obvious. Goods produced by the craft method – as cars once exclusively were – cost too much for most of us to afford. So at the beginning of the twentieth century, mass production was developed as an alternative method. The mass producer uses narrowly skilled professionals to design products which are then made by unskilled or semi-skilled workers, using expensive, single-purpose machines. These churn out standardised products in very high volumes. Because the machinery costs so much, and is so intolerant of disruption, the mass producer keeps standard designs in production for as long as possible. The result is that the customer gets lower costs, but at the expense of variety, and by means of work methods which most employees find boring and dispiriting. By contrast, the lean production system combines the advantages of craft and mass production, while avoiding the high cost of the former and the rigidity of the latter. Towards this end, companies appoint teams of multi-skilled workers to all levels of the organisation, and use highly flexible and increasingly automated machines to produce goods in enormous volume and variety.

 
[HEADING: C]
Lean production is so called because, compared with mass production, it uses less of everything – half the human effort in the factory, half the manufacturing space, half the investment in tools, and half the engineering hours to develop the new product. It also results in far fewer defects.

 
[HEADING: D] 
Perhaps the most striking contrast between mass and lean production systems lies in their production standards. Mass producers set a limited goal for themselves: ''good enough'', which translates into an acceptable number of defects, a maximum acceptable number of inventories, and a narrow range of standardised products. Lean producers, on the other hand, are unwilling to compromise standards in any of these areas.

 
[HEADING: E] 
Although cost reduction is the primary objective of the lean production system, it must meet three other intermediate objectives in order to achieve this: quantity control, quality assurance and respect for humanity. Firstly, the system must be able to adapt to daily and monthly fluctuations in demand. Secondly, each separate process must supply only good units to the subsequent process. Thirdly, in as far as the system uses human resources to attain its cost objectives, respect for human needs must be cultivated. It should be emphasised that none of these three objectives can be achieved separately.

 
[HEADING: F] 
The continuous flow of lean manufacturing production relies on two practical mechanisms: just-in-time and autonamation. Just-in-time means, for example, that in the process of assembling the parts to build a car, components from the preceding process should arrive at the next part of the line at exactly the right time and in the correct quantities. If just-in-time is fully realised throughout the company, then superfluous inventories are completely eliminated from the factory, making stores or warehouses unnecessary. However, relying solely on a central planning approach to control schedules for all stages of the production process simultaneously is very difficult in the case of cars, which consist of thousands of parts. So the lean system looks at the production flow in reverse; in other words, employees go to the preceding process to withdraw the necessary quantity of units at the appropriate time. The preceding process must produce only sufficient quantities of units to replace those that have been withdrawn, and in turn withdraws the requisite number of components from the process that precedes it.

 
[HEADING: G] 
Autonamation is the automatic checking for abnormalities in the production process. In order to realise just-in-time perfectly, only units which are in perfect condition must be allowed to flow to the next process, and this flow must be regular and uninterrupted. In other words, quality control must coexist with just-in-time procedures throughout the system. Autonamation involves building in a mechanism to prevent the multiplication of defects in machines or product lines. For example, in Toyota factories almost all the machines have been fitted with stopping devices, and the concept of autonamation has been extended to manual production lines. If something abnormal happens there, the worker pushes a button to stop the whole line, and lights, which are hung so high in the factory that they are visible to everyone, indicate the position of the problem.',
    896,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd525380a-3797-4078-9a4a-a9b0c3ae4ba6',
    'reading',
    'a57bac95-17bd-451c-b216-d2a75d711807',
    14,
    'matching_headings',
    'Question 14',
    '["Global resistance to lean manufacturing","The historical context","Procedures for controlling quality","The pros and cons of different production systems","Working conditions","The impact on profits","The origin of the term","A crucial difference in levels of quality","Procedures for controlling supply","Interdependent strategies for controlling expenditure"]'::jsonb,
    'B',
    'Paragraph A describes the history of manufacturing: craft → mass → lean production.',
    1,
    '{"explanation":"Paragraph A describes the history of manufacturing: craft → mass → lean production.","fromPassage":"After the First World War, car makers Henry Ford and Arthur Sloan of General Motors moved world manufacturing from centuries of craft production into the age of mass production.","instruction":"<p>The text has<strong>&nbsp;SEVEN</strong>&nbsp;sections. Choose the correct heading for each section and move it into the gap.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '3773aa26-2037-4dd1-97ed-f6b11c849210',
    'reading',
    'a57bac95-17bd-451c-b216-d2a75d711807',
    15,
    'matching_headings',
    'Question 15',
    '["Global resistance to lean manufacturing","The historical context","Procedures for controlling quality","The pros and cons of different production systems","Working conditions","The impact on profits","The origin of the term","A crucial difference in levels of quality","Procedures for controlling supply","Interdependent strategies for controlling expenditure"]'::jsonb,
    'D',
    'Paragraph B compares craft production, mass production, and lean production, including advantages and disadvantages.',
    1,
    '{"explanation":"Paragraph B compares craft production, mass production, and lean production, including advantages and disadvantages.","fromPassage":"By contrast, the lean production system combines the advantages of craft and mass production, while avoiding the high cost of the former and the rigidity of the latter.","instruction":"<p>The text has<strong>&nbsp;SEVEN</strong>&nbsp;sections. Choose the correct heading for each section and move it into the gap.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '1d9d8d57-3e04-417d-a439-a6bb328830eb',
    'reading',
    'a57bac95-17bd-451c-b216-d2a75d711807',
    16,
    'matching_headings',
    'Question 16',
    '["Global resistance to lean manufacturing","The historical context","Procedures for controlling quality","The pros and cons of different production systems","Working conditions","The impact on profits","The origin of the term","A crucial difference in levels of quality","Procedures for controlling supply","Interdependent strategies for controlling expenditure"]'::jsonb,
    'G',
    'Paragraph C explains why it is called “lean” production: because it uses less of everything.',
    1,
    '{"explanation":"Paragraph C explains why it is called “lean” production: because it uses less of everything.","fromPassage":"Lean production is so called because, compared with mass production, it uses less of everything – half the human effort in the factory, half the manufacturing space, half the investment in tools, and half the engineering hours to develop the new product.","instruction":"<p>The text has<strong>&nbsp;SEVEN</strong>&nbsp;sections. Choose the correct heading for each section and move it into the gap.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'f3c82e4c-b839-4165-b24a-a84c538a38d2',
    'reading',
    'a57bac95-17bd-451c-b216-d2a75d711807',
    17,
    'matching_headings',
    'Question 17',
    '["Global resistance to lean manufacturing","The historical context","Procedures for controlling quality","The pros and cons of different production systems","Working conditions","The impact on profits","The origin of the term","A crucial difference in levels of quality","Procedures for controlling supply","Interdependent strategies for controlling expenditure"]'::jsonb,
    'H',
    'Paragraph D contrasts quality standards between mass production (“good enough”) and lean production (no compromise).',
    1,
    '{"explanation":"Paragraph D contrasts quality standards between mass production (“good enough”) and lean production (no compromise).","fromPassage":"Lean producers, on the other hand, are unwilling to compromise standards in any of these areas.","instruction":"<p>The text has<strong>&nbsp;SEVEN</strong>&nbsp;sections. Choose the correct heading for each section and move it into the gap.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '84f22ea1-b215-4fd6-a069-728fc7cf20d1',
    'reading',
    'a57bac95-17bd-451c-b216-d2a75d711807',
    18,
    'matching_headings',
    'Question 18',
    '["Global resistance to lean manufacturing","The historical context","Procedures for controlling quality","The pros and cons of different production systems","Working conditions","The impact on profits","The origin of the term","A crucial difference in levels of quality","Procedures for controlling supply","Interdependent strategies for controlling expenditure"]'::jsonb,
    'J',
    'Paragraph E lists three objectives that must work together to reduce costs.',
    1,
    '{"explanation":"Paragraph E lists three objectives that must work together to reduce costs.","fromPassage":"It should be emphasised that none of these three objectives can be achieved separately.","instruction":"<p>The text has<strong>&nbsp;SEVEN</strong>&nbsp;sections. Choose the correct heading for each section and move it into the gap.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '99b037e5-5e55-466d-909e-25667f352a14',
    'reading',
    'a57bac95-17bd-451c-b216-d2a75d711807',
    19,
    'matching_headings',
    'Question 19',
    '["Global resistance to lean manufacturing","The historical context","Procedures for controlling quality","The pros and cons of different production systems","Working conditions","The impact on profits","The origin of the term","A crucial difference in levels of quality","Procedures for controlling supply","Interdependent strategies for controlling expenditure"]'::jsonb,
    'I',
    'Paragraph F explains the just-in-time system — controlling when and how supplies move between processes.',
    1,
    '{"explanation":"Paragraph F explains the just-in-time system — controlling when and how supplies move between processes.","fromPassage":"If just-in-time is fully realised throughout the company, then superfluous inventories are completely eliminated from the factory, making stores or warehouses unnecessary. However, relying solely on a central planning approach to control schedules for all stages of the production process simultaneously is very difficult in the case of cars, which consist of thousands of parts.","instruction":"<p>The text has<strong>&nbsp;SEVEN</strong>&nbsp;sections. Choose the correct heading for each section and move it into the gap.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '70b43aea-e65c-40cf-b7d8-e3291d5d2c5a',
    'reading',
    'a57bac95-17bd-451c-b216-d2a75d711807',
    20,
    'matching_headings',
    'Question 20',
    '["Global resistance to lean manufacturing","The historical context","Procedures for controlling quality","The pros and cons of different production systems","Working conditions","The impact on profits","The origin of the term","A crucial difference in levels of quality","Procedures for controlling supply","Interdependent strategies for controlling expenditure"]'::jsonb,
    'C',
    'Paragraph G explains autonamation, which is automatic quality checking.',
    1,
    '{"explanation":"Paragraph G explains autonamation, which is automatic quality checking.","fromPassage":"Autonamation is the automatic checking for abnormalities in the production process.","instruction":"<p>The text has<strong>&nbsp;SEVEN</strong>&nbsp;sections. Choose the correct heading for each section and move it into the gap.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'ffd411aa-8ed5-4dc6-ad48-c2f6a8d1f1a6',
    'reading',
    'a57bac95-17bd-451c-b216-d2a75d711807',
    21,
    'gap_fill',
    'Question 21',
    NULL,
    'craft production',
    'Paragraph B says exotic sports cars are still produced using craft production.',
    1,
    '{"explanation":"Paragraph B says exotic sports cars are still produced using craft production.","fromPassage":"A present-day example of this method is the customised production of a few exotic sports cars.","instruction":"<p>Complete the sentences.&nbsp;Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the text for each answer.</p>","context":"<p>A small number of unusual cars are still produced by the&nbsp; ______ &nbsp;method.</p><p>Lean production requires staff who are ______ &nbsp;.</p><p>Lean production employs fewer people, and uses less ______ , equipment and time.</p><p>Storage facilities are not needed if a procedure known as&nbsp; ______ &nbsp;is implemented in the lean production method.</p><p>Autonamation is a procedure for spotting any&nbsp; ______ &nbsp;in the products on a production line.</p><p>At Toyota factories,&nbsp; ______ &nbsp;are suspended above manual production lines in order to show where production has to be halted.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd2117d6d-f2af-453b-9e6f-52988428832b',
    'reading',
    'a57bac95-17bd-451c-b216-d2a75d711807',
    22,
    'gap_fill',
    'Question 22',
    NULL,
    'multi-skilled',
    'Lean production uses teams of multi-skilled workers.',
    1,
    '{"explanation":"Lean production uses teams of multi-skilled workers.","fromPassage":"Towards this end, companies appoint teams of multi-skilled workers to all levels of the organisation","instruction":"<p>Complete the sentences.&nbsp;Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the text for each answer.</p>","context":"<p>A small number of unusual cars are still produced by the&nbsp; ______ &nbsp;method.</p><p>Lean production requires staff who are ______ &nbsp;.</p><p>Lean production employs fewer people, and uses less ______ , equipment and time.</p><p>Storage facilities are not needed if a procedure known as&nbsp; ______ &nbsp;is implemented in the lean production method.</p><p>Autonamation is a procedure for spotting any&nbsp; ______ &nbsp;in the products on a production line.</p><p>At Toyota factories,&nbsp; ______ &nbsp;are suspended above manual production lines in order to show where production has to be halted.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '539854df-f629-4595-8d6b-2e3590fd2946',
    'reading',
    'a57bac95-17bd-451c-b216-d2a75d711807',
    23,
    'gap_fill',
    'Question 23',
    NULL,
    'manufacturing space',
    'Lean production uses half the manufacturing space.',
    1,
    '{"explanation":"Lean production uses half the manufacturing space.","fromPassage":"Lean production is so called because, compared with mass production, it uses less of everything – half the human effort in the factory, half the manufacturing space, half the investment in tools, and half the engineering hours to develop the new product.","instruction":"<p>Complete the sentences.&nbsp;Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the text for each answer.</p>","context":"<p>A small number of unusual cars are still produced by the&nbsp; ______ &nbsp;method.</p><p>Lean production requires staff who are ______ &nbsp;.</p><p>Lean production employs fewer people, and uses less ______ , equipment and time.</p><p>Storage facilities are not needed if a procedure known as&nbsp; ______ &nbsp;is implemented in the lean production method.</p><p>Autonamation is a procedure for spotting any&nbsp; ______ &nbsp;in the products on a production line.</p><p>At Toyota factories,&nbsp; ______ &nbsp;are suspended above manual production lines in order to show where production has to be halted.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '16803f48-eb5b-4205-8280-eae38f59fd74',
    'reading',
    'a57bac95-17bd-451c-b216-d2a75d711807',
    24,
    'gap_fill',
    'Question 24',
    NULL,
    'just-in-time',
    'If just-in-time is used, inventories are eliminated and no storage is needed.',
    1,
    '{"explanation":"If just-in-time is used, inventories are eliminated and no storage is needed.","fromPassage":"If just-in-time is fully realised throughout the company, then superfluous inventories are completely eliminated from the factory, making stores or warehouses unnecessary.","instruction":"<p>Complete the sentences.&nbsp;Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the text for each answer.</p>","context":"<p>A small number of unusual cars are still produced by the&nbsp; ______ &nbsp;method.</p><p>Lean production requires staff who are ______ &nbsp;.</p><p>Lean production employs fewer people, and uses less ______ , equipment and time.</p><p>Storage facilities are not needed if a procedure known as&nbsp; ______ &nbsp;is implemented in the lean production method.</p><p>Autonamation is a procedure for spotting any&nbsp; ______ &nbsp;in the products on a production line.</p><p>At Toyota factories,&nbsp; ______ &nbsp;are suspended above manual production lines in order to show where production has to be halted.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'a9c21e0d-8771-46cc-a77b-755c480ca353',
    'reading',
    'a57bac95-17bd-451c-b216-d2a75d711807',
    25,
    'gap_fill',
    'Question 25',
    NULL,
    'abnormalities',
    'Autonamation is designed to detect abnormalities.',
    1,
    '{"explanation":"Autonamation is designed to detect abnormalities.","fromPassage":"Autonamation is the automatic checking for abnormalities in the production process.","instruction":"<p>Complete the sentences.&nbsp;Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the text for each answer.</p>","context":"<p>A small number of unusual cars are still produced by the&nbsp; ______ &nbsp;method.</p><p>Lean production requires staff who are ______ &nbsp;.</p><p>Lean production employs fewer people, and uses less ______ , equipment and time.</p><p>Storage facilities are not needed if a procedure known as&nbsp; ______ &nbsp;is implemented in the lean production method.</p><p>Autonamation is a procedure for spotting any&nbsp; ______ &nbsp;in the products on a production line.</p><p>At Toyota factories,&nbsp; ______ &nbsp;are suspended above manual production lines in order to show where production has to be halted.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'f8ee7b12-3782-49d9-ace9-d550a7fb1105',
    'reading',
    'a57bac95-17bd-451c-b216-d2a75d711807',
    26,
    'gap_fill',
    'Question 26',
    NULL,
    'lights',
    'Lights hang above lines to show where a problem occurred.',
    1,
    '{"explanation":"Lights hang above lines to show where a problem occurred.","fromPassage":"If something abnormal happens there, the worker pushes a button to stop the whole line, and lights, which are hung so high in the factory that they are visible to everyone, indicate the position of the problem.","instruction":"<p>Complete the sentences.&nbsp;Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the text for each answer.</p>","context":"<p>A small number of unusual cars are still produced by the&nbsp; ______ &nbsp;method.</p><p>Lean production requires staff who are ______ &nbsp;.</p><p>Lean production employs fewer people, and uses less ______ , equipment and time.</p><p>Storage facilities are not needed if a procedure known as&nbsp; ______ &nbsp;is implemented in the lean production method.</p><p>Autonamation is a procedure for spotting any&nbsp; ______ &nbsp;in the products on a production line.</p><p>At Toyota factories,&nbsp; ______ &nbsp;are suspended above manual production lines in order to show where production has to be halted.</p>"}'::jsonb
);

