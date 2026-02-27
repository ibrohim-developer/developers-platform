-- ============================================
-- Auto-generated seed for: Full Reading Test 1
-- Source API ID: 1229
-- Generated: 2026-02-26T15:55:21.644Z
-- ============================================

-- ============================================
-- Full Reading Test 1 - Part 1: Georgia O’Keeffe
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '5b5eee23-50dc-4df2-aafd-07b13f6c307f',
    'Full Reading Test 1 - Part 1: Georgia O’Keeffe',
    'Cambridge IELTS - Georgia O’Keeffe',
    'medium',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    '553c7f15-dc4e-4977-ab2c-9d71283d20ba',
    '5b5eee23-50dc-4df2-aafd-07b13f6c307f',
    1,
    'Georgia O’Keeffe',
    'For seven decades, Georgia O’Keeffe (1887-1986) was a major figure in American art. Remarkably, she remained independent from shifting art trends and her work stayed true to her own vision, which was based on finding the essential, abstract forms in nature. With exceptionally keen powers of observation and great finesse with a paintbrush, she recorded subtle nuances of colour, shape, and light that enlivened her paintings and attracted a wide audience.

Born in 1887 near Sun Prairie, Wisconsin to cattle breeders Francis and Ida O’Keeffe, Georgia was raised on their farm along with her six siblings. By the time she graduated from high school in 1905, she had determined to make her way as an artist. She studied the techniques of traditional painting at the Art Institute of Chicago school (1905) and the Art Students League of New York (1907-8). After attending university and then training college, she became an art teacher and taught in elementary schools, high schools, and colleges in Virginia, Texas, and South Carolina from 1911 to 1918.

During this period, O’Keeffe began to experiment with creating abstract compositions in charcoal, and produced a series of innovative drawings that led her art in a new direction. She sent some of these drawings to a friend in New York, who showed them to art collector and photographer Alfred Stieglitz in January 1916. Stieglitz was impressed, and exhibited the drawings later that year at his gallery on Fifth Avenue, New York City, where the works of many avant-garde artists and photographers were introduced to the American public.

With Stieglitz’s encouragement and promise of financial support, O’Keeffe arrived in New York in June 1918 to begin a career as an artist. For the next three decades, Stieglitz vigorously promoted her work in twenty-two solo exhibitions and numerous group installations. The two were married in 1924. The ups and downs of their personal and professional relationship were recorded in Stieglitz’s celebrated black-and-white portraits of O’Keeffe, taken over the course of twenty years (1917-37).

By the mid-1920s, O’Keeffe was recognized as one of America’s most important and successful artists, widely known for the architectural pictures that dramatically depict the soaring skyscrapers of New York. But most often, she painted botanical subjects, inspired by annual trips to the Stieglitz family summer home. In her magnified images depicting flowers, begun in 1924, O’Keeffe brings the viewer right into the picture.

Enlarging the tiniest details to fill an entire metre-wide canvas emphasized their shapes and lines and made them appear abstract. Such daring compositions helped establish O’Keeffe’s reputation as an innovative modernist.

In 1929, O’Keeffe made her first extended trip to the state of New Mexico. It was a visit that had a lasting impact on her life, and an immediate effect on her work. Over the next two decades she made almost annual trips to New Mexico, staying up to six months there, painting in relative solitude, then returning to New York each winter to exhibit the new work at Stieglitz’s gallery. This pattern continued until she moved permanently to New Mexico in 1949.

There, O’Keeffe found new inspiration: at first, it was the numerous sun-bleached bones she came across in the state’s rugged terrain that sparked her imagination. Two of her earliest and most celebrated Southwestern paintings exquisitely reproduce a cow skull’s weathered surfaces, jagged edges, and irregular openings. Later, she also explored another variation on this theme in her large series of Pelvis pictures, which focused on the contrasts between convex and concave surfaces, and solid and open spaces. However, it was the region’s spectacular landscape, with its unusual geological formations, vivid colours, clarity of light, and exotic vegetation, that held the artist’s imagination for more than four decades. Often, she painted the rocks, cliffs, and mountains in striking close-up, just as she had done with her botanical subjects.

O’Keeffe eventually owned two homes in New Mexico – the first, her summer retreat at Ghost Ranch, was nestled beneath 200-metre cliffs, while the second, used as her winter residence, was in the small town of Abiquiú. While both locales provided a wealth of imagery for her paintings, one feature of the Abiquiú house – the large walled patio with its black door – was particularly inspirational. In more than thirty pictures between 1946 and 1960, she reinvented the patio into an abstract arrangement of geometric shapes.

From the 1950s into the 1970s, O’Keeffe travelled widely, making trips to Asia, the Middle East, and Europe. Flying in planes inspired her last two major series – aerial views of rivers and expansive paintings of the sky viewed from just above clouds. In both series, O’Keeffe increased the size of her canvases, sometimes to mural proportions, reflecting perhaps her newly expanded view of the world. When in 1965 she successfully translated one of her cloud motifs to a monumental canvas measuring 6 metres in length (with the help of assistants), it was an enormous challenge and a special feat for an artist nearing eighty years of age.

