-- ============================================
-- Auto-generated seed for: Day 9: The History of Chocolate
-- Source API ID: 1665
-- Generated: 2026-02-26T11:43:41.321Z
-- ============================================

-- ============================================
-- Day 9: The History of Chocolate - Part 3: The History of Chocolate
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '8c6d04b6-fea1-44f8-811c-4a56549da098',
    'Day 9: The History of Chocolate - Part 3: The History of Chocolate',
    'Cambridge IELTS - The History of Chocolate',
    'hard',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    '4e924be4-3891-4577-bfdf-6830a260a12a',
    '8c6d04b6-fea1-44f8-811c-4a56549da098',
    1,
    'The History of Chocolate',
    'A 
Chocolate is now perceived as a ubiquitous indulgence, whether consumed as confectionery or a beverage, readily accessible in global markets. However, it may come as a surprise that chocolate was once regarded as a commodity of extraordinary value. The discovery of the cocoa tree, the source of chocolate, occurred approximately 2,000 years ago in the lush tropical rain forests of the Americas. The evolution of the chocolate — from a regionally significant Mesoamerican drink to globally consumed confectionery — has been shaped through cross-continental cultural exchanges and the successive influences of multiple civilisations.

B 
Historians suggest that the ancient Maya pioneered cocoa tree cultivation in Mesoamerica, with evidence dating back approximately 2,000 years. They transplanted cocoa trees from the dense rain forest into their domesticated gardens, where cocoa beans were initially roasted and ground into a smooth paste. The paste was combined with spices and water to produce unsweetened chocolate beverages. The Maya also employed a distinctive technique of transferring the liquid back and forth between containers, generating a foamy layer on the drink''s surface.

C 
Cocoa and chocolate were integral to Maya culture, commonly depicted in their architectural structures and artistic works. While the aristocracy, particularly the royal families, consumed chocolate during elaborate ceremonies, even less privileged groups occasionally savoured the drink. Furthermore, cocoa beans served as a powerful emblem of marital union and were ritually exchanged during wedding ceremonies.

D 
The Aztec civilisation in Mexico regarded chocolate as a prestigious commodity, despite being geographically unable to cultivate cocoa trees within their heartland. Accordingly, they sourced cocoa beans through extensive trade networks, even utilising them as currency for tax payments. Chocolate held an exclusive function within Aztec imperial and religious ceremonies, where priests offered cocoa beans as divine offerings and prepared sacred chocolate drinks. Due to the scarcity of cocoa beans, consumption remained restricted to the societal elite, with historical accounts suggesting Emperor Montezuma consumed up to 50 cups daily. Linguists trace the term ''chocolate'' to the Aztec Nahuatl word xocolatl, meaning ''bitter water'' in the Nahuatl language, though some scholars argue that it has hybrid origins combining Maya and Nahuatl linguistic elements.

E 
In 1502, explorer Christopher Columbus introduced cocoa beans to Spain after voyaging to Mesoamerica, and later Spanish explorer Hernán Cortés quickly recognised the potential economic value of chocolate. Upon arriving in present-day Mexico in 1519, Cortés observed that chocolate beverages would appeal to the Spanish. After conquering the Aztec Empire, Spanish forces exported confiscated cocoa supplies to Spain. In response to the growing demand, Spain began cultivating cocoa trees in its American colonies. Spanish elite first developed a taste for sweetened chocolate drinks, but the beverage rapidly spread across Europe. England, the Netherlands, and France followed suit by establishing cocoa plantations in their own colonies. By the 18th century, chocolate remained primarily a luxury restricted to the affluent. However, the Industrial Revolution''s technologies enabled mechanised production, dramatically reducing costs and making chocolate available to a broader population.

F 
Cocoa trees are cultivated across multiple countries in Africa, Mesoamerica, and South America, thriving in cool, shaded environments within equatorial zones. Despite widespread cultivation, cocoa farming remains labour-intensive, due to the trees'' requirement for specific water thresholds, temperature ranges, soil compositions, and protection from environmental threats. Approximately five years after planting, cocoa trees begin to yield large, pod-shaped fruits that grow on the trunk. These pods contain the beans used in chocolate production. While several types of cocoa trees exist, the bulk of the chocolate is produced from the seeds of the most commonly cultivated varieties. However, farmers opt to grow more specialised types, such as Criollo or Trinitario, valued for distinctive flavour profiles. Unexpectedly, cocoa trees grown on farms are more vulnerable to disease and pests than their wild counterparts. Cocoa cultivation presents a strenuous endeavour for farmers, who sell their harvests on futures markets, exposing their incomes to external market fluctuations.

