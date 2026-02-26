-- ============================================
-- Auto-generated seed for: Day 12: Jean Piaget 1896 – 1980
-- Source API ID: 1796
-- Generated: 2026-02-26T11:43:59.550Z
-- ============================================

-- ============================================
-- Day 12: Jean Piaget 1896 – 1980 - Part 3: Jean Piaget 1896 – 1980
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '49df71a9-274a-4d33-89c4-b286e3a6424a',
    'Day 12: Jean Piaget 1896 – 1980 - Part 3: Jean Piaget 1896 – 1980',
    'Cambridge IELTS - Jean Piaget 1896 – 1980',
    'hard',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    'a5f17eca-0896-41be-8e5e-f108f53eab6a',
    '49df71a9-274a-4d33-89c4-b286e3a6424a',
    1,
    'Jean Piaget 1896 – 1980',
    'Seymour Papert looks at the work of the pioneering Swiss philosopher and psychologist

Jean Piaget spent much of his professional life listening to children, watching children and poring over reports of researchers around the world who were doing the same. He found, to put it most succinctly, that children don''t think like grown-ups. After thousands of interactions with young people often barely old enough to talk, Piaget began to suspect that behind their cute and seemingly irrational utterances were thought processes that had their own kind of order and their own special logic. Einstein called it a discovery ''so simple that only a genius could have thought of it.''

Although not an educational reformer, Piaget championed a way of thinking about children that provided the foundation for today''s education-reform movements. It was a shift comparable to the way modern anthropology displaced stories of primitive tribes being ''noble savages'' and ''cannibals''. One might say that Piaget was the first to take children''s thinking seriously.

He has been revered by generations of teachers inspired by the belief that children are not empty vessels to be filled with knowledge (as traditional pedagogical theory had it) but active builders of knowledge—little scientists who are constantly creating and testing their own hypotheses about the world. And though he may not be as famous as Sigmund Freud or even B.F. Skinner, his influence on psychology may be longer lasting.

In 1920, while doing research in a child-psychology laboratory in Paris, Piaget noticed that children of the same age made similar errors on intelligence tests. Fascinated by their reasoning processes, he began to suspect that the key to human knowledge might be discovered by observing how the child''s mind develops. On his return to Switzerland he began watching children play, scrupulously recording their words and actions as their minds raced to find reasons for why things are the way they are. In one of his most famous experiments, Piaget asked children, ''What makes the wind?'' A typical dialogue would be:
Piaget: What makes the wind?
Julia: The trees.
Piaget: How do you know?
Julia: I saw them waving their arms.
Piaget: How does that make the wind?
Julia: (waving her hand in front of his face): Like this. Only they are bigger. And there are lots of trees.

Piaget recognized that five-year-old Julia''s beliefs, while not correct by any adult criterion, are not ''incorrect'' either. They are entirely sensible and coherent within the framework of the child''s way of knowing. Classifying them as ''true'' or ''false'' misses the point and shows a lack of respect for the child. What Piaget was after was a theory that the wind dialogue demonstrated coherence, ingenuity and the practice of a kind of explanatory principle (in this case by referring to body actions) that stands young children in very good stead when they don''t know enough or don''t have enough skill to handle the kind of explanation that grown-ups prefer.

Piaget was not an educator and never laid down rules about how to intervene in such situations. But his work strongly suggests that the automatic reaction of putting the child right may well be counter-productive. If their theories are always greeted by ''Nice try, but this is how it really is...'' they might give up after a while on making theories. As Piaget put it, ''children have real understanding only of that which they invent themselves, and each time that we try to teach them something too quickly, we keep them from inventing it themselves.''

Disciples of Piaget have a tolerance for—indeed a fascination with—children''s primitive laws of physics: that things disappear when they are out of sight; that the moon and the sun follow you around; that big things float and small things sink. Einstein was intrigued by Piaget''s findings, especially by the idea that seven-year-olds insist that going faster can take more time—perhaps because this, like Einstein''s own theories of relativity, runs so contrary to common sense.

Although every teacher in training still memorizes Piaget''s successive stages of childhood development, the greater part of Piaget''s work is less well known, perhaps because schools of education regard it as ''too deep'' for teachers. Piaget never thought of himself as a child psychologist. His real interest was epistemology—the theory of knowledge—which, like physics, was considered a branch of philosophy until Piaget came along and made it a science.