The last two decades of the artist’s life were relatively unproductive as ill health and blindness hindered her ability to work. O’Keeffe died in 1986 at the age of ninety-eight, but her rich legacy of some 900 paintings has continued to attract subsequent generations of artists and art lovers who derive inspiration from these very American images.',
    889,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'fce5a3f3-ca77-4b5a-9b17-6bfe8742c3f2',
    'reading',
    '553c7f15-dc4e-4977-ab2c-9d71283d20ba',
    1,
    'gap_fill',
    'Question 1',
    NULL,
    'teacher',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes. Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the text for each answer.</p>","context":"<h3>The life and work of Georgia O’Keeffe</h3><ul><li>studied art, then worked as a&nbsp; ______ in various places in the USA.</li><li>created drawings using&nbsp; ______  which were exhibited in New York City.</li><li>moved to New York and became famous for her paintings of the city’s&nbsp; ______ .</li><li>produced a series of innovative close-up paintings of&nbsp; ______ .</li><li>went to New Mexico and was initially inspired to paint the many&nbsp; ______ that could be found there.</li><li>continued to paint various features that together formed the dramatic&nbsp; ______  of New Mexico for over forty years.</li><li>travelled widely by plane in later years, and painted pictures of clouds and&nbsp; ______  seen from above.</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '4377246a-2d79-40a9-a4d2-7a521ec9e492',
    'reading',
    '553c7f15-dc4e-4977-ab2c-9d71283d20ba',
    2,
    'gap_fill',
    'Question 2',
    NULL,
    'charcoal',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes. Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the text for each answer.</p>","context":"<h3>The life and work of Georgia O’Keeffe</h3><ul><li>studied art, then worked as a&nbsp; ______ in various places in the USA.</li><li>created drawings using&nbsp; ______  which were exhibited in New York City.</li><li>moved to New York and became famous for her paintings of the city’s&nbsp; ______ .</li><li>produced a series of innovative close-up paintings of&nbsp; ______ .</li><li>went to New Mexico and was initially inspired to paint the many&nbsp; ______ that could be found there.</li><li>continued to paint various features that together formed the dramatic&nbsp; ______  of New Mexico for over forty years.</li><li>travelled widely by plane in later years, and painted pictures of clouds and&nbsp; ______  seen from above.</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'b20e7837-b3dc-4655-b022-afc815cb3da8',
    'reading',
    '553c7f15-dc4e-4977-ab2c-9d71283d20ba',
    3,
    'gap_fill',
    'Question 3',
    NULL,
    'skyscrapers',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes. Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the text for each answer.</p>","context":"<h3>The life and work of Georgia O’Keeffe</h3><ul><li>studied art, then worked as a&nbsp; ______ in various places in the USA.</li><li>created drawings using&nbsp; ______  which were exhibited in New York City.</li><li>moved to New York and became famous for her paintings of the city’s&nbsp; ______ .</li><li>produced a series of innovative close-up paintings of&nbsp; ______ .</li><li>went to New Mexico and was initially inspired to paint the many&nbsp; ______ that could be found there.</li><li>continued to paint various features that together formed the dramatic&nbsp; ______  of New Mexico for over forty years.</li><li>travelled widely by plane in later years, and painted pictures of clouds and&nbsp; ______  seen from above.</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '3061a114-f9bf-4f86-9fcc-6133773895cc',
    'reading',
    '553c7f15-dc4e-4977-ab2c-9d71283d20ba',
    4,
    'gap_fill',
    'Question 4',
    NULL,
    'flowers',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes. Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the text for each answer.</p>","context":"<h3>The life and work of Georgia O’Keeffe</h3><ul><li>studied art, then worked as a&nbsp; ______ in various places in the USA.</li><li>created drawings using&nbsp; ______  which were exhibited in New York City.</li><li>moved to New York and became famous for her paintings of the city’s&nbsp; ______ .</li><li>produced a series of innovative close-up paintings of&nbsp; ______ .</li><li>went to New Mexico and was initially inspired to paint the many&nbsp; ______ that could be found there.</li><li>continued to paint various features that together formed the dramatic&nbsp; ______  of New Mexico for over forty years.</li><li>travelled widely by plane in later years, and painted pictures of clouds and&nbsp; ______  seen from above.</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd6fb68f2-279f-4ca0-89ad-088cc803526b',
    'reading',
    '553c7f15-dc4e-4977-ab2c-9d71283d20ba',
    5,
    'gap_fill',
    'Question 5',
    NULL,
    'bones',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes. Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the text for each answer.</p>","context":"<h3>The life and work of Georgia O’Keeffe</h3><ul><li>studied art, then worked as a&nbsp; ______ in various places in the USA.</li><li>created drawings using&nbsp; ______  which were exhibited in New York City.</li><li>moved to New York and became famous for her paintings of the city’s&nbsp; ______ .</li><li>produced a series of innovative close-up paintings of&nbsp; ______ .</li><li>went to New Mexico and was initially inspired to paint the many&nbsp; ______ that could be found there.</li><li>continued to paint various features that together formed the dramatic&nbsp; ______  of New Mexico for over forty years.</li><li>travelled widely by plane in later years, and painted pictures of clouds and&nbsp; ______  seen from above.</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd2ba5c47-a098-4899-a3dd-a0fe54e7e99e',
    'reading',
    '553c7f15-dc4e-4977-ab2c-9d71283d20ba',
    6,
    'gap_fill',
    'Question 6',
    NULL,
    'landscape',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes. Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the text for each answer.</p>","context":"<h3>The life and work of Georgia O’Keeffe</h3><ul><li>studied art, then worked as a&nbsp; ______ in various places in the USA.</li><li>created drawings using&nbsp; ______  which were exhibited in New York City.</li><li>moved to New York and became famous for her paintings of the city’s&nbsp; ______ .</li><li>produced a series of innovative close-up paintings of&nbsp; ______ .</li><li>went to New Mexico and was initially inspired to paint the many&nbsp; ______ that could be found there.</li><li>continued to paint various features that together formed the dramatic&nbsp; ______  of New Mexico for over forty years.</li><li>travelled widely by plane in later years, and painted pictures of clouds and&nbsp; ______  seen from above.</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'c59badda-9b1e-40ed-9ea2-e6f48ddaa907',
    'reading',
    '553c7f15-dc4e-4977-ab2c-9d71283d20ba',
    7,
    'gap_fill',
    'Question 7',
    NULL,
    'rivers',
    NULL,
    1,
    '{"instruction":"<p>Complete the notes. Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the text for each answer.</p>","context":"<h3>The life and work of Georgia O’Keeffe</h3><ul><li>studied art, then worked as a&nbsp; ______ in various places in the USA.</li><li>created drawings using&nbsp; ______  which were exhibited in New York City.</li><li>moved to New York and became famous for her paintings of the city’s&nbsp; ______ .</li><li>produced a series of innovative close-up paintings of&nbsp; ______ .</li><li>went to New Mexico and was initially inspired to paint the many&nbsp; ______ that could be found there.</li><li>continued to paint various features that together formed the dramatic&nbsp; ______  of New Mexico for over forty years.</li><li>travelled widely by plane in later years, and painted pictures of clouds and&nbsp; ______  seen from above.</li></ul>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'ea287b61-7ffb-43a9-bbf9-e7f33f10f730',
    'reading',
    '553c7f15-dc4e-4977-ab2c-9d71283d20ba',
    8,
    'tfng',
    'Georgia O’Keeffe’s style was greatly influenced by the changing fashions in art over the seven decades of her career.',
    NULL,
    'FALSE',
    'In paragraph 1: "Remarkably, she remained independent from shifting art trends and her work stayed true to her own vision, which was based on finding the essential, abstract forms in nature."

Explanation: The statement says O’Keeffe’s style was greatly influenced by changing fashions in art. The passage states the opposite — she stayed independent from these trends. This means the statement contradicts the text. Therefore, the answer is: FALSE.',
    1,
    '{"explanation":"In paragraph 1: \"Remarkably, she remained independent from shifting art trends and her work stayed true to her own vision, which was based on finding the essential, abstract forms in nature.\"\n\nExplanation: The statement says O’Keeffe’s style was greatly influenced by changing fashions in art. The passage states the opposite — she stayed independent from these trends. This means the statement contradicts the text. Therefore, the answer is: FALSE.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'c5815281-270b-473f-841e-197ec2696a8c',
    'reading',
    '553c7f15-dc4e-4977-ab2c-9d71283d20ba',
    9,
    'tfng',
    'When O’Keeffe finished high school, she had already made her mind up about the career that she wanted.',
    NULL,
    'TRUE',
    'In paragraph 2: "By the time she graduated from high school in 1905, she had determined to make her way as an artist."

Explanation: The statement says that when O’Keeffe finished high school, she had already decided on her career. The passage confirms she had determined to be an artist by then, so the statement matches the text. Therefore, the answer is: TRUE.',
    1,
    '{"explanation":"In paragraph 2: \"By the time she graduated from high school in 1905, she had determined to make her way as an artist.\"\n\nExplanation: The statement says that when O’Keeffe finished high school, she had already decided on her career. The passage confirms she had determined to be an artist by then, so the statement matches the text. Therefore, the answer is: TRUE.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'ab1060d3-46a3-42b7-858d-e2ab17c08837',
    'reading',
    '553c7f15-dc4e-4977-ab2c-9d71283d20ba',
    10,
    'tfng',
    'Alfred Stieglitz first discovered O’Keeffe’s work when she sent some abstract drawings to his gallery in New York City.',
    NULL,
    'FALSE',
    'In paragraph 3: "She sent some of these drawings to a friend in New York, who showed them to art collector and photographer Alfred Stieglitz in January 1916."

Explanation: The statement says Stieglitz first discovered O’Keeffe’s work when she sent the drawings to his gallery. However, the text shows she sent them to a friend, who then showed them to Stieglitz — not directly to his gallery. This means the statement is incorrect.
Therefore, the answer is: FALSE.',
    1,
    '{"explanation":"In paragraph 3: \"She sent some of these drawings to a friend in New York, who showed them to art collector and photographer Alfred Stieglitz in January 1916.\"\n\nExplanation: The statement says Stieglitz first discovered O’Keeffe’s work when she sent the drawings to his gallery. However, the text shows she sent them to a friend, who then showed them to Stieglitz — not directly to his gallery. This means the statement is incorrect.\nTherefore, the answer is: FALSE.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '81eb993a-736c-4012-b6c3-1a59d7f1293d',
    'reading',
    '553c7f15-dc4e-4977-ab2c-9d71283d20ba',
    11,
    'tfng',
    'O’Keeffe was the subject of Stieglitz’s photographic work for many years.',
    NULL,
    'TRUE',
    'In paragraph 4: "The ups and downs of their personal and professional relationship were recorded in Stieglitz’s celebrated black-and-white portraits of O’Keeffe, taken over the course of twenty years (1917–37)."

