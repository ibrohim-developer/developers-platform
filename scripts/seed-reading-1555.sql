-- ============================================
-- Auto-generated seed for: Day 2: Will Eating Less Make You Live Longer?
-- Source API ID: 1555
-- Generated: 2026-02-26T11:43:35.448Z
-- ============================================

-- ============================================
-- Day 2: Will Eating Less Make You Live Longer? - Part 2: Will Eating Less Make You Live Longer?
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '3f0a6207-814b-47e1-9648-425479fc94ac',
    'Day 2: Will Eating Less Make You Live Longer? - Part 2: Will Eating Less Make You Live Longer?',
    'Cambridge IELTS - Will Eating Less Make You Live Longer?',
    'medium',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    '576553d8-ed9b-48be-8ce6-89b4608954e9',
    '3f0a6207-814b-47e1-9648-425479fc94ac',
    1,
    'Will Eating Less Make You Live Longer?',
    'The latest in a conflicting series of studies suggests calorie restriction could potentially slow ageing in humans

A 
Calorie restriction, or ‘semi-starvation’ as some refer to it, has been proven to extend lifespan in many living organisms from yeast to mice, but the picture for primates, including humans, is not so clear. Research published by a team at the University of Wisconsin in the United States shows that rhesus monkeys also live longer on a calorie-restricted diet. But those findings disagree with research by the National Institute on Aging (NIA) in Maryland, also in the United States. Rozalyn Anderson, of the Wisconsin team, says the research is not intended as a recommendation of calorie restriction. ‘I find the idea monumentally unattractive!’ she says. ‘We study it because it is so effective at delaying ageing and the onset of age-related disease. It’s a way to tease out what it is that creates increased disease vulnerability as a function of age.’

B 
Both groups started long-term trials on rhesus monkeys in the late 1980s to determine whether calorie restriction would extend the lifespan of primates. In mice, many experiments had come to the same finding: feed them a diet with 30% fewer calories and see a lifespan extension of 40%. The monkey trials were set up in a similar way: researchers took the calorie content of a standard monkey diet, cut it by 30% (while continuing to supply all essential nutrients) and monitored whether those monkeys lived longer, healthier lives than those on the standard diet.

C 
In 2009, with the monkeys approaching old age, preliminary findings of the two trials started coming in. For the Wisconsin monkeys, calorie restriction seemed to be working. Compared to well-fed control animals, the lean monkeys were living longer and suffering less from the diseases of ageing: diabetes, heart disease, and brain diseases. However, in 2012 the NIA results emerged with a dramatically different conclusion: their monkeys were not living any longer than the controls, although they were healthier.

D 
The Wisconsin group’s latest results confirm that their calorie-restricted monkeys are living longer than the controls. They also offer a possible explanation of why the two groups’ findings don’t agree, and that lies in the treatment of the control group. The Wisconsin study began with monkeys in early adulthood. Initially, all the monkeys were allowed to eat as much as they liked. A few months into the trial, the monkeys were placed into one of two groups: the controls (who continued to be fed as much as they wished) and the calorie-restricted monkeys (who were given an individualised diet of 30% less than they were previously eating).

E 
The NIA study differed in two ways. First, the control group of monkeys were not allowed to eat as much as they wished. They were given a diet considered to represent a normal calorie count, while the calorie-restricted monkeys were fed 30% less than that. Second, whereas the Wisconsin monkeys were given highly processed food high in sucrose, making it easy to standardize, the NIA diet was based on whole grains, fish oils, and was very low in sugar. These different settings for the normal control diet may provide an explanation of why the two groups showed different results.

F 
The Wisconsin group may in effect have studied the effects of ‘overeating’. Their control animals weighed up to 10% more than average for their age and gender. Compared to them, the calorie-restricted animals not only suffered fewer diseases, they lived longer. Julie Mattison, head of the NIA study, observes that an overweight person who goes to a fast food restaurant every day will obviously benefit if their calories are cut back by 30%.