Through epistemology, Piaget explored multiple ways of knowing. He acknowledged them and examined them non-judgementally, yet with a philosopher''s analytic rigour. Since Piaget, the territory has been widely colonized by those who write about women''s ways of knowing, Afrocentric ways of knowing, even the computer''s ways of knowing. Indeed, artificial intelligence and the information-processing model of the mind owe more to Piaget than its proponents may realize.

The core of Piaget''s work is his belief that looking carefully at how knowledge develops in children will elucidate the nature of knowledge in general. Whether this has in fact led to deeper understanding remains, like everything about Piaget, controversial. In the past decade, Piaget has been vigorously challenged by the current fashion of viewing knowledge as an intrinsic property of the brain. Ingenious experiments have demonstrated that newborn infants already have some of the knowledge that Piaget believed children constructed. But for those, like me, who still see Piaget as the giant in the field of cognitive theory, the difference between what the baby brings and what the adult has is so immense that the new discoveries do not significantly reduce the gap, but only increase the mystery.',
    923,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'b28fe825-1537-48f2-814b-f08021775506',
    'reading',
    'a5f17eca-0896-41be-8e5e-f108f53eab6a',
    27,
    'mcq_single',
    'Question 27',
    '["the universality of Piaget''s insights into the workings of the mind.","the similarity between children''s thought processing in different cultures.","how Piaget''s work represents a crucial turning-point in our approach to education.","how Piaget''s work has aided our understanding of man''s evolution from primitive origins."]'::jsonb,
    'C',
    'The anthropology example shows a major shift in how we view children’s thinking—just like anthropology changed how we viewed primitive tribes. This illustrates Piaget’s role in transforming modern approaches to children and education.',
    1,
    '{"explanation":"The anthropology example shows a major shift in how we view children’s thinking—just like anthropology changed how we viewed primitive tribes. This illustrates Piaget’s role in transforming modern approaches to children and education.","fromPassage":"Although not an educational reformer, Piaget championed a way of thinking about children that provided the foundation for today''s education-reform movements. It was a shift comparable to the way modern anthropology displaced stories of primitive tribes being ''noble savages'' and ''cannibals''.","instruction":"<p>Choose the correct answer.</p>","context":"<p>In the second paragraph the writer mentions the example of modern anthropology to</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'ce128e9f-e624-4dcd-8cb6-24f23eb66834',
    'reading',
    'a5f17eca-0896-41be-8e5e-f108f53eab6a',
    28,
    'mcq_single',
    'Question 28',
    '["The factual accuracy of what children say is of minor significance.","Children want to learn about scientific principles.","Children''s reasoning processes can be amusing to adults.","Children often pretend that they know the answers to questions."]'::jsonb,
    'A',
    'The writer explains that judging children’s answers as true or false “misses the point”—accuracy is not the main issue. What matters is the logic behind their thinking.',
    1,
    '{"explanation":"The writer explains that judging children’s answers as true or false “misses the point”—accuracy is not the main issue. What matters is the logic behind their thinking.","fromPassage":"Piaget recognized that five-year-old Julia''s beliefs, while not correct by any adult criterion, are not ''incorrect'' either.","instruction":"<p>Choose the correct answer.</p>","context":"<p>According to the writer, what point is illustrated by the dialogue about the wind?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '473bfb4e-ec3f-4dd5-b3b2-436f67e5e598',
    'reading',
    'a5f17eca-0896-41be-8e5e-f108f53eab6a',
    29,
    'mcq_single',
    'Question 29',
    '[" preventing children from making false assumptions.","giving children honest feedback on their hypotheses.","showing children how to formulate their own ideas about the world.","maintaining children''s confidence in their ability to interpret the world."]'::jsonb,
    'D',
    'Piaget warned adults not to quickly correct children because doing so may discourage them. He wanted to maintain children’s confidence in developing their own understanding.',
    1,
    '{"explanation":"Piaget warned adults not to quickly correct children because doing so may discourage them. He wanted to maintain children’s confidence in developing their own understanding.","fromPassage":"If their theories are always greeted by ''Nice try, but this is how it really is...'' they might give up after a while on making theories.","instruction":"<p>Choose the correct answer. </p>","context":"<p>Piaget believed in the importance of</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0ce81e2e-70d9-48e9-9bd0-ee3c5ec48c06',
    'reading',
    'a5f17eca-0896-41be-8e5e-f108f53eab6a',
    30,
    'mcq_single',
    'Question 30',
    '["Children''s sense of their surroundings changes as they get older.","Children are able to grasp certain complex ideas as well as adults are.","Even apparently irrational ideas can be worthy of interest."," Sometimes the simplest explanations are the best."]'::jsonb,
    'C',
    'The writer says Piaget’s followers value children’s irrational ideas—like thinking the sun follows them—showing that these ideas have meaning and are worthy of study.',
    1,
    '{"explanation":"The writer says Piaget’s followers value children’s irrational ideas—like thinking the sun follows them—showing that these ideas have meaning and are worthy of study.","fromPassage":"Disciples of Piaget have a tolerance for—indeed a fascination with—children''s primitive laws of physics: that things disappear when they are out of sight; that the moon and the sun follow you around; that big things float and small things sink.","instruction":"<p>Choose the correct answer.</p>","context":"<p>&nbsp;What does the writer suggest in the seventh paragraph?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '4ece5a15-d8f4-4450-8b23-863f03b39d97',
    'reading',
    'a5f17eca-0896-41be-8e5e-f108f53eab6a',
    31,
    'mcq_single',
    'Question 31',
    '["outline Piaget''s contribution to a range of scientific fields.","summarize how education has benefited from Piaget''s findings.","discuss Piaget''s role in the development of 20th-century psychology.","express doubts about a number of Piaget''s theories."]'::jsonb,
    'C',
    'The passage focuses on Piaget’s influence on psychology as a field—his theories, his methods, and how his work reshaped cognitive science.',
    1,
    '{"explanation":"The passage focuses on Piaget’s influence on psychology as a field—his theories, his methods, and how his work reshaped cognitive science.","fromPassage":"And though he may not be as famous as Sigmund Freud or even B.F. Skinner, his influence on psychology may be longer lasting.","instruction":"<p>Choose the correct answer. </p>","context":"<p>The writer’s main purpose is to</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'b61ca262-d730-49b3-8281-6b06ed7bd3ed',
    'reading',
    'a5f17eca-0896-41be-8e5e-f108f53eab6a',
    32,
    'summary_completion',
    'Question 32',
    '["theories","brain","simple","teachers","psychology","logical ","thought","philosophers"]'::jsonb,
    'logical',
    'Piaget believed children’s thinking had its own structure and logic.',
    1,
    '{"explanation":"Piaget believed children’s thinking had its own structure and logic.","fromPassage":"Piaget began to suspect that behind their cute and seemingly irrational utterances were thought processes that had their own kind of order and their own special logic.","instruction":"<p>Complete the summary using the list of words. Choose the correct answer and move it into the gap.</p>","context":"<h3 class=\"ql-align-center\">Piaget''s Theories on Children''s Cognitive Development</h3><p>Piaget maintained that children''s mental processes were far more&nbsp; ______ &nbsp;than they might appear. He encouraged the view that a child was not a ''blank slate'' waiting to be filled with information, but rather a systematic builder of knowledge who regularly tries out his or her own&nbsp; ______ &nbsp;about the world. Piaget''s impact on the area of&nbsp; ______ &nbsp;could well outlast that of more celebrated pioneers of this discipline. Despite doubts cast over his ideas by the current view associating knowledge exclusively with the ______ , the effects of his work are still strong today. His principles are still widely used in the professional development of&nbsp; ______ .</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'f539ae11-675a-45f9-8a8f-dcbf65c084f2',
    'reading',
    'a5f17eca-0896-41be-8e5e-f108f53eab6a',
    33,
    'summary_completion',
    'Question 33',
    '["theories","brain","simple","teachers","psychology","logical ","thought","philosophers"]'::jsonb,
    'theories',
    'Piaget saw children as “little scientists” forming and testing their own theories.',
    1,
    '{"explanation":"Piaget saw children as “little scientists” forming and testing their own theories.","fromPassage":"He has been revered by generations of teachers inspired by the belief that children are not empty vessels to be filled with knowledge (as traditional pedagogical theory had it) but active builders of knowledge","instruction":"<p>Complete the summary using the list of words. Choose the correct answer and move it into the gap.</p>","context":"<h3 class=\"ql-align-center\">Piaget''s Theories on Children''s Cognitive Development</h3><p>Piaget maintained that children''s mental processes were far more&nbsp; ______ &nbsp;than they might appear. He encouraged the view that a child was not a ''blank slate'' waiting to be filled with information, but rather a systematic builder of knowledge who regularly tries out his or her own&nbsp; ______ &nbsp;about the world. Piaget''s impact on the area of&nbsp; ______ &nbsp;could well outlast that of more celebrated pioneers of this discipline. Despite doubts cast over his ideas by the current view associating knowledge exclusively with the ______ , the effects of his work are still strong today. His principles are still widely used in the professional development of&nbsp; ______ .</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd266695d-e379-40ce-adff-195674c740f5',
    'reading',
    'a5f17eca-0896-41be-8e5e-f108f53eab6a',
    34,
    'summary_completion',
    'Question 34',
    '["theories","brain","simple","teachers","psychology","logical ","thought","philosophers"]'::jsonb,
    'psychology',
    'The passage highlights Piaget’s lasting impact on psychology.',
    1,
    '{"explanation":"The passage highlights Piaget’s lasting impact on psychology.","fromPassage":"And though he may not be as famous as Sigmund Freud or even B.F. Skinner, his influence on psychology may be longer lasting.","instruction":"<p>Complete the summary using the list of words. Choose the correct answer and move it into the gap.</p>","context":"<h3 class=\"ql-align-center\">Piaget''s Theories on Children''s Cognitive Development</h3><p>Piaget maintained that children''s mental processes were far more&nbsp; ______ &nbsp;than they might appear. He encouraged the view that a child was not a ''blank slate'' waiting to be filled with information, but rather a systematic builder of knowledge who regularly tries out his or her own&nbsp; ______ &nbsp;about the world. Piaget''s impact on the area of&nbsp; ______ &nbsp;could well outlast that of more celebrated pioneers of this discipline. Despite doubts cast over his ideas by the current view associating knowledge exclusively with the ______ , the effects of his work are still strong today. His principles are still widely used in the professional development of&nbsp; ______ .</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '4d03a949-f397-4805-ab88-3ca9aace798f',
    'reading',
    'a5f17eca-0896-41be-8e5e-f108f53eab6a',
    35,
    'summary_completion',
    'Question 35',
    '["theories","brain","simple","teachers","psychology","logical ","thought","philosophers"]'::jsonb,
    'brain',
    'The passage explains that some recent scientists consider knowledge to be something the brain inherently contains.',
    1,
    '{"explanation":"The passage explains that some recent scientists consider knowledge to be something the brain inherently contains.","fromPassage":"In the past decade, Piaget has been vigorously challenged by the current fashion of viewing knowledge as an intrinsic property of the brain.","instruction":"<p>Complete the summary using the list of words. Choose the correct answer and move it into the gap.</p>","context":"<h3 class=\"ql-align-center\">Piaget''s Theories on Children''s Cognitive Development</h3><p>Piaget maintained that children''s mental processes were far more&nbsp; ______ &nbsp;than they might appear. He encouraged the view that a child was not a ''blank slate'' waiting to be filled with information, but rather a systematic builder of knowledge who regularly tries out his or her own&nbsp; ______ &nbsp;about the world. Piaget''s impact on the area of&nbsp; ______ &nbsp;could well outlast that of more celebrated pioneers of this discipline. Despite doubts cast over his ideas by the current view associating knowledge exclusively with the ______ , the effects of his work are still strong today. His principles are still widely used in the professional development of&nbsp; ______ .</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '6a1f12bf-1109-43de-90f8-f2682bb7e12d',
    'reading',
    'a5f17eca-0896-41be-8e5e-f108f53eab6a',
    36,
    'summary_completion',
    'Question 36',
    '["theories","brain","simple","teachers","psychology","logical ","thought","philosophers"]'::jsonb,
    'teachers',
    'Piaget’s developmental stages are still taught to educators today.',
    1,
    '{"explanation":"Piaget’s developmental stages are still taught to educators today.","fromPassage":"Although every teacher in training still memorizes Piaget''s successive stages of childhood development, the greater part of Piaget''s work is less well known","instruction":"<p>Complete the summary using the list of words. Choose the correct answer and move it into the gap.</p>","context":"<h3 class=\"ql-align-center\">Piaget''s Theories on Children''s Cognitive Development</h3><p>Piaget maintained that children''s mental processes were far more&nbsp; ______ &nbsp;than they might appear. He encouraged the view that a child was not a ''blank slate'' waiting to be filled with information, but rather a systematic builder of knowledge who regularly tries out his or her own&nbsp; ______ &nbsp;about the world. Piaget''s impact on the area of&nbsp; ______ &nbsp;could well outlast that of more celebrated pioneers of this discipline. Despite doubts cast over his ideas by the current view associating knowledge exclusively with the ______ , the effects of his work are still strong today. His principles are still widely used in the professional development of&nbsp; ______ .</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '85c1c31a-39b5-4f94-820f-1d63abcd2c63',
    'reading',
    'a5f17eca-0896-41be-8e5e-f108f53eab6a',
    37,
    'tfng',
    'Piaget''s early work in Paris involved innovative research techniques.',
    NULL,
    'NOT GIVEN',
    'The text describes Piaget’s early work in Paris but does NOT state whether his research techniques were innovative.',
    1,
    '{"explanation":"The text describes Piaget’s early work in Paris but does NOT state whether his research techniques were innovative.","fromPassage":"In 1920, while doing research in a child-psychology laboratory in Paris, Piaget noticed that children of the same age made similar errors on intelligence tests.","instruction":"<p>Choose&nbsp;<strong>YES</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>NO</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT</strong> <strong>GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '104c4fbe-6f2f-4732-bbd8-130b599c93a6',
    'reading',
    'a5f17eca-0896-41be-8e5e-f108f53eab6a',
    38,
    'tfng',
    'Piaget gave clear guidelines as to how adults should give information to children.',
    NULL,
    'NO',
    'The text explicitly says Piaget never gave rules about how adults should instruct children.',
    1,
    '{"explanation":"The text explicitly says Piaget never gave rules about how adults should instruct children.","fromPassage":"Piaget was not an educator and never laid down rules about how to intervene in such situations.","instruction":"<p>Choose&nbsp;<strong>YES</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>NO</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT</strong> <strong>GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '9ea7e3d7-7ade-413f-a7c9-24c7c6d3ff4f',
    'reading',
    'a5f17eca-0896-41be-8e5e-f108f53eab6a',
    39,
    'tfng',
    'Piaget made a significant contribution to the field of epistemology.',
    NULL,
    'YES',
    'Piaget treated epistemology as a science and contributed to new ways of examining knowledge.',
    1,
    '{"explanation":"Piaget treated epistemology as a science and contributed to new ways of examining knowledge.","fromPassage":"His real interest was epistemology—the theory of knowledge—which, like physics, was considered a branch of philosophy until Piaget came along and made it a science.","instruction":"<p>Choose&nbsp;<strong>YES</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>NO</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT</strong> <strong>GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'c177d7e6-b335-420d-ad2e-97a63b89281e',
    'reading',
    'a5f17eca-0896-41be-8e5e-f108f53eab6a',
    40,
    'tfng',
    'We still have much to learn about the nature of knowledge.',
    NULL,
    'YES',
    'The writer ends by saying the difference between baby and adult knowledge is so vast that new discoveries “increase the mystery.” This shows we still have much to learn.',
    1,
    '{"explanation":"The writer ends by saying the difference between baby and adult knowledge is so vast that new discoveries “increase the mystery.” This shows we still have much to learn.","fromPassage":"But for those, like me, who still see Piaget as the giant in the field of cognitive theory, the difference between what the baby brings and what the adult has is so immense that the new discoveries do not significantly reduce the gap, but only increase the mystery.","instruction":"<p>Choose&nbsp;<strong>YES</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>NO</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT</strong> <strong>GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