Explanation: The statement says O’Keeffe was the subject of Stieglitz’s photographic work for many years. The passage confirms this, stating he photographed her over two decades. This matches the statement exactly. Therefore, the answer is: TRUE.',
    1,
    '{"explanation":"In paragraph 4: \"The ups and downs of their personal and professional relationship were recorded in Stieglitz’s celebrated black-and-white portraits of O’Keeffe, taken over the course of twenty years (1917–37).\"\n\nExplanation: The statement says O’Keeffe was the subject of Stieglitz’s photographic work for many years. The passage confirms this, stating he photographed her over two decades. This matches the statement exactly. Therefore, the answer is: TRUE.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'b144c5c4-ea43-4f05-9139-f136be288c94',
    'reading',
    '553c7f15-dc4e-4977-ab2c-9d71283d20ba',
    12,
    'tfng',
    'O’Keeffe’s paintings of the patio of her house in Abiquiú were among the artist’s favourite works.',
    NULL,
    'NOT GIVEN',
    'In paragraph 8: "While both locales provided a wealth of imagery for her paintings, one feature of the Abiquiú house – the large walled patio with its black door – was particularly inspirational. In more than thirty pictures between 1946 and 1960, she reinvented the patio into an abstract arrangement of geometric shapes."

Explanation: The statement says O’Keeffe’s paintings of the patio in Abiquiú were among her favourite works. The passage mentions the patio inspired her and she painted it many times, but it does not say these were her favourite works. Since the text doesn’t confirm or contradict this, Therefore, the answer is: NOT GIVEN.',
    1,
    '{"explanation":"In paragraph 8: \"While both locales provided a wealth of imagery for her paintings, one feature of the Abiquiú house – the large walled patio with its black door – was particularly inspirational. In more than thirty pictures between 1946 and 1960, she reinvented the patio into an abstract arrangement of geometric shapes.\"\n\nExplanation: The statement says O’Keeffe’s paintings of the patio in Abiquiú were among her favourite works. The passage mentions the patio inspired her and she painted it many times, but it does not say these were her favourite works. Since the text doesn’t confirm or contradict this, Therefore, the answer is: NOT GIVEN.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'e687a095-d2a7-44e7-b83d-5f7999b413e5',
    'reading',
    '553c7f15-dc4e-4977-ab2c-9d71283d20ba',
    13,
    'tfng',
    'O’Keeffe produced a greater quantity of work during the 1950s to 1970s than at any other time in her life.',
    NULL,
    'NOT GIVEN',
    'In paragraph 9–10: These paragraphs describe O’Keeffe’s travels, large-scale paintings, and later decline in productivity due to ill health.

Explanation: The statement says O’Keeffe produced more work during the 1950s to 1970s than at any other time. The passage talks about her travels and some major works during these years but gives no information comparing the quantity of work in this period with other times in her life. Therefore, the answer is: NOT GIVEN.',
    1,
    '{"explanation":"In paragraph 9–10: These paragraphs describe O’Keeffe’s travels, large-scale paintings, and later decline in productivity due to ill health.\n\nExplanation: The statement says O’Keeffe produced more work during the 1950s to 1970s than at any other time. The passage talks about her travels and some major works during these years but gives no information comparing the quantity of work in this period with other times in her life. Therefore, the answer is: NOT GIVEN.","instruction":"<p>Choose&nbsp;<strong>TRUE</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>FALSE</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

-- ============================================
-- Full Reading Test 1 - Part 2: Adapting to the effects of climate change
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    'a2739a19-3a49-48fd-83be-e605eafab34f',
    'Full Reading Test 1 - Part 2: Adapting to the effects of climate change',
    'Cambridge IELTS - Adapting to the effects of climate change',
    'medium',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    '7c361bd1-8787-4c26-aabf-edd4a3272681',
    'a2739a19-3a49-48fd-83be-e605eafab34f',
    1,
    'Adapting to the effects of climate change',
    'A
All around the world, nations are already preparing for, and adapting to, climate change and its impacts. Even if we stopped all CO2 emissions tomorrow, we would continue to see the impact of the CO2 already released since industrial times, with scientists forecasting that global warming would continue for around 40 years. In the meantime, ice caps would continue to melt and sea levels rise. Some countries and regions will suffer more extreme impacts from these changes than others. It’s in these places that innovation is thriving.

B
In Miami Beach, Florida, USA, seawater isn’t just breaching the island city’s walls, it’s seeping up through the ground, so the only way to save the city is to lift it up above sea level. Starting in the lowest and most vulnerable neighbourhoods, roads have been raised by as much as 61 centimetres. The elevation work was carried out as part of Miami Beach’s ambitious but much-needed stormwater-management programme. In addition to the road adaptations, the city has set up new pumps that can remove up to 75,000 litres of water per minute. In the face of floods, climate-mitigation strategies have often been overlooked, says Yanira Pineda, a senior sustainability coordinator. She knows that they’re essential and that the job is far from over. ‘We know that in 20, 30, 40 years, we’ll need to go back in there and adjust to the changing environment,’ she says.

C
Seawalls are a staple strategy for many coastal communities, but on the soft, muddy northern shores of Java, Indonesia, they frequently collapse, further exacerbating coastal erosion. There have been many attempts to restore the island’s coastal mangroves: ecosystems of trees and shrubs that help defend coastal areas by trapping sediment in their net-like root systems, elevating the sea bed and dampening the energy of waves and tidal currents. But Susanna Tol of the not-for-profit organisation Wetlands International says that, while hugely popular, the majority of mangrove-planting projects fail. So, Wetlands International started out with a different approach, building semi-permeable dams, made from bamboo poles and brushwood, to mimic the role of mangrove roots and create favourable conditions for mangroves to grow back naturally. The programme has seen moderate success, mainly in areas with less subsidence. “Unfortunately, traditional infrastructure is often single-solution focused,’ says Tol. ‘For long-term success, it’s critical that we transition towards multifunctional approaches that embed natural processes and that engage and benefit communities and local decision-makers.”

D
As the floodwaters rose in the rice fields of the Mekong Delta in September 2018, four small houses rose with them. Homes in this part of Vietnam are traditionally built on stilts but these ones had been built to float. The modifications were made by the Buoyant Foundation Project, a not-for-profit organisation that has been researching and retrofitting amphibious houses since 2006. ‘When I started this,’ explains founder Elizabeth English, ‘climate change was not on the tip of everybody’s tongue, but this technology is becoming necessary in places that didn’t previously need it.’ It’s much cheaper than permanently elevating houses, English explains – about a third of what it would cost to completely replace a building’s foundations. It also avoids the problem of taller houses being at greater risk from wind damage. Another plus comes from the fact that amphibious structures can be sensitively adapted to meet cultural needs and match the kind of houses that are already common in a community.

E
Bangladesh is especially vulnerable to climate change. Most of the country is less than a metre above sea level and 80 per cent of its land lies on floodplains. ‘Almost 35 million people living on the coastal belt of Bangladesh are currently affected by soil and water salinity,’ says Raisa Chowdhury of the international development organisation ICCO Cooperation. Rather than fighting against it, one project is helping communities adapt to salt-affected soils. ICCO Cooperation has been working with 10,000 farmers in Bangladesh to start cultivating naturally salt-tolerant crops in the region. Certain varieties of carrot, potato, kohlrabi, cabbage and beetroot have been found to be better suited to salty soil than the rice and wheat that is typically grown there. Chowdhury says that the results are very visible, comparing a barren plot of land to the ‘beautiful, lush green vegetable garden’ sitting beside it, in which he and his team have been working with the farmers. Since the project began, farmers trained in saline agriculture have reported increases of two to three more harvests per year.