G 
The NIA study fed their control monkeys what they considered a ‘standard’ caloric intake and saw that longevity for monkeys that were fed 30% less was the same. But in Anderson’s view, the NIA control monkeys were not fed enough; the NIA was calorie restricting both groups of animals. Their older female control monkeys, for example, weighed nearly 20% less than the national average. Indeed, Anderson points out that several of the NIA control monkeys have lived past the age of 40, far exceeding the 27-year average lifespan for captive rhesus monkeys. ‘That’s the maximum lifespan ever detected for the species, so the idea that their intervention is doing nothing is really at odds with the data,’ says Anderson.

H 
However, neither group had the right notion of a standard diet according to Leonie Heilbronn, who researches calorie restriction and healthy ageing at the University of Adelaide in Australia. Heilbronn points out that the NIA controls were a very healthy set of monkeys and leaner than a control monkey should be. On the other hand, she notes, the Wisconsin controls were a little bigger than they had to be. On balance, Heilbronn agrees with the Wisconsin researcher’s argument. ‘I think these studies suggest calorie restriction definitely will increase lifespan,’ she says.

I 
Both studies agree that cutting calories is beneficial to health — in both cases the calorie-restricted monkeys had fewer diseases related to ageing. As to the question of whether calorie restriction extends lifespan in primates, Anderson and Mattison are currently working together to compare the two studies’ raw data. They plan to co-publish a joint analysis. The current data conflict will ultimately provide deeper insights into ageing, Anderson predicts. ‘The fact the two studies were set up differently, asking the same question in different ways — I think we will gain maximally from that.’',
    922,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0d5655f4-230c-49b1-b571-437e07a8c0b2',
    'reading',
    '576553d8-ed9b-48be-8ce6-89b4608954e9',
    14,
    'matching_info',
    'A reference to studies based on the same level of calorie reduction with different animals',
    '["","","","","","","","",""]'::jsonb,
    'B',
    NULL,
    1,
    '{"instruction":"<p>Reading Passage 2 has nine paragraphs,&nbsp;A–I.</p><p>Which paragraph contains the following information?</p><p>Choose the correct letter,&nbsp;A–I, in boxes&nbsp;14–19&nbsp;on your answer sheet.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '3fcee1b8-9fdf-4b55-9d44-f18d80315c25',
    'reading',
    '576553d8-ed9b-48be-8ce6-89b4608954e9',
    15,
    'matching_info',
    'A comment that some control monkeys in one study reached an older age than normal for animals of their kind',
    '["","","","","","","","",""]'::jsonb,
    'G',
    NULL,
    1,
    '{"instruction":"<p>Reading Passage 2 has nine paragraphs,&nbsp;A–I.</p><p>Which paragraph contains the following information?</p><p>Choose the correct letter,&nbsp;A–I, in boxes&nbsp;14–19&nbsp;on your answer sheet.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '796f74f0-e890-4f29-9e3b-3906d013bd53',
    'reading',
    '576553d8-ed9b-48be-8ce6-89b4608954e9',
    16,
    'matching_info',
    'Distinctions between the types of food in each study that may have led to a contrast in findings',
    '["","","","","","","","",""]'::jsonb,
    'E',
    NULL,
    1,
    '{"instruction":"<p>Reading Passage 2 has nine paragraphs,&nbsp;A–I.</p><p>Which paragraph contains the following information?</p><p>Choose the correct letter,&nbsp;A–I, in boxes&nbsp;14–19&nbsp;on your answer sheet.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'e028987b-b8fa-48ee-94a8-804c610fae4f',
    'reading',
    '576553d8-ed9b-48be-8ce6-89b4608954e9',
    17,
    'matching_info',
    'Examples of health problems which monkeys on calorie-restricted diets were less likely to get',
    '["","","","","","","","",""]'::jsonb,
    'C',
    NULL,
    1,
    '{"instruction":"<p>Reading Passage 2 has nine paragraphs,&nbsp;A–I.</p><p>Which paragraph contains the following information?</p><p>Choose the correct letter,&nbsp;A–I, in boxes&nbsp;14–19&nbsp;on your answer sheet.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd25b8e49-3c85-44eb-a355-c3102057ebd2',
    'reading',
    '576553d8-ed9b-48be-8ce6-89b4608954e9',
    18,
    'matching_info',
    'A researcher’s negative opinion of a calorie-restricted diet',
    '["","","","","","","","",""]'::jsonb,
    'A',
    NULL,
    1,
    '{"instruction":"<p>Reading Passage 2 has nine paragraphs,&nbsp;A–I.</p><p>Which paragraph contains the following information?</p><p>Choose the correct letter,&nbsp;A–I, in boxes&nbsp;14–19&nbsp;on your answer sheet.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '4ea4de2d-8aba-40b6-abca-0fd02edd5eae',
    'reading',
    '576553d8-ed9b-48be-8ce6-89b4608954e9',
    19,
    'matching_info',
    'A reference to the stage in the monkeys’ lives at which research commenced in one study',
    '["","","","","","","","",""]'::jsonb,
    'D',
    NULL,
    1,
    '{"instruction":"<p>Reading Passage 2 has nine paragraphs,&nbsp;A–I.</p><p>Which paragraph contains the following information?</p><p>Choose the correct letter,&nbsp;A–I, in boxes&nbsp;14–19&nbsp;on your answer sheet.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '67e44d10-89ba-4991-8018-9402c92c3fdf',
    'reading',
    '576553d8-ed9b-48be-8ce6-89b4608954e9',
    20,
    'matching_info',
    'It is good that the two studies took dissimilar approaches.',
    '["Rozalyn Anderson","Julie Mattison","Leonie Heilbronn"]'::jsonb,
    'A',
    NULL,
    1,
    '{"fromPassage":"\n","instruction":"<p><strong>Look at the following statements (Questions 20–23) and the list of researchers below.</strong></p><p><strong>Match each statement with the correct researcher,&nbsp;A, B&nbsp;or&nbsp;C.</strong></p><p><strong><em>NB:&nbsp;You may use any letter more than once.</em></strong></p>","context":"<h3><strong>List of Researchers</strong></h3><p><strong>A. Rozalyn Anderson</strong></p><p><strong>B. Julie Mattison</strong></p><p><strong>C. Leonie Heilbronn</strong></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '6e434190-f696-4fc5-bfbf-9448537f94a3',
    'reading',
    '576553d8-ed9b-48be-8ce6-89b4608954e9',
    21,
    'matching_info',
    'Neither study used diets that are typical for monkeys.',
    '["Rozalyn Anderson","Julie Mattison","Leonie Heilbronn"]'::jsonb,
    'C',
    NULL,
    1,
    '{"instruction":"<p><strong>Look at the following statements (Questions 20–23) and the list of researchers below.</strong></p><p><strong>Match each statement with the correct researcher,&nbsp;A, B&nbsp;or&nbsp;C.</strong></p><p><strong><em>NB:&nbsp;You may use any letter more than once.</em></strong></p>","context":"<h3><strong>List of Researchers</strong></h3><p><strong>A. Rozalyn Anderson</strong></p><p><strong>B. Julie Mattison</strong></p><p><strong>C. Leonie Heilbronn</strong></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'e71922af-1977-4acd-bc41-9b3d5e80db5b',
    'reading',
    '576553d8-ed9b-48be-8ce6-89b4608954e9',
    22,
    'matching_info',
    'Calorie restriction is a method of finding out about health issues connected with ageing.',
    '["Rozalyn Anderson","Julie Mattison","Leonie Heilbronn"]'::jsonb,
    'A',
    NULL,
    1,
    '{"instruction":"<p><strong>Look at the following statements (Questions 20–23) and the list of researchers below.</strong></p><p><strong>Match each statement with the correct researcher,&nbsp;A, B&nbsp;or&nbsp;C.</strong></p><p><strong><em>NB:&nbsp;You may use any letter more than once.</em></strong></p>","context":"<h3><strong>List of Researchers</strong></h3><p><strong>A. Rozalyn Anderson</strong></p><p><strong>B. Julie Mattison</strong></p><p><strong>C. Leonie Heilbronn</strong></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'c4d9c3f1-f034-42a8-af51-c35e2b271dc7',
    'reading',
    '576553d8-ed9b-48be-8ce6-89b4608954e9',
    23,
    'matching_info',
    'Calorie reduction will have a positive effect on people who have unhealthy diets.',
    '["Rozalyn Anderson","Julie Mattison","Leonie Heilbronn"]'::jsonb,
    'B',
    NULL,
    1,
    '{"instruction":"<p><strong>Look at the following statements (Questions 20–23) and the list of researchers below.</strong></p><p><strong>Match each statement with the correct researcher,&nbsp;A, B&nbsp;or&nbsp;C.</strong></p><p><strong><em>NB:&nbsp;You may use any letter more than once.</em></strong></p>","context":"<h3><strong>List of Researchers</strong></h3><p><strong>A. Rozalyn Anderson</strong></p><p><strong>B. Julie Mattison</strong></p><p><strong>C. Leonie Heilbronn</strong></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '4deff7ac-ad4b-4042-a7f7-91846d54bfe6',
    'reading',
    '576553d8-ed9b-48be-8ce6-89b4608954e9',
    24,
    'summary_completion',
    'Question 24',
    NULL,
    'ageing',
    NULL,
    1,
    '{"instruction":"<p><strong>Complete the summary below.</strong></p><p>Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the passage for each answer.</p><p><strong><em>Write your answers in boxes&nbsp;24–26&nbsp;on your answer sheet.</em></strong></p><p><br></p>","context":"<h3>Agreement between the two studies on calorie restriction in rhesus monkeys</h3><p>The two studies were in agreement that it is beneficial to cut calories, in terms of health. Monkeys whose calories were restricted suffered fewer diseases that are associated with the&nbsp;<strong> ______ </strong>&nbsp;&nbsp;process. Anderson and Mattison have undertaken research to determine if a calorie-restricted diet increases primates’&nbsp; ______ &nbsp;. Although there is a&nbsp; ______ &nbsp;&nbsp;between the two sets of data, Anderson believes they will help researchers reach a better understanding.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '76f25697-dc72-46f3-a608-e9d03830dd12',
    'reading',
    '576553d8-ed9b-48be-8ce6-89b4608954e9',
    25,
    'summary_completion',
    'Question 25',
    NULL,
    'lifespan',
    NULL,
    1,
    '{"instruction":"<p><strong>Complete the summary below.</strong></p><p>Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the passage for each answer.</p><p><strong><em>Write your answers in boxes&nbsp;24–26&nbsp;on your answer sheet.</em></strong></p><p><br></p>","context":"<h3>Agreement between the two studies on calorie restriction in rhesus monkeys</h3><p>The two studies were in agreement that it is beneficial to cut calories, in terms of health. Monkeys whose calories were restricted suffered fewer diseases that are associated with the&nbsp;<strong> ______ </strong>&nbsp;&nbsp;process. Anderson and Mattison have undertaken research to determine if a calorie-restricted diet increases primates’&nbsp; ______ &nbsp;. Although there is a&nbsp; ______ &nbsp;&nbsp;between the two sets of data, Anderson believes they will help researchers reach a better understanding.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '41f4f5ed-8bee-470a-9507-5ea20c2aca63',
    'reading',
    '576553d8-ed9b-48be-8ce6-89b4608954e9',
    26,
    'summary_completion',
    'Question 26',
    NULL,
    'conflict',
    NULL,
    1,
    '{"instruction":"<p><strong>Complete the summary below.</strong></p><p>Write&nbsp;<strong>ONE WORD ONLY</strong>&nbsp;from the passage for each answer.</p><p><strong><em>Write your answers in boxes&nbsp;24–26&nbsp;on your answer sheet.</em></strong></p><p><br></p>","context":"<h3>Agreement between the two studies on calorie restriction in rhesus monkeys</h3><p>The two studies were in agreement that it is beneficial to cut calories, in terms of health. Monkeys whose calories were restricted suffered fewer diseases that are associated with the&nbsp;<strong> ______ </strong>&nbsp;&nbsp;process. Anderson and Mattison have undertaken research to determine if a calorie-restricted diet increases primates’&nbsp; ______ &nbsp;. Although there is a&nbsp; ______ &nbsp;&nbsp;between the two sets of data, Anderson believes they will help researchers reach a better understanding.</p>"}'::jsonb
);