G 
The process of chocolate production involves a series of steps, carried out in specialised factories where cocoa beans are meticulously processed. Workers first sort, clean, and roast the beans before extracting the outer shells, leaving only the inner nibs. These nibs are then ground into a dense paste known as chocolate liquor, which is subsequently separated into two components: cocoa solids and cocoa butter. Following standardised formulations, chocolate manufacturers blend the chocolate liquor with precise ratios of sugar, milk, and cocoa butter. The resulting mixture, often referred to as the ''crumb'', undergoes fine grinding to create a smooth consistency. Finally, the mixture is then subjected to two additional processes — conching and tempering — before being placed into moulds to create various forms, such as bars or other chocolate products.

H 
Chocolate holds significant global economic value, with the manufacturing industry generating over $5 billion annually from cocoa crops, and its reputation remains most prominent in Europe and the United States. For instance, US cocoa product imports reached $1.4 billion in 2005. On average, Americans consume over five kilogrammes of chocolate per person each year. In addition, upscale chocolate boutiques, which offer premium chocolates, have gained significant popularity. Many of these shops specialise in artisanal chocolates, crafted with unique flavour profiles. Renowned chocolate brands such as Cadbury, Godiva, Lindt, and Ferrero Rocher dominate the market. However, the cocoa and chocolate production sectors often face challenges related to fair trade, sustainable development, and environmental preservation. These issues are now being actively addressed by industry stakeholders, including officials, activists, and researchers, who are working closely with farmers to promote faming practices that foster sustainability and protect the environment.',
    924,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '91869709-fb6f-4289-8312-e3ade03c962a',
    'reading',
    '4e924be4-3891-4577-bfdf-6830a260a12a',
    27,
    'matching_info',
    'The part of cocoa trees used for chocolate production.',
    '["","","","","","","",""]'::jsonb,
    'F',
    'The passage mentions that the pods of the cocoa tree contain beans, which are the main ingredient used in chocolate production. These beans are harvested, processed, and turned into chocolate products.',
    1,
    '{"explanation":"The passage mentions that the pods of the cocoa tree contain beans, which are the main ingredient used in chocolate production. These beans are harvested, processed, and turned into chocolate products.","fromPassage":"Approximately five years after planting, cocoa trees begin to yield large, pod-shaped fruits that grow on the trunk. These pods contain the beans used in chocolate production.","instruction":"<p><strong>Reading Passage 3 has eight paragraphs, A-H.</strong></p><p><strong>Which paragraph contains the following information?</strong></p><p>Choose the correct letter, A-H, in boxes 27-31.</p><p><strong><em>NB</em></strong><em>&nbsp;You may use any letter more than once.</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd67e951b-f488-440a-9c66-1613e374d9da',
    'reading',
    '4e924be4-3891-4577-bfdf-6830a260a12a',
    28,
    'matching_info',
    'Annual chocolate consumption per capita in the United States.',
    '["","","","","","","",""]'::jsonb,
    'H',
    'The paragraph talks about the popularity of chocolate in the US and states a specific average amount consumed per person, which directly answers this question.',
    1,
    '{"explanation":"The paragraph talks about the popularity of chocolate in the US and states a specific average amount consumed per person, which directly answers this question.","fromPassage":"On average, Americans consume over five kilogrammes of chocolate per person each year.","instruction":"<p><strong>Reading Passage 3 has eight paragraphs, A-H.</strong></p><p><strong>Which paragraph contains the following information?</strong></p><p>Choose the correct letter, A-H, in boxes 27-31.</p><p><strong><em>NB</em></strong><em>&nbsp;You may use any letter more than once.</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0d27f5be-78ac-464c-b791-f1091ea62d6a',
    'reading',
    '4e924be4-3891-4577-bfdf-6830a260a12a',
    29,
    'matching_info',
    'The higher likelihood of cultivated cocoa trees being attacked by insects.',
    '["","","","","","","",""]'::jsonb,
    'F',
    'The paragraph explains that cocoa trees grown on farms (cultivated) are more vulnerable to disease and pests than wild trees, which clearly answers this question.',
    1,
    '{"explanation":"The paragraph explains that cocoa trees grown on farms (cultivated) are more vulnerable to disease and pests than wild trees, which clearly answers this question.","fromPassage":"Unexpectedly, cocoa trees grown on farms are more vulnerable to disease and pests than their wild counterparts.","instruction":"<p><strong>Reading Passage 3 has eight paragraphs, A-H.</strong></p><p><strong>Which paragraph contains the following information?</strong></p><p>Choose the correct letter, A-H, in boxes 27-31.</p><p><strong><em>NB</em></strong><em>&nbsp;You may use any letter more than once.</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'aea3dbe5-d5b8-409d-a50e-e64bd0b47d49',
    'reading',
    '4e924be4-3891-4577-bfdf-6830a260a12a',
    30,
    'matching_info',
    'A community which developed a preference for sweetened chocolate beverages',
    '["","","","","","","",""]'::jsonb,
    'E',
    'After cocoa was brought to Spain, the Spanish elite started drinking sweetened chocolate, and this preference later spread across Europe. This shows how that community developed a taste for sweet chocolate drinks.',
    1,
    '{"explanation":"After cocoa was brought to Spain, the Spanish elite started drinking sweetened chocolate, and this preference later spread across Europe. This shows how that community developed a taste for sweet chocolate drinks.","fromPassage":"Spanish elite first developed a taste for sweetened chocolate drinks, but the beverage rapidly spread across Europe.","instruction":"<p><strong>Reading Passage 3 has eight paragraphs, A-H.</strong></p><p><strong>Which paragraph contains the following information?</strong></p><p>Choose the correct letter, A-H, in boxes 27-31.</p><p><strong><em>NB</em></strong><em>&nbsp;You may use any letter more than once.</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd536bc75-a84d-42a5-b3ed-b21d167a4ab5',
    'reading',
    '4e924be4-3891-4577-bfdf-6830a260a12a',
    31,
    'matching_info',
    'An approach by which ancient Mexicans could acquire cocoa beans.',
    '["","","","","","","",""]'::jsonb,
    'D',
    'The Aztecs couldn’t grow cocoa trees in their region, so they obtained cocoa beans through trade networks. This was their method of acquiring cocoa.',
    1,
    '{"explanation":"The Aztecs couldn’t grow cocoa trees in their region, so they obtained cocoa beans through trade networks. This was their method of acquiring cocoa.","fromPassage":"They sourced cocoa beans through extensive trade networks, even utilising them as currency for tax payments.","instruction":"<p><strong>Reading Passage 3 has eight paragraphs, A-H.</strong></p><p><strong>Which paragraph contains the following information?</strong></p><p>Choose the correct letter, A-H, in boxes 27-31.</p><p><strong><em>NB</em></strong><em>&nbsp;You may use any letter more than once.</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'cb254ab0-48c6-4dc2-9643-67e200f70f0a',
    'reading',
    '4e924be4-3891-4577-bfdf-6830a260a12a',
    32,
    'tfng',
    'The Mayan ruling class forbade the use of cocoa and chocolate in rituals.',
    NULL,
    'FALSE',
    'The passage clearly states that the royal families (i.e., the ruling class) consumed chocolate during elaborate ceremonies. This means they used it in rituals, not forbade it.',
    1,
    '{"explanation":"The passage clearly states that the royal families (i.e., the ruling class) consumed chocolate during elaborate ceremonies. This means they used it in rituals, not forbade it.","fromPassage":"While the aristocracy, particularly the royal families, consumed chocolate during elaborate ceremonies, even less privileged groups occasionally savoured the drink.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '6c862876-aafa-4431-87f8-5e3e56744758',
    'reading',
    '4e924be4-3891-4577-bfdf-6830a260a12a',
    33,
    'tfng',
    'The Spanish explorer Hernán Cortés had made an investment in chocolate and chocolate beverages.',
    NULL,
    'NOT GIVEN',
    'The passage says Cortés recognized the economic value of chocolate and observed its appeal but does not mention him personally investing in it. So, the information is not given.',
    1,
    '{"explanation":"The passage says Cortés recognized the economic value of chocolate and observed its appeal but does not mention him personally investing in it. So, the information is not given.","fromPassage":"Spanish explorer Hernán Cortés quickly recognised the potential economic value of chocolate. Upon arriving in present-day Mexico in 1519, Cortés observed that chocolate beverages would appeal to the Spanish.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0126d37b-a633-435c-be97-5baf5e8211ed',
    'reading',
    '4e924be4-3891-4577-bfdf-6830a260a12a',
    34,
    'tfng',
    'Wild cocoa trees are more susceptible to infectious diseases than cultivated ones.',
    NULL,
    'FALSE',
    'The text says the opposite: cocoa trees grown on farms (cultivated) are more vulnerable than wild ones.',
    1,
    '{"explanation":"The text says the opposite: cocoa trees grown on farms (cultivated) are more vulnerable than wild ones.","fromPassage":"Unexpectedly, cocoa trees grown on farms are more vulnerable to disease and pests than their wild counterparts.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '4a7bd14f-2156-45a8-b9f5-3cd24fda0a86',
    'reading',
    '4e924be4-3891-4577-bfdf-6830a260a12a',
    35,
    'tfng',
    'During chocolate production, some of the seeds are discarded.',
    NULL,
    'TRUE',
    'During the process, the outer shells of cocoa beans are removed, which means part of the seed is discarded.',
    1,
    '{"explanation":"During the process, the outer shells of cocoa beans are removed, which means part of the seed is discarded.","fromPassage":"Workers first sort, clean, and roast the beans before extracting the outer shells, leaving only the inner nibs.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'b60ecfeb-2bc8-42d9-9555-98ae5369c34b',
    'reading',
    '4e924be4-3891-4577-bfdf-6830a260a12a',
    36,
    'tfng',
    'Chocolate enjoys more prestige in Europe and the United States than in any other country.',
    NULL,
    'TRUE',
    'The passage says its reputation remains most prominent in Europe and the US, which supports this statement.',
    1,
    '{"explanation":"The passage says its reputation remains most prominent in Europe and the US, which supports this statement.","fromPassage":"Chocolate holds significant global economic value, with the manufacturing industry generating over $5 billion annually from cocoa crops, and its reputation remains most prominent in Europe and the United States.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '2f10105d-6cd6-47fa-a486-bd2ca4901ad0',
    'reading',
    '4e924be4-3891-4577-bfdf-6830a260a12a',
    37,
    'gap_fill',
    'Question 37',
    '["<h3 class=\"ql-align-center\">Seeds</h3><p class=\"ql-align-center\">classifying, cleaning, and roasting</p><p class=\"ql-align-center\">stripping their  ______ </p>","<h3 class=\"ql-align-center\">Nibs</h3>","<h3 class=\"ql-align-center\">Crushing</h3><p class=\"ql-align-center\">Producing&nbsp; ______ </p><p class=\"ql-align-center\">Mixing with measured quantities of substances such as sweeteners, liquid dairy, and&nbsp; ______ .</p>","<h3 class=\"ql-align-center\">Crumb blending</h3><p class=\"ql-align-center\">crushing finely to obtain a smooth texture</p><p class=\"ql-align-center\">manufacturing diverse shapes of chocolate in  ______ .</p>","<h3 class=\"ql-align-center\">Chocolate</h3>"]'::jsonb,
    'outer shells',
    'The question says "stripping their ______." The word stripping is synonymous with extracting, and the passage clearly states that after roasting, the beans have their outer shells extracted. This means the shells are removed or stripped, making outer shells the correct answer.',
    1,
    '{"explanation":"The question says \"stripping their ______.\" The word stripping is synonymous with extracting, and the passage clearly states that after roasting, the beans have their outer shells extracted. This means the shells are removed or stripped, making outer shells the correct answer.","fromPassage":"Workers first sort, clean, and roast the beans before extracting the outer shells, leaving only the inner nibs.","instruction":"<p>Complete the flow-chart below.</p><p>Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the passage for each answer.</p>","context":"<h3 class=\"ql-align-center\"><strong>From Cocoa Beans to Chocolate</strong></h3>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd6fdd072-99b4-405b-bc69-001242522b8b',
    'reading',
    '4e924be4-3891-4577-bfdf-6830a260a12a',
    38,
    'gap_fill',
    'Question 38',
    '["<h3 class=\"ql-align-center\">Seeds</h3><p class=\"ql-align-center\">classifying, cleaning, and roasting</p><p class=\"ql-align-center\">stripping their  ______ </p>","<h3 class=\"ql-align-center\">Nibs</h3>","<h3 class=\"ql-align-center\">Crushing</h3><p class=\"ql-align-center\">Producing&nbsp; ______ </p><p class=\"ql-align-center\">Mixing with measured quantities of substances such as sweeteners, liquid dairy, and&nbsp; ______ .</p>","<h3 class=\"ql-align-center\">Crumb blending</h3><p class=\"ql-align-center\">crushing finely to obtain a smooth texture</p><p class=\"ql-align-center\">manufacturing diverse shapes of chocolate in  ______ .</p>","<h3 class=\"ql-align-center\">Chocolate</h3>"]'::jsonb,
    'chocolate liquor',
    'The question refers to crushing the nibs and producing something. The passage says nibs are ground into (i.e., crushed into) chocolate liquor. This matches the production process, so chocolate liquor is the correct phrase.',
    1,
    '{"explanation":"The question refers to crushing the nibs and producing something. The passage says nibs are ground into (i.e., crushed into) chocolate liquor. This matches the production process, so chocolate liquor is the correct phrase.","fromPassage":"These nibs are then ground into a dense paste known as chocolate liquor, which is subsequently separated into two components: cocoa solids and cocoa butter.","instruction":"<p>Complete the flow-chart below.</p><p>Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the passage for each answer.</p>","context":"<h3 class=\"ql-align-center\"><strong>From Cocoa Beans to Chocolate</strong></h3>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '4b92a945-2980-44af-b0d7-5a4c94e8d69e',
    'reading',
    '4e924be4-3891-4577-bfdf-6830a260a12a',
    39,
    'gap_fill',
    'Question 39',
    '["<h3 class=\"ql-align-center\">Seeds</h3><p class=\"ql-align-center\">classifying, cleaning, and roasting</p><p class=\"ql-align-center\">stripping their  ______ </p>","<h3 class=\"ql-align-center\">Nibs</h3>","<h3 class=\"ql-align-center\">Crushing</h3><p class=\"ql-align-center\">Producing&nbsp; ______ </p><p class=\"ql-align-center\">Mixing with measured quantities of substances such as sweeteners, liquid dairy, and&nbsp; ______ .</p>","<h3 class=\"ql-align-center\">Crumb blending</h3><p class=\"ql-align-center\">crushing finely to obtain a smooth texture</p><p class=\"ql-align-center\">manufacturing diverse shapes of chocolate in  ______ .</p>","<h3 class=\"ql-align-center\">Chocolate</h3>"]'::jsonb,
    'cocoa butter',
    'The question asks for an ingredient added with sweeteners and liquid dairy. According to the passage, the three blended components are sugar, milk, and cocoa butter, so this is the correct answer.',
    1,
    '{"explanation":"The question asks for an ingredient added with sweeteners and liquid dairy. According to the passage, the three blended components are sugar, milk, and cocoa butter, so this is the correct answer.","fromPassage":"Chocolate manufacturers blend the chocolate liquor with precise ratios of sugar, milk, and cocoa butter.","instruction":"<p>Complete the flow-chart below.</p><p>Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the passage for each answer.</p>","context":"<h3 class=\"ql-align-center\"><strong>From Cocoa Beans to Chocolate</strong></h3>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '96c999d8-6c77-4233-97f9-5fa77fe27fde',
    'reading',
    '4e924be4-3891-4577-bfdf-6830a260a12a',
    40,
    'gap_fill',
    'Question 40',
    '["<h3 class=\"ql-align-center\">Seeds</h3><p class=\"ql-align-center\">classifying, cleaning, and roasting</p><p class=\"ql-align-center\">stripping their  ______ </p>","<h3 class=\"ql-align-center\">Nibs</h3>","<h3 class=\"ql-align-center\">Crushing</h3><p class=\"ql-align-center\">Producing&nbsp; ______ </p><p class=\"ql-align-center\">Mixing with measured quantities of substances such as sweeteners, liquid dairy, and&nbsp; ______ .</p>","<h3 class=\"ql-align-center\">Crumb blending</h3><p class=\"ql-align-center\">crushing finely to obtain a smooth texture</p><p class=\"ql-align-center\">manufacturing diverse shapes of chocolate in  ______ .</p>","<h3 class=\"ql-align-center\">Chocolate</h3>"]'::jsonb,
    'moulds',
    'The question mentions manufacturing different shapes of chocolate in something. The passage says chocolate is placed into moulds to create various forms, which exactly matches the question’s idea. Hence, moulds is the correct answer.',
    1,
    '{"explanation":"The question mentions manufacturing different shapes of chocolate in something. The passage says chocolate is placed into moulds to create various forms, which exactly matches the question’s idea. Hence, moulds is the correct answer.","fromPassage":"Finally, the mixture is then subjected to two additional processes — conching and tempering — before being placed into moulds to create various forms, such as bars or other chocolate products.","instruction":"<p>Complete the flow-chart below.</p><p>Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the passage for each answer.</p>","context":"<h3 class=\"ql-align-center\"><strong>From Cocoa Beans to Chocolate</strong></h3>"}'::jsonb
);