F
Greg Spotts from Los Angeles (LA) in the USA is chief sustainability officer of the city’s street services department. He leads the Cool Streets LA programme, a series of pilot projects, which include the planting of trees and the installation of a ‘cool pavement’ system, designed to help reach the city’s goal of bringing down its average temperature by 1.5°C. ‘Urban cooling is literally a matter of life and death for our future in LA,’ says Spotts. Using a Geographic Information System data mapping tool, the programme identified streets with low tree canopy cover in three of the city’s neighbourhoods and covered them with a light-grey, light-reflecting coating, which had already been shown to lower road surface temperature in Los Angeles by 6°C. Spotts says one of these streets, in the Winnetka neighbourhood of San Fernando Valley, can now be seen as a pale crescent, the only cool spot on an otherwise red thermal image, from the International Space Station.',
    906,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd5fc5d89-d0e5-4920-9bb8-b065e216daed',
    'reading',
    '7c361bd1-8787-4c26-aabf-edd4a3272681',
    14,
    'matching_info',
    'how a type of plant functions as a natural protection for coastlines ',
    '["","","","","",""]'::jsonb,
    'C',
    'In paragraph C: "There have been many attempts to restore the island''s coastal mangroves: ecosystems of trees and shrubs that help defend coastal areas by trapping sediment in their net-like root systems, elevating the sea bed and dampening the energy of waves and tidal currents."

Explanation: The statement asks about how a type of plant functions as a natural protection for coastlines. The sentence explains that mangroves protect coasts by trapping sediment, raising the sea bed, and reducing wave and tidal energy. These actions describe their protective function. Therefore, the answer is: C.',
    1,
    '{"explanation":"In paragraph C: \"There have been many attempts to restore the island''s coastal mangroves: ecosystems of trees and shrubs that help defend coastal areas by trapping sediment in their net-like root systems, elevating the sea bed and dampening the energy of waves and tidal currents.\"\n\nExplanation: The statement asks about how a type of plant functions as a natural protection for coastlines. The sentence explains that mangroves protect coasts by trapping sediment, raising the sea bed, and reducing wave and tidal energy. These actions describe their protective function. Therefore, the answer is: C.","instruction":"<p>The text has six sections&nbsp;A-F. Which section&nbsp;contains the following information? Choose the correct paragraph&nbsp;A-F.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'b1feb546-3f7d-48b3-b83a-c6df55294cba',
    'reading',
    '7c361bd1-8787-4c26-aabf-edd4a3272681',
    15,
    'matching_info',
    'a prediction about how long it could take to stop noticing the effects of climate change',
    '["","","","","",""]'::jsonb,
    'A',
    'In paragraph A: "Even if we stopped all CO2 emissions tomorrow, we would continue to see the impact of the CO2 already released since industrial times, with scientists forecasting that global warming would continue for around 40 years."

Explanation: The statement is about a prediction of how long climate change effects will persist. The text clearly says that global warming would still continue for about 40 years even if emissions stopped, which directly answers the question. Therefore, the answer is: A.',
    1,
    '{"explanation":"In paragraph A: \"Even if we stopped all CO2 emissions tomorrow, we would continue to see the impact of the CO2 already released since industrial times, with scientists forecasting that global warming would continue for around 40 years.\"\n\nExplanation: The statement is about a prediction of how long climate change effects will persist. The text clearly says that global warming would still continue for about 40 years even if emissions stopped, which directly answers the question. Therefore, the answer is: A.","instruction":"<p>The text has six sections&nbsp;A-F. Which section&nbsp;contains the following information? Choose the correct paragraph&nbsp;A-F.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '31af90f8-b0b9-4b8e-bcd8-b0b66f685325',
    'reading',
    '7c361bd1-8787-4c26-aabf-edd4a3272681',
    16,
    'matching_info',
    'a reference to the fact that a solution is particularly cost-effective  ',
    '["","","","","",""]'::jsonb,
    'D',
    'In paragraph D: "It''s much cheaper than permanently elevating houses, English explains – about a third of what it would cost to completely replace a building''s foundations."

Explanation: The statement is about a particularly cost-effective solution. The sentence highlights that this method costs only one-third of the price of replacing foundations, making it far cheaper and more affordable than the alternative. Therefore, the answer is: D.',
    1,
    '{"explanation":"In paragraph D: \"It''s much cheaper than permanently elevating houses, English explains – about a third of what it would cost to completely replace a building''s foundations.\"\n\nExplanation: The statement is about a particularly cost-effective solution. The sentence highlights that this method costs only one-third of the price of replacing foundations, making it far cheaper and more affordable than the alternative. Therefore, the answer is: D.","instruction":"<p>The text has six sections&nbsp;A-F. Which section&nbsp;contains the following information? Choose the correct paragraph&nbsp;A-F.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'bcf1a4d4-67d8-41a7-abf2-8301d62b178d',
    'reading',
    '7c361bd1-8787-4c26-aabf-edd4a3272681',
    17,
    'matching_info',
    'a mention of a technology used to locate areas most in need of intervention',
    '["","","","","",""]'::jsonb,
    'F',
    'In paragraph F: "Using a Geographic Information System data mapping tool, the programme identified streets with low tree canopy cover in three of the city''s neighbourhoods and covered them with a light-grey, light-reflecting coating, which had already been shown to lower road surface temperature in Los Angeles by 6°C."

Explanation: This sentence directly refers to the use of technology (a Geographic Information System data mapping tool) to locate areas most in need of intervention for the cooling project. Therefore, the answer is: F.',
    1,
    '{"explanation":"In paragraph F: \"Using a Geographic Information System data mapping tool, the programme identified streets with low tree canopy cover in three of the city''s neighbourhoods and covered them with a light-grey, light-reflecting coating, which had already been shown to lower road surface temperature in Los Angeles by 6°C.\"\n\nExplanation: This sentence directly refers to the use of technology (a Geographic Information System data mapping tool) to locate areas most in need of intervention for the cooling project. Therefore, the answer is: F.","instruction":"<p>The text has six sections&nbsp;A-F. Which section&nbsp;contains the following information? Choose the correct paragraph&nbsp;A-F.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '6b3f4f8c-4169-478b-9085-e01d7f9e895f',
    'reading',
    '7c361bd1-8787-4c26-aabf-edd4a3272681',
    18,
    'summary_completion',
    'Question 18',
    NULL,
    'pumps',
    'In paragraph B: "In addition to the road adaptations, the city has set up new pumps that can remove up to 75,000 litres of water per minute."

Explanation: The sentence describes part of Miami Beach’s stormwater-management programme, specifically mentioning the installation of pumps with a high capacity for water removal, making them an essential element of the adaptation strategy. Therefore, the answer is: pumps.',
    1,
    '{"explanation":"In paragraph B: \"In addition to the road adaptations, the city has set up new pumps that can remove up to 75,000 litres of water per minute.\"\n\nExplanation: The sentence describes part of Miami Beach’s stormwater-management programme, specifically mentioning the installation of pumps with a high capacity for water removal, making them an essential element of the adaptation strategy. Therefore, the answer is: pumps.","instruction":"<p>Complete the sentences. Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the text for each answer.</p><p><br></p>","context":"<p>The stormwater-management programme in Miami Beach has involved the installation of efficient&nbsp; ______ .</p><p>The construction of&nbsp; ______  was the first stage of a project to ensure the success of mangroves in Indonesia.</p><p>As a response to rising floodwaters in the Mekong Delta, a not-for-profit organisation has been building houses that can&nbsp; ______ .&nbsp;</p><p>Rising sea levels in Bangladesh have made it necessary to introduce various&nbsp; ______ that are suitable for areas of high salt content.</p><p>A project in LA has increased the number of&nbsp; ______  on the city’s streets.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '252d31a2-da4a-4287-b8fb-d67f410e6a5e',
    'reading',
    '7c361bd1-8787-4c26-aabf-edd4a3272681',
    19,
    'summary_completion',
    'Question 19',
    NULL,
    'dams',
    'In paragraph C: "So, Wetlands International started out with a different approach, building semi-permeable dams, made from bamboo poles and brushwood, to mimic the role of mangrove roots and create favourable conditions for mangroves to grow back naturally."

