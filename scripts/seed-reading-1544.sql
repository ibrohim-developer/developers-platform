-- ============================================
-- Auto-generated seed for: Day 7: Wood: a valuable resource in New Zealand's economy
-- Source API ID: 1544
-- Generated: 2026-02-26T11:43:32.546Z
-- ============================================

-- ============================================
-- Day 7: Wood: a valuable resource in New Zealand's economy - Part 1: Wood: a valuable resource in New Zealand's economy
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '6d27963c-dfef-4b21-a501-340b23ee0763',
    'Day 7: Wood: a valuable resource in New Zealand''s economy - Part 1: Wood: a valuable resource in New Zealand''s economy',
    'Cambridge IELTS - Wood: a valuable resource in New Zealand''s economy',
    'easy',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    '6f841de5-4d05-47da-bb5c-88e94d66fe6e',
    '6d27963c-dfef-4b21-a501-340b23ee0763',
    1,
    'Wood: a valuable resource in New Zealand''s economy',
    'During the settlement of New Zealand by European immigrants, natural timbers played a major role. Wood was easily accessible and relatively cheap. A tradition of wooden houses arose, supported by the recognition that they were less likely to collapse suddenly during earthquakes, a not infrequent event in this part of the world. But in addition to demand from the domestic market, there was also a demand for forest products from overseas.

Early explorers recognised the suitability of the tall, straight trunks of the kauri for constructing sailing vessels. The kauri is a species of coniferous tree found only in small areas of the southern hemisphere. So from the early 1800s, huge amounts of this type of wood were sold to Australia and the UK for that purpose. For a period, the forestry industry was the country’s major export earner, but the rate of harvest was unsustainable and, by the beginning of the 20th century, indigenous timber exports were rapidly declining.

From the 1940s, newly established plantations of an imported species of tree called radiata pine supplied timber and other wood products in increasing quantities. By the 1960s, plantation-grown timber was providing most of the country’s sawn timber needs, especially for construction. Today, less than two percent of timber is cut from indigenous forests, and almost all of that is used for higher-value end uses, such as furniture and fittings. As the pine industry developed, it became apparent that this type of wood was also well suited for many uses. It makes excellent pulp*, and is frequently used for posts, poles, furnishings and mouldings, particleboard, fibreboard, and for plywood and ''engineered'' wood products. Pine by-products are used in the chemical and pharmaceutical industries and residues are consumed for fuel. This amazing versatility has encouraged the development of an integrated forest-products industry which is almost unique in the world.

Exporters of wood products have largely targeted the rapidly growing markets of South and East Asia and Australia. 80 percent of exports by value go to only five markets: Japan, Korea, China, the United States and Australia. The product mix remains heavily based on raw materials, with logs, sawn wood, pulp and paper comprising 75 percent of export value. However, finished wood products such as panels and furniture components are exported to more than 50 countries.

In New Zealand itself, the construction industry is the principal user of solid wood products, servicing around 20,000 new house starts annually. However, the small size of New Zealand’s population (just over four million), plus its small manufacturing and remanufacturing base, limit the forestry industry’s domestic opportunities. For the last few years local wood consumption has been around only four million cubic metres. Accordingly, the development of the export market is the key to the industry’s growth and contribution to the national economy in decades to come.

In 2004, forestry export receipts were about 11 percent of the country’s total export income, their value having increased steadily for ten years, until affected by the exchange fluctuations and shipping costs of recent years. The forestry industry is New Zealand’s third largest export sector, generating around $3.3 billion annually from logs and processed wood products. But it is generally agreed that it is operating well below its capacity and, with the domestic market already at its peak, almost all of the extra wood produced in future will have to be marketed overseas. That presents a major marketing challenge for the industry.