Explanation: This sentence explains the first stage of the project in Indonesia, where dams were constructed to imitate mangrove roots, helping to restore the mangrove ecosystem and protect the coastline. Therefore, the answer is: dams.',
    1,
    '{"explanation":"In paragraph C: \"So, Wetlands International started out with a different approach, building semi-permeable dams, made from bamboo poles and brushwood, to mimic the role of mangrove roots and create favourable conditions for mangroves to grow back naturally.\"\n\nExplanation: This sentence explains the first stage of the project in Indonesia, where dams were constructed to imitate mangrove roots, helping to restore the mangrove ecosystem and protect the coastline. Therefore, the answer is: dams.","instruction":"<p>Complete the sentences. Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the text for each answer.</p><p><br></p>","context":"<p>The stormwater-management programme in Miami Beach has involved the installation of efficient&nbsp; ______ .</p><p>The construction of&nbsp; ______  was the first stage of a project to ensure the success of mangroves in Indonesia.</p><p>As a response to rising floodwaters in the Mekong Delta, a not-for-profit organisation has been building houses that can&nbsp; ______ .&nbsp;</p><p>Rising sea levels in Bangladesh have made it necessary to introduce various&nbsp; ______ that are suitable for areas of high salt content.</p><p>A project in LA has increased the number of&nbsp; ______  on the city’s streets.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '2189b4e9-e445-4a19-a3b8-62f10a5a9ff5',
    'reading',
    '7c361bd1-8787-4c26-aabf-edd4a3272681',
    20,
    'summary_completion',
    'Question 20',
    NULL,
    'float',
    'In paragraph D: "Homes in this part of Vietnam are traditionally built on stilts but these ones had been built to float. The modifications were made by the Buoyant Foundation Project, a not-for-profit organisation..."

Explanation: This shows that the new houses in the Mekong Delta were specially designed to float during floods, allowing them to rise with the water instead of being damaged. This is the key adaptation introduced by the Buoyant Foundation Project to respond to rising floodwaters. Therefore, the answer is: float.',
    1,
    '{"explanation":"In paragraph D: \"Homes in this part of Vietnam are traditionally built on stilts but these ones had been built to float. The modifications were made by the Buoyant Foundation Project, a not-for-profit organisation...\"\n\nExplanation: This shows that the new houses in the Mekong Delta were specially designed to float during floods, allowing them to rise with the water instead of being damaged. This is the key adaptation introduced by the Buoyant Foundation Project to respond to rising floodwaters. Therefore, the answer is: float.","instruction":"<p>Complete the sentences. Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the text for each answer.</p><p><br></p>","context":"<p>The stormwater-management programme in Miami Beach has involved the installation of efficient&nbsp; ______ .</p><p>The construction of&nbsp; ______  was the first stage of a project to ensure the success of mangroves in Indonesia.</p><p>As a response to rising floodwaters in the Mekong Delta, a not-for-profit organisation has been building houses that can&nbsp; ______ .&nbsp;</p><p>Rising sea levels in Bangladesh have made it necessary to introduce various&nbsp; ______ that are suitable for areas of high salt content.</p><p>A project in LA has increased the number of&nbsp; ______  on the city’s streets.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '954090f2-85cd-4f21-9225-855e180bc2fd',
    'reading',
    '7c361bd1-8787-4c26-aabf-edd4a3272681',
    21,
    'summary_completion',
    'Question 21',
    NULL,
    'crops',
    'In paragraph E: "ICCO Cooperation has been working with 10,000 farmers in Bangladesh to start cultivating naturally salt-tolerant crops in the region."

Explanation: The question focuses on what has been introduced to adapt to rising sea levels. This sentence describes how ICCO Cooperation is helping farmers grow salt-tolerant crops, which are adapted to the saline conditions caused by sea-level rise. These crops provide a sustainable agricultural solution in areas where traditional crops like rice and wheat fail. Therefore, the answer is: crops.',
    1,
    '{"explanation":"In paragraph E: \"ICCO Cooperation has been working with 10,000 farmers in Bangladesh to start cultivating naturally salt-tolerant crops in the region.\"\n\nExplanation: The question focuses on what has been introduced to adapt to rising sea levels. This sentence describes how ICCO Cooperation is helping farmers grow salt-tolerant crops, which are adapted to the saline conditions caused by sea-level rise. These crops provide a sustainable agricultural solution in areas where traditional crops like rice and wheat fail. Therefore, the answer is: crops.","instruction":"<p>Complete the sentences. Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the text for each answer.</p><p><br></p>","context":"<p>The stormwater-management programme in Miami Beach has involved the installation of efficient&nbsp; ______ .</p><p>The construction of&nbsp; ______  was the first stage of a project to ensure the success of mangroves in Indonesia.</p><p>As a response to rising floodwaters in the Mekong Delta, a not-for-profit organisation has been building houses that can&nbsp; ______ .&nbsp;</p><p>Rising sea levels in Bangladesh have made it necessary to introduce various&nbsp; ______ that are suitable for areas of high salt content.</p><p>A project in LA has increased the number of&nbsp; ______  on the city’s streets.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '9d1f223f-a381-4f1a-960d-3f7f9b35a6bd',
    'reading',
    '7c361bd1-8787-4c26-aabf-edd4a3272681',
    22,
    'summary_completion',
    'Question 22',
    NULL,
    'trees',
    'In paragraph F: "He leads the Cool Streets LA programme, a series of pilot projects, which include the planting of trees and the installation of a ''cool pavement'' system, designed to help reach the city''s goal of bringing down its average temperature by 1.5°C."

Explanation: The question asks what has increased on the city’s streets. This sentence explains that part of the programme involves the planting of trees, clearly indicating an increase in trees on city streets as a climate adaptation strategy. Therefore, the answer is: trees.',
    1,
    '{"explanation":"In paragraph F: \"He leads the Cool Streets LA programme, a series of pilot projects, which include the planting of trees and the installation of a ''cool pavement'' system, designed to help reach the city''s goal of bringing down its average temperature by 1.5°C.\"\n\nExplanation: The question asks what has increased on the city’s streets. This sentence explains that part of the programme involves the planting of trees, clearly indicating an increase in trees on city streets as a climate adaptation strategy. Therefore, the answer is: trees.","instruction":"<p>Complete the sentences. Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the text for each answer.</p><p><br></p>","context":"<p>The stormwater-management programme in Miami Beach has involved the installation of efficient&nbsp; ______ .</p><p>The construction of&nbsp; ______  was the first stage of a project to ensure the success of mangroves in Indonesia.</p><p>As a response to rising floodwaters in the Mekong Delta, a not-for-profit organisation has been building houses that can&nbsp; ______ .&nbsp;</p><p>Rising sea levels in Bangladesh have made it necessary to introduce various&nbsp; ______ that are suitable for areas of high salt content.</p><p>A project in LA has increased the number of&nbsp; ______  on the city’s streets.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '4cc39eec-ad3a-4e5e-95ef-780e225c96ce',
    'reading',
    '7c361bd1-8787-4c26-aabf-edd4a3272681',
    23,
    'summary_completion',
    'Question 23',
    '["Susanna Tol","Greg Spotts","Yanira Pineda","Elizabeth English","Raisa Chowdhury"]'::jsonb,
    'Susanna Tol',
    'In paragraph C: "...says Tol. ''For long-term success, it''s critical that we transition towards multifunctional approaches that embed natural processes and that engage and benefit communities and local decision-makers.''"

Explanation: The question asks who stresses the importance of involving and helping local residents. In this sentence, Susanna Tol highlights the need for approaches that engage with and benefit communities, making it clear that community involvement is essential to climate adaptation strategies. Therefore, the answer is: Susanna Tol.',
    1,
    '{"explanation":"In paragraph C: \"...says Tol. ''For long-term success, it''s critical that we transition towards multifunctional approaches that embed natural processes and that engage and benefit communities and local decision-makers.''\"\n\nExplanation: The question asks who stresses the importance of involving and helping local residents. In this sentence, Susanna Tol highlights the need for approaches that engage with and benefit communities, making it clear that community involvement is essential to climate adaptation strategies. Therefore, the answer is: Susanna Tol.","instruction":"<p><em>Match each statement with the correct person.&nbsp;Choose the correct answer for each item.</em></p>","context":"<p>It is essential to adopt strategies which involve and help residents of the region.&nbsp; ______ &nbsp;</p><p>Interventions which reduce heat are absolutely vital for our survival in this location.&nbsp; ______ &nbsp;&nbsp;</p><p>More work will need to be done in future decades to deal with the impact of rising water levels.&nbsp; ______ &nbsp;</p><p>The number of locations requiring action to adapt to flooding has grown in recent years.&nbsp; ______ &nbsp;</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'b9e3c608-ba71-40e2-a51d-4fdd05389345',
    'reading',
    '7c361bd1-8787-4c26-aabf-edd4a3272681',
    24,
    'summary_completion',
    'Question 24',
    '["Susanna Tol","Greg Spotts","Yanira Pineda","Elizabeth English","Raisa Chowdhury"]'::jsonb,
    'Greg Spotts',
    'In paragraph F: "Urban cooling is literally a matter of life and death for our future in LA,’ says Spotts."

Explanation: The question asks who emphasizes the extreme importance of cooling interventions. In this sentence, Greg Spotts uses strong language—life and death—to underline how critical urban cooling is for survival in Los Angeles. This highlights the urgency and necessity of the measures being taken. Therefore, the answer is: Greg Spotts.',
    1,
    '{"explanation":"In paragraph F: \"Urban cooling is literally a matter of life and death for our future in LA,’ says Spotts.\"\n\nExplanation: The question asks who emphasizes the extreme importance of cooling interventions. In this sentence, Greg Spotts uses strong language—life and death—to underline how critical urban cooling is for survival in Los Angeles. This highlights the urgency and necessity of the measures being taken. Therefore, the answer is: Greg Spotts.","instruction":"<p><em>Match each statement with the correct person.&nbsp;Choose the correct answer for each item.</em></p>","context":"<p>It is essential to adopt strategies which involve and help residents of the region.&nbsp; ______ &nbsp;</p><p>Interventions which reduce heat are absolutely vital for our survival in this location.&nbsp; ______ &nbsp;&nbsp;</p><p>More work will need to be done in future decades to deal with the impact of rising water levels.&nbsp; ______ &nbsp;</p><p>The number of locations requiring action to adapt to flooding has grown in recent years.&nbsp; ______ &nbsp;</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '3d076fe3-6489-4b98-a6c0-cee0b6178e62',
    'reading',
    '7c361bd1-8787-4c26-aabf-edd4a3272681',
    25,
    'summary_completion',
    'Question 25',
    '["Susanna Tol","Greg Spotts","Yanira Pineda","Elizabeth English","Raisa Chowdhury"]'::jsonb,
    'Yanira Pineda',
    'In paragraph B: "...says Yanira Pineda, a senior sustainability coordinator. She knows that they''re essential and that the job is far from over. ''We know that in 20, 30, 40 years, we''ll need to go back in there and adjust to the changing environment,'' she says."

Explanation: The question asks who mentions that more work will be needed in the coming decades. Yanira Pineda explicitly refers to a future timeline—20, 30, 40 years—during which adjustments will be necessary. The keywords adjust and changing environment confirm the ongoing nature of climate adaptation. Therefore, the answer is: Yanira Pineda.',
    1,
    '{"explanation":"In paragraph B: \"...says Yanira Pineda, a senior sustainability coordinator. She knows that they''re essential and that the job is far from over. ''We know that in 20, 30, 40 years, we''ll need to go back in there and adjust to the changing environment,'' she says.\"\n\nExplanation: The question asks who mentions that more work will be needed in the coming decades. Yanira Pineda explicitly refers to a future timeline—20, 30, 40 years—during which adjustments will be necessary. The keywords adjust and changing environment confirm the ongoing nature of climate adaptation. Therefore, the answer is: Yanira Pineda.","instruction":"<p><em>Match each statement with the correct person.&nbsp;Choose the correct answer for each item.</em></p>","context":"<p>It is essential to adopt strategies which involve and help residents of the region.&nbsp; ______ &nbsp;</p><p>Interventions which reduce heat are absolutely vital for our survival in this location.&nbsp; ______ &nbsp;&nbsp;</p><p>More work will need to be done in future decades to deal with the impact of rising water levels.&nbsp; ______ &nbsp;</p><p>The number of locations requiring action to adapt to flooding has grown in recent years.&nbsp; ______ &nbsp;</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd6081e09-3a6d-4367-b45c-32c7500c817a',
    'reading',
    '7c361bd1-8787-4c26-aabf-edd4a3272681',
    26,
    'summary_completion',
    'Question 26',
    '["Susanna Tol","Greg Spotts","Yanira Pineda","Elizabeth English","Raisa Chowdhury"]'::jsonb,
    'Elizabeth English',
    NULL,
    1,
    '{"instruction":"<p><em>Match each statement with the correct person.&nbsp;Choose the correct answer for each item.</em></p>","context":"<p>It is essential to adopt strategies which involve and help residents of the region.&nbsp; ______ &nbsp;</p><p>Interventions which reduce heat are absolutely vital for our survival in this location.&nbsp; ______ &nbsp;&nbsp;</p><p>More work will need to be done in future decades to deal with the impact of rising water levels.&nbsp; ______ &nbsp;</p><p>The number of locations requiring action to adapt to flooding has grown in recent years.&nbsp; ______ &nbsp;</p>"}'::jsonb
);

-- ============================================
-- Full Reading Test 1 - Part 3: Movie of Metropolis
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '38555860-b416-4287-8e19-18820586b06b',
    'Full Reading Test 1 - Part 3: Movie of Metropolis',
    'Cambridge IELTS - Movie of Metropolis',
    'medium',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    'cbc5f937-0467-403d-a414-8920ba456c57',
    '38555860-b416-4287-8e19-18820586b06b',
    1,
    'Movie of Metropolis',
    '… being the science-fiction film that is steadily becoming a fact

A
When German director Fritz Lang visited the United States in 1924, his first glimpse of the country was a night-time view of the New York skyline from the deck of an ocean liner. This, he later recalled, was the direct inspiration for what is still probably the most innovative and influential science-fiction film ever made – Metropolis.

B
Metropolis is a bleak vision of the early twenty-first century that is at once both chilling and exhilarating. This spectacular city of the future is a technological marvel of high-rise buildings connected by elevated railways and airships. It’s also a world of extreme inequality and social division. The workers live below ground and exist as machines working in an endless routine of mind-numbing 10-hour shifts while the city’s elite lead lives of luxury high above. Presiding over them all is the Master of Metropolis, John Fredersen, whose sole satisfaction seems to lie in the exercise of power.