Although the export of logs will continue to provide valuable earnings for forest owners, there is broad acceptance that the industry must be based on value-added products in future. So the industry is investigating various processing, infrastructure and investment strategies with a view to increasing the level of local manufacturing before export. The keys to future success will depend on a variety of factors: better international marketing, product innovation, internationally competitive processing, better infrastructure and a suitable political, regulatory and investment environment. The industry claims that, given the right conditions, by 2025 the forestry sector could be the country’s biggest export earner, generating $20 billion a year and employing 60,000 people.

One competitive advantage that New Zealand has is its ability to source large quantities of softwood from renewable forests. Consumers in several key wood markets are becoming more worried about sustainability, and the industry is supporting the development of national standards as well as the recognition of these internationally. However, New Zealand is not the only country with a plantation-style forestry industry. Chile, Brazil, Argentina, South Africa and Australia all have extensive plantings of fast-growing species (hardwood and softwood), and in the northern hemisphere, Scandinavian countries have all expanded their forests or controlled their use in the interests of future production.

Finally, in addition to competition from other wood producers, New Zealand faces competition from goods such as wood substitutes. These include steel framing for houses. This further underlines the necessity for globally competitive production and marketing strategies.

pulp*: wood which is crushed until soft enough to form the basis of paper.',
    835,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '4b2865d6-6a2d-4b08-80f7-410281410fc3',
    'reading',
    '6f841de5-4d05-47da-bb5c-88e94d66fe6e',
    1,
    'tfng',
    'Settlers realised that wooden houses were more dangerous than other types of structure.',
    NULL,
    'FALSE',
    NULL,
    1,
    '{"instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '5a0bb988-d3f2-400a-8162-424f44b0f061',
    'reading',
    '6f841de5-4d05-47da-bb5c-88e94d66fe6e',
    2,
    'tfng',
    'During the 1800s, New Zealand exported wood for use in boat-building.',
    NULL,
    'TRUE',
    NULL,
    1,
    '{"instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '300dbd4b-7321-4553-9252-772a1c5a2d7d',
    'reading',
    '6f841de5-4d05-47da-bb5c-88e94d66fe6e',
    3,
    'tfng',
    'Plantation-grown wood is generally better for construction than native forest wood.',
    NULL,
    'NOT GIVEN',
    NULL,
    1,
    '{"instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '4caa3463-d701-4d31-bd47-62e08d1a1f84',
    'reading',
    '6f841de5-4d05-47da-bb5c-88e94d66fe6e',
    4,
    'tfng',
    'Compared to other types of wood, pine has a narrow range of uses.',
    NULL,
    'FALSE',
    NULL,
    1,
    '{"instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'a8f63788-927b-4cfc-970e-529fb9164734',
    'reading',
    '6f841de5-4d05-47da-bb5c-88e94d66fe6e',
    5,
    'tfng',
    'Demand for housing in New Zealand is predicted to fall in the next few years.',
    NULL,
    'NOT GIVEN',
    NULL,
    1,
    '{"instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'e76af9f9-b97b-468d-b9a3-86985c51f8ec',
    'reading',
    '6f841de5-4d05-47da-bb5c-88e94d66fe6e',
    6,
    'tfng',
    'In future, the expansion of New Zealand''s wood industry will depend on its exports.',
    NULL,
    'TRUE',
    NULL,
    1,
    '{"instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'f33becbb-1ed3-4fa0-8083-9650a56fd888',
    'reading',
    '6f841de5-4d05-47da-bb5c-88e94d66fe6e',
    7,
    'gap_fill',
    'Question 7',
    NULL,
    'shipping costs',
    NULL,
    1,
    '{"instruction":"<p>Answer the questions below. Write&nbsp;<strong>NO MORE THAN TWO WORDS AND/OR A NUMBER</strong>&nbsp;from the passage for each answer.</p>","context":"<p>Apart from exchange rates, which factor has had a negative impact on New Zealand''s forestry exports?  </p><p>______ </p><p>Which part of New Zealand''s economy does the forestry industry rank third in?  </p><p>______ </p><p>According to the New Zealand forestry industry, what could be the size of its workforce by 2025?  </p><p>______ </p><p>What kind of timber product is available in large amounts from renewable forests in New Zealand?  </p><p>______ </p><p>Which aspect of timber production are New Zealand''s main customers increasingly concerned about?</p><p> ______ </p><p>Outside the southern hemisphere, who are New Zealand forestry''s main competitors?</p><p> ______ </p><p>Which group of products is New Zealand''s forestry industry now having to compete with?</p><p> ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'c3e6c141-7ae8-48a4-b3df-f492cb3b7872',
    'reading',
    '6f841de5-4d05-47da-bb5c-88e94d66fe6e',
    8,
    'gap_fill',
    'Question 8',
    NULL,
    'export sector',
    NULL,
    1,
    '{"instruction":"<p>Answer the questions below. Write&nbsp;<strong>NO MORE THAN TWO WORDS AND/OR A NUMBER</strong>&nbsp;from the passage for each answer.</p>","context":"<p>Apart from exchange rates, which factor has had a negative impact on New Zealand''s forestry exports?  </p><p>______ </p><p>Which part of New Zealand''s economy does the forestry industry rank third in?  </p><p>______ </p><p>According to the New Zealand forestry industry, what could be the size of its workforce by 2025?  </p><p>______ </p><p>What kind of timber product is available in large amounts from renewable forests in New Zealand?  </p><p>______ </p><p>Which aspect of timber production are New Zealand''s main customers increasingly concerned about?</p><p> ______ </p><p>Outside the southern hemisphere, who are New Zealand forestry''s main competitors?</p><p> ______ </p><p>Which group of products is New Zealand''s forestry industry now having to compete with?</p><p> ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'b8f25045-dc82-4702-82b5-0a654a6bc846',
    'reading',
    '6f841de5-4d05-47da-bb5c-88e94d66fe6e',
    9,
    'gap_fill',
    'Question 9',
    NULL,
    '60,000',
    NULL,
    1,
    '{"instruction":"<p>Answer the questions below. Write&nbsp;<strong>NO MORE THAN TWO WORDS AND/OR A NUMBER</strong>&nbsp;from the passage for each answer.</p>","context":"<p>Apart from exchange rates, which factor has had a negative impact on New Zealand''s forestry exports?  </p><p>______ </p><p>Which part of New Zealand''s economy does the forestry industry rank third in?  </p><p>______ </p><p>According to the New Zealand forestry industry, what could be the size of its workforce by 2025?  </p><p>______ </p><p>What kind of timber product is available in large amounts from renewable forests in New Zealand?  </p><p>______ </p><p>Which aspect of timber production are New Zealand''s main customers increasingly concerned about?</p><p> ______ </p><p>Outside the southern hemisphere, who are New Zealand forestry''s main competitors?</p><p> ______ </p><p>Which group of products is New Zealand''s forestry industry now having to compete with?</p><p> ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '8551f99c-1d06-43c4-937f-0a93005cc4ae',
    'reading',
    '6f841de5-4d05-47da-bb5c-88e94d66fe6e',
    10,
    'gap_fill',
    'Question 10',
    NULL,
    'softwood',
    NULL,
    1,
    '{"instruction":"<p>Answer the questions below. Write&nbsp;<strong>NO MORE THAN TWO WORDS AND/OR A NUMBER</strong>&nbsp;from the passage for each answer.</p>","context":"<p>Apart from exchange rates, which factor has had a negative impact on New Zealand''s forestry exports?  </p><p>______ </p><p>Which part of New Zealand''s economy does the forestry industry rank third in?  </p><p>______ </p><p>According to the New Zealand forestry industry, what could be the size of its workforce by 2025?  </p><p>______ </p><p>What kind of timber product is available in large amounts from renewable forests in New Zealand?  </p><p>______ </p><p>Which aspect of timber production are New Zealand''s main customers increasingly concerned about?</p><p> ______ </p><p>Outside the southern hemisphere, who are New Zealand forestry''s main competitors?</p><p> ______ </p><p>Which group of products is New Zealand''s forestry industry now having to compete with?</p><p> ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '45b41846-b656-44ce-b0c1-359b667af3ae',
    'reading',
    '6f841de5-4d05-47da-bb5c-88e94d66fe6e',
    11,
    'gap_fill',
    'Question 11',
    NULL,
    'sustainability',
    NULL,
    1,
    '{"instruction":"<p>Answer the questions below. Write&nbsp;<strong>NO MORE THAN TWO WORDS AND/OR A NUMBER</strong>&nbsp;from the passage for each answer.</p>","context":"<p>Apart from exchange rates, which factor has had a negative impact on New Zealand''s forestry exports?  </p><p>______ </p><p>Which part of New Zealand''s economy does the forestry industry rank third in?  </p><p>______ </p><p>According to the New Zealand forestry industry, what could be the size of its workforce by 2025?  </p><p>______ </p><p>What kind of timber product is available in large amounts from renewable forests in New Zealand?  </p><p>______ </p><p>Which aspect of timber production are New Zealand''s main customers increasingly concerned about?</p><p> ______ </p><p>Outside the southern hemisphere, who are New Zealand forestry''s main competitors?</p><p> ______ </p><p>Which group of products is New Zealand''s forestry industry now having to compete with?</p><p> ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'c558f913-7bbd-49cb-a008-dbf3bcb98646',
    'reading',
    '6f841de5-4d05-47da-bb5c-88e94d66fe6e',
    12,
    'gap_fill',
    'Question 12',
    NULL,
    'Scandinavian countries',
    NULL,
    1,
    '{"instruction":"<p>Answer the questions below. Write&nbsp;<strong>NO MORE THAN TWO WORDS AND/OR A NUMBER</strong>&nbsp;from the passage for each answer.</p>","context":"<p>Apart from exchange rates, which factor has had a negative impact on New Zealand''s forestry exports?  </p><p>______ </p><p>Which part of New Zealand''s economy does the forestry industry rank third in?  </p><p>______ </p><p>According to the New Zealand forestry industry, what could be the size of its workforce by 2025?  </p><p>______ </p><p>What kind of timber product is available in large amounts from renewable forests in New Zealand?  </p><p>______ </p><p>Which aspect of timber production are New Zealand''s main customers increasingly concerned about?</p><p> ______ </p><p>Outside the southern hemisphere, who are New Zealand forestry''s main competitors?</p><p> ______ </p><p>Which group of products is New Zealand''s forestry industry now having to compete with?</p><p> ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'ca56c861-c390-4029-9ee8-87381f6fb861',
    'reading',
    '6f841de5-4d05-47da-bb5c-88e94d66fe6e',
    13,
    'gap_fill',
    'Question 13',
    NULL,
    'wood substitutes',
    NULL,
    1,
    '{"instruction":"<p>Answer the questions below. Write&nbsp;<strong>NO MORE THAN TWO WORDS AND/OR A NUMBER</strong>&nbsp;from the passage for each answer.</p>","context":"<p>Apart from exchange rates, which factor has had a negative impact on New Zealand''s forestry exports?  </p><p>______ </p><p>Which part of New Zealand''s economy does the forestry industry rank third in?  </p><p>______ </p><p>According to the New Zealand forestry industry, what could be the size of its workforce by 2025?  </p><p>______ </p><p>What kind of timber product is available in large amounts from renewable forests in New Zealand?  </p><p>______ </p><p>Which aspect of timber production are New Zealand''s main customers increasingly concerned about?</p><p> ______ </p><p>Outside the southern hemisphere, who are New Zealand forestry''s main competitors?</p><p> ______ </p><p>Which group of products is New Zealand''s forestry industry now having to compete with?</p><p> ______ </p>"}'::jsonb
);