C
Lang’s graphic depiction of the future is conceived in almost totally abstract terms. The function of the individual machines is never defined. Instead, this mass of dials, levers and gauges symbolically stands for all machines and all industry, with the workers as slave-live extensions of the equipment they have to operate. Lang emphasizes this idea in the famous shift-change sequence at the start of the movie when the workers walk in zombie-like geometric ranks, all dressed in the same dark overalls and all exhibiting the same bowed head and dead-eyed stare. An extraordinary fantasy sequence sees one machine transformed into a huge open-jawed statue which then literally swallows them up.

D
On one level the machines and the exploited workers simply provide the wealth and services which allow the elite to live their lives of leisure, but on a more profound level, the purpose of all this demented industry is to serve itself. Power, control and the continuance of the system from one 10-hour shift to the next is all that counts. The city consumes people and their labour and in the process becomes a perverse parody of a living being.

E
It is enlightening, I think, to relate the film to the modern global economy in which multinational corporations now routinely close their factories in one continent so that they can take advantage of cheap labour in another. Like the industry in Metropolis, these corporations’ goals of increased efficiency and profits have little to do with the welfare of the majority of their employees or that of the population at large. Instead, their aims are to sustain the momentum of their own growth and to increase the monetary rewards to a tiny elite – their executives and shareholders. Fredersen himself is the essence of the big company boss: Rupert Murdoch would probably feel perfectly at home in his huge skyscraper office with its panoramic view of the city below. And it is important that there is never any mention of government in Metropolis – the whole concept is by implication obsolete. The only people who have power are the supreme industrialist, Fredersen, and his magician/scientist cohort Rotwang.

F
So far so good: when the images are allowed to speak for themselves the film is impeccable both in its symbolism and in its cynicism. The problem with Metropolis is its sentimental story-line, which sees Freder, Fredersen’s son, instantly falling in love with the visionary Maria. Maria leads an underground pseudo-religious movement and preaches that the workers should not rebel but should await the arrival of a ‘Mediator’ between the ‘Head’ (capital) and the ‘Hands’ (labour). That mediator is the ‘Heart’ – love, as embodied, finally, by Freder’s love of Maria and his father’s love of him.

G
Lang wrote the screenplay in collaboration with his then-wife Thea von Harbou. In 1933 he fled from the Nazis (and continued a very successful career in Hollywood). She stayed in Germany and continued to make films under the Hitler regime. There is a constant tension within the film between the too-tidy platitudes of von Harbou’s script and the uncompromisingly caustic vigour of Lang’s imagery.

H
To my mind, both in Metropolis and in the real world, it’s not so much that the ‘Head’ and ‘Hands’ require a ‘Heart’ to mediate between them but that the ‘Hands’ need to develop their own ‘Head’, their own political consciousness, and act accordingly – through the ballot box, through buying power and through a sceptical resistance to the materialistic fantasies of the Fredersens.

I
All the same, Metropolis is probably more accurate now as a representation of industrial and social relations than it has been at any time since its original release. And Fredersen is certainly still the most potent movie symbol of the handful of elusive corporate figureheads who increasingly treat the world as a Metropolis-like global village.',
    810,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '22f0b09b-1c81-4b6f-9a67-6fe149023e27',
    'reading',
    'cbc5f937-0467-403d-a414-8920ba456c57',
    27,
    'tfng',
    'The inspiration of the movie- Metropolis -comes from the director’s visit in the USA in 1924.',
    NULL,
    'YES',
    'In paragraph A: "When German director Fritz Lang visited the United States in 1924, his first glimpse of the country was a night-time view of the New York skyline from the deck of an ocean liner. This, he later recalled, was the direct inspiration for what is still probably the most innovative and influential science-fiction film ever made – Metropolis."

Explanation: The passage explicitly states that Lang’s visit to the USA in 1924 directly inspired Metropolis. This matches the question exactly. Therefore, the answer is: YES',
    1,
    '{"explanation":"In paragraph A: \"When German director Fritz Lang visited the United States in 1924, his first glimpse of the country was a night-time view of the New York skyline from the deck of an ocean liner. This, he later recalled, was the direct inspiration for what is still probably the most innovative and influential science-fiction film ever made – Metropolis.\"\n\nExplanation: The passage explicitly states that Lang’s visit to the USA in 1924 directly inspired Metropolis. This matches the question exactly. Therefore, the answer is: YES","instruction":"<p>Choose&nbsp;<strong>YES</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>NO</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '08e20b83-c10a-435d-aa83-c82d9cf79e61',
    'reading',
    'cbc5f937-0467-403d-a414-8920ba456c57',
    28,
    'tfng',
    'The Master of Metropolis, John Fredersen, is portrayed from an industrialist that the director met in the US.',
    NULL,
    'NOT GIVEN',
    'Explanation: The passage does not provide any information about whether the character John Fredersen was modeled after an industrialist Lang met in the US.

Therefore, the answer is: NOT GIVEN',
    1,
    '{"explanation":"Explanation: The passage does not provide any information about whether the character John Fredersen was modeled after an industrialist Lang met in the US.\n\nTherefore, the answer is: NOT GIVEN","instruction":"<p>Choose&nbsp;<strong>YES</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>NO</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '64740916-11fd-4be8-9e84-c9b7382dbad7',
    'reading',
    'cbc5f937-0467-403d-a414-8920ba456c57',
    29,
    'tfng',
    'The start of the movie exhibits the workers working in full energy.',
    NULL,
    'NO',
    'In paragraph C:
"Lang emphasizes this idea in the famous shift-change sequence at the start of the movie when the workers walk in zombie-like geometric ranks, all dressed in the same dark overalls and all exhibiting the same bowed head and dead-eyed stare."

Explanation: This description shows the workers as tired and robotic, not working with full energy, which contradicts the statement.

Therefore, the answer is: NO',
    1,
    '{"explanation":"In paragraph C:\n\"Lang emphasizes this idea in the famous shift-change sequence at the start of the movie when the workers walk in zombie-like geometric ranks, all dressed in the same dark overalls and all exhibiting the same bowed head and dead-eyed stare.\"\n\nExplanation: This description shows the workers as tired and robotic, not working with full energy, which contradicts the statement.\n\nTherefore, the answer is: NO","instruction":"<p>Choose&nbsp;<strong>YES</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>NO</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'a0a28549-2f5b-4a46-a704-dab6da3cf980',
    'reading',
    'cbc5f937-0467-403d-a414-8920ba456c57',
    30,
    'tfng',
    'The director and his wife got divorced because his wife decided to stay in Germany.',
    NULL,
    'NOT GIVEN',
    'In paragraph G: She stayed in Germany and continued to make films under the Hitler regime.

Explanation: The passage states that Lang fled Nazi Germany while his wife stayed, but it does not say whether they divorced.

Therefore, the answer is: NOT GIVEN',
    1,
    '{"explanation":"In paragraph G: She stayed in Germany and continued to make films under the Hitler regime.\n\nExplanation: The passage states that Lang fled Nazi Germany while his wife stayed, but it does not say whether they divorced.\n\nTherefore, the answer is: NOT GIVEN","instruction":"<p>Choose&nbsp;<strong>YES</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>NO</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'efb568be-02f8-49cc-977f-ac131bb1c99d',
    'reading',
    'cbc5f937-0467-403d-a414-8920ba456c57',
    31,
    'summary_completion',
    'Question 31',
    NULL,
    'social division',
    'In paragraph B: "This spectacular city of the future is a technological marvel of high-rise buildings connected by elevated railways and airships. It’s also a world of extreme inequality and social division."

Explanation: The passage clearly describes the city as a place of great inequality and social division, showing the separation between rich and poor in Metropolis. This directly answers the question about the theme shown in the film. Therefore, the answer is: social division',
    1,
    '{"explanation":"In paragraph B: \"This spectacular city of the future is a technological marvel of high-rise buildings connected by elevated railways and airships. It’s also a world of extreme inequality and social division.\"\n\nExplanation: The passage clearly describes the city as a place of great inequality and social division, showing the separation between rich and poor in Metropolis. This directly answers the question about the theme shown in the film. Therefore, the answer is: social division","instruction":"<p>Complete the summary. Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the text for each</p>","context":"<p>The director depicts a world of inequality and&nbsp; ______ . In the future, the mindless masses of workers living underground are treated as&nbsp; ______ . And the master of them is&nbsp; ______ , who is in charge of the whole city. The writer claims that the director, Fritz Lang, presents the movie in an&nbsp; ______  term, where the&nbsp; ______  of the individual machines is not defined. Besides the writer compares the film to the modern global economy in which multinational corporations concern more about the growing&nbsp; ______  and money.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '8f2747ba-3c03-4651-b4c8-1d34e0c2dc0b',
    'reading',
    'cbc5f937-0467-403d-a414-8920ba456c57',
    32,
    'summary_completion',
    'Question 32',
    NULL,
    'machines',
    'In paragraph C: The workers live below ground and exist as machines working in an endless routine of mind-numbing 10-hour shifts while the city’s elite lead lives of luxury high above.

Explanation: The passage clearly compares the workers to machines, showing they are treated like parts of the industrial system rather than as individuals. Therefore, the answer is: machines',
    1,
    '{"explanation":"In paragraph C: The workers live below ground and exist as machines working in an endless routine of mind-numbing 10-hour shifts while the city’s elite lead lives of luxury high above.\n\nExplanation: The passage clearly compares the workers to machines, showing they are treated like parts of the industrial system rather than as individuals. Therefore, the answer is: machines","instruction":"<p>Complete the summary. Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the text for each</p>","context":"<p>The director depicts a world of inequality and&nbsp; ______ . In the future, the mindless masses of workers living underground are treated as&nbsp; ______ . And the master of them is&nbsp; ______ , who is in charge of the whole city. The writer claims that the director, Fritz Lang, presents the movie in an&nbsp; ______  term, where the&nbsp; ______  of the individual machines is not defined. Besides the writer compares the film to the modern global economy in which multinational corporations concern more about the growing&nbsp; ______  and money.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '028259fb-8a48-4f3d-8be8-67e164308469',
    'reading',
    'cbc5f937-0467-403d-a414-8920ba456c57',
    33,
    'summary_completion',
    'Question 33',
    NULL,
    'John Fredersen',
    'In paragraph B: "Presiding over them all is the Master of Metropolis, John Fredersen, whose sole satisfaction seems to lie in the exercise of power."

Explanation: John Fredersen is identified as the powerful leader controlling the city, matching the question. Therefore, the answer is: John Fredersen',
    1,
    '{"explanation":"In paragraph B: \"Presiding over them all is the Master of Metropolis, John Fredersen, whose sole satisfaction seems to lie in the exercise of power.\"\n\nExplanation: John Fredersen is identified as the powerful leader controlling the city, matching the question. Therefore, the answer is: John Fredersen","instruction":"<p>Complete the summary. Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the text for each</p>","context":"<p>The director depicts a world of inequality and&nbsp; ______ . In the future, the mindless masses of workers living underground are treated as&nbsp; ______ . And the master of them is&nbsp; ______ , who is in charge of the whole city. The writer claims that the director, Fritz Lang, presents the movie in an&nbsp; ______  term, where the&nbsp; ______  of the individual machines is not defined. Besides the writer compares the film to the modern global economy in which multinational corporations concern more about the growing&nbsp; ______  and money.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '26ea5c72-6450-4210-87fa-ae02dc610240',
    'reading',
    'cbc5f937-0467-403d-a414-8920ba456c57',
    34,
    'summary_completion',
    'Question 34',
    NULL,
    'abstract',
    'In paragraph C: Lang’s graphic depiction of the future is conceived in almost totally abstract terms. The function of the individual machines is never defined .

Explanation: The film uses symbolic and abstract imagery rather than literal representations. Therefore, the answer is: abstract',
    1,
    '{"explanation":"In paragraph C: Lang’s graphic depiction of the future is conceived in almost totally abstract terms. The function of the individual machines is never defined .\n\nExplanation: The film uses symbolic and abstract imagery rather than literal representations. Therefore, the answer is: abstract","instruction":"<p>Complete the summary. Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the text for each</p>","context":"<p>The director depicts a world of inequality and&nbsp; ______ . In the future, the mindless masses of workers living underground are treated as&nbsp; ______ . And the master of them is&nbsp; ______ , who is in charge of the whole city. The writer claims that the director, Fritz Lang, presents the movie in an&nbsp; ______  term, where the&nbsp; ______  of the individual machines is not defined. Besides the writer compares the film to the modern global economy in which multinational corporations concern more about the growing&nbsp; ______  and money.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '71970770-3f05-482d-950a-23d0b34f13b9',
    'reading',
    'cbc5f937-0467-403d-a414-8920ba456c57',
    35,
    'summary_completion',
    'Question 35',
    NULL,
    'function',
    'In paragraph C: "The function of the individual machines is never defined."

Explanation: The specific roles of the machines are left unclear, representing all machinery and industry collectively. Therefore, the answer is: function',
    1,
    '{"explanation":"In paragraph C: \"The function of the individual machines is never defined.\"\n\nExplanation: The specific roles of the machines are left unclear, representing all machinery and industry collectively. Therefore, the answer is: function","instruction":"<p>Complete the summary. Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the text for each</p>","context":"<p>The director depicts a world of inequality and&nbsp; ______ . In the future, the mindless masses of workers living underground are treated as&nbsp; ______ . And the master of them is&nbsp; ______ , who is in charge of the whole city. The writer claims that the director, Fritz Lang, presents the movie in an&nbsp; ______  term, where the&nbsp; ______  of the individual machines is not defined. Besides the writer compares the film to the modern global economy in which multinational corporations concern more about the growing&nbsp; ______  and money.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '6931ef0c-1fdf-40e8-a4f6-da389672ef6e',
    'reading',
    'cbc5f937-0467-403d-a414-8920ba456c57',
    36,
    'summary_completion',
    'Question 36',
    NULL,
    'efficiency',
    'In paragraph E: "Multinational corporations now routinely close their factories in one continent so that they can take advantage of cheap labour in another. Like the industry in Metropolis, these corporations’ goals of increased efficiency and profits have little to do with the welfare of the majority."

Explanation: The passage compares the film’s industrial world with real-world companies focused mainly on efficiency and profit. Therefore, the answer is: efficiency',
    1,
    '{"explanation":"In paragraph E: \"Multinational corporations now routinely close their factories in one continent so that they can take advantage of cheap labour in another. Like the industry in Metropolis, these corporations’ goals of increased efficiency and profits have little to do with the welfare of the majority.\"\n\nExplanation: The passage compares the film’s industrial world with real-world companies focused mainly on efficiency and profit. Therefore, the answer is: efficiency","instruction":"<p>Complete the summary. Write&nbsp;<strong>NO MORE THAN TWO WORDS</strong>&nbsp;from the text for each</p>","context":"<p>The director depicts a world of inequality and&nbsp; ______ . In the future, the mindless masses of workers living underground are treated as&nbsp; ______ . And the master of them is&nbsp; ______ , who is in charge of the whole city. The writer claims that the director, Fritz Lang, presents the movie in an&nbsp; ______  term, where the&nbsp; ______  of the individual machines is not defined. Besides the writer compares the film to the modern global economy in which multinational corporations concern more about the growing&nbsp; ______  and money.</p>"}'::jsonb
);

