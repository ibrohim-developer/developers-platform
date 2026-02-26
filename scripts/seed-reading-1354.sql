-- ============================================
-- Auto-generated seed for: Day 3: What makes a musical expert?
-- Source API ID: 1354
-- Generated: 2026-02-26T11:43:23.896Z
-- ============================================

-- ============================================
-- Day 3: What makes a musical expert? - Part 3: What makes a musical expert?
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    'ee1c39b2-644c-4c55-bd05-25a4110336fe',
    'Day 3: What makes a musical expert? - Part 3: What makes a musical expert?',
    'Cambridge IELTS - What makes a musical expert?',
    'hard',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    'd74f6565-a6eb-411d-9df0-ff67042d2dcc',
    'ee1c39b2-644c-4c55-bd05-25a4110336fe',
    1,
    'What makes a musical expert?',
    'How does someone become expert in music? And is it really possible to have a ‘talent’ for music?

Does that class of people acknowledged to be musical experts just have more of the same basic skills we are all endowed with, or do they have a set of abilities – or neural structures – that are totally different from those of the rest of us? Are high levels of musical achievement simply the result of training and practice, or are they based on innate brain structure – what we refer to as ‘talent’? Talent can be defined as something that originates in genetic structures and that is identifiable by trained people who can recognise its existence before a person has achieved exceptional levels of performance. The emphasis on early identification means that to investigate it, we study the development of skills in children.

It is evident that some children acquire skills more rapidly than others: the age of onset for walking and talking varies widely, even between children in the same household. There may be genetic factors at work, but these are closely linked with other factors – with a presumably environmental component – such as motivation and family dynamics. Similar factors can influence musical development and can mask the contribution of genetics to musical ability.

Brain studies, so far, haven’t been of much use in sorting out the issues. Gottfried Schlaug at Harvard collected brain scans of individuals with absolute pitch (‘AP’) and showed that a region in the brain called the planum temporale is larger in these people than in others. This suggests that the planum is involved in AP, but it’s not clear if it starts out larger in people who eventually acquire AP, or if the acquisition of AP makes the planum increase in size.

Results of research into those areas of the brain involved in skilled motor movement are more conclusive. Studies of violin players have shown that the region of the brain responsible for controlling the movement of the left hand (the hand that requires greater precision in violin playing) increases in size as a result of practice. We do not know yet if the propensity for increase pre-exists in some people, or not.

The evidence against talent comes from research on how much training the experts do. Like experts in mathematics, chess, or sports, experts in music require lengthy periods of instruction and practice. In several studies, the very best music students practiced two to three times as much as others. In another study, students were secretly divided into two groups based on the teachers’ perceptions of their talent, and they were given more challenging tasks and more opportunities; the highest performance ratings had far more to do with the extra instruction they had been assigned to, suggesting that practice does not merely correlate with achievement, but causes it.

Anders Ericsson, at Florida State University, approaches the topic of musical expertise as a general problem in cognitive psychology. He takes as a starting point the assumption that there are certain issues involved in becoming an expert at anything; that we can learn about musical expertise by studying expert chess players, athletes, artists, mathematicians, as well as the musicians themselves. The emerging picture from such studies is that ten thousand hours of practice is required to achieve the level of mastery associated with being a world-class expert – in anything. In study after study, of composers, ice skaters, concert pianists, chess players and master criminals, this number comes up again and again. Someone would do this amount of practice if they practiced, for example, roughly 20 hours a week for ten years. Of course, this does not address why some people do not seem to get anywhere when they practice, and why some people get more out of their practice sessions than others. But no-one has yet found a case in which true world-class expertise was accomplished in less time. It seems that it takes the brain this long to assimilate all that it needs to know to achieve true mastery.

The ten-thousand-hour theory is consistent with what we know about how the brain learns. Learning requires the assimilation and consolidation of information in neural tissue. The more experiences we have with something, the stronger the memory/learning trace for that information becomes. Although people differ in how long it takes them to consolidate information neurally, it remains true that increased practice leads to a greater number of neural traces, which create stronger memory representation.

The classic rebuttal to this theory goes something like this: ‘What about Mozart? I hear that he composed his first symphony at the age of four!’ First, there is a factual error here: Mozart did not write it until he was eight. Still, this is unusual, to say the least. However, this early work received little acclaim and was not performed very often. In fact, the only reason we know about it is because the child who wrote it grew up to become Mozart. And Mozart had an expert teacher in his father, who was renowned as a teacher of musicians all over Europe. We do not know how much Mozart practiced, but if he started at age two and worked thirty-two hours a week (quite possible, given that his father was a stern taskmaster) he would have made his ten thousand hours by the time he composed his first symphony. This does not mean that there are no genetic factors involved in Mozart’s greatness, but that inborn traits may not be the only cause.',
    925,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '5fc57b4f-293f-4322-b179-1f40b6dcf538',
    'reading',
    'd74f6565-a6eb-411d-9df0-ff67042d2dcc',
    27,
    'mcq_single',
    'Question 27',
    '["Who is aware of being set apart from other people","Whose brain structure is unlike that of other people","Who can perform extremely well in early childhood","Whose essential skills are more varied that those of ordinary people"]'::jsonb,
    'D',
    NULL,
    1,
    '{"instruction":"<p>Choose the correct answer.</p>","context":"<p>In the first paragraph, the writer suggests that a musician who is talented is someone …</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'be232e8c-cab0-4e87-8358-35d520a68d94',
    'reading',
    'd74f6565-a6eb-411d-9df0-ff67042d2dcc',
    31,
    'tfng',
    'Anders Ericsson’s work with cognitive psychology has influenced other researchers.',
    NULL,
    'NOT GIVEN',
    NULL,
    1,
    '{"instruction":"<p>Choose <strong>YES</strong> if the statement agrees with the information given in the text, choose <strong>NO</strong> if the statement contradicts the information, or choose <strong>NOT GIVEN</strong> if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '66a2db97-e7fb-4f38-ab94-125ef4120869',
    'reading',
    'd74f6565-a6eb-411d-9df0-ff67042d2dcc',
    32,
    'tfng',
    'Different areas of expertise seem to have one specific thing in common.',
    NULL,
    'YES',
    NULL,
    1,
    '{"instruction":"<p>Choose <strong>YES</strong> if the statement agrees with the information given in the text, choose <strong>NO</strong> if the statement contradicts the information, or choose <strong>NOT GIVEN</strong> if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '6fe025f5-be17-453f-b97e-6bdb6d51ad81',
    'reading',
    'd74f6565-a6eb-411d-9df0-ff67042d2dcc',
    33,
    'tfng',
    'In order to be useful, practice must be carried out regularly every day.',
    NULL,
    'NOT GIVEN',
    NULL,
    1,
    '{"instruction":"<p>Choose <strong>YES</strong> if the statement agrees with the information given in the text, choose <strong>NO</strong> if the statement contradicts the information, or choose <strong>NOT GIVEN</strong> if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'a0b1d089-653b-406b-81bd-92fd4f901bf2',
    'reading',
    'd74f6565-a6eb-411d-9df0-ff67042d2dcc',
    34,
    'tfng',
    'Anyone who practices for long enough can reach the level of a world-class expert.',
    NULL,
    'NO',
    NULL,
    1,
    '{"instruction":"<p>Choose <strong>YES</strong> if the statement agrees with the information given in the text, choose <strong>NO</strong> if the statement contradicts the information, or choose <strong>NOT GIVEN</strong> if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'dd8a4f15-3cb3-4ca6-8868-40d8f4fdd026',
    'reading',
    'd74f6565-a6eb-411d-9df0-ff67042d2dcc',
    35,
    'tfng',
    'Occasionally, someone can become an expert at global level with fewer than 10,000 hours’ practice.',
    NULL,
    'NO',
    NULL,
    1,
    '{"instruction":"<p>Choose <strong>YES</strong> if the statement agrees with the information given in the text, choose <strong>NO</strong> if the statement contradicts the information, or choose <strong>NOT GIVEN</strong> if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '2b3fea2a-09f6-4be3-9e36-e09203648342',
    'reading',
    'd74f6565-a6eb-411d-9df0-ff67042d2dcc',
    36,
    'tfng',
    'Existing knowledge of learning and cognitive skills supports the importance of practice.',
    NULL,
    'YES',
    NULL,
    1,
    '{"instruction":"<p>Choose <strong>YES</strong> if the statement agrees with the information given in the text, choose <strong>NO</strong> if the statement contradicts the information, or choose <strong>NOT GIVEN</strong> if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '1e92da66-250e-45a1-bef0-b00ff4179e2d',
    'reading',
    'd74f6565-a6eb-411d-9df0-ff67042d2dcc',
    37,
    'summary_completion',
    'Question 37',
    '["popular","artistic","completed","eight","tuition","encouragement","inherited","four","practice","two"]'::jsonb,
    'tuition',
    NULL,
    1,
    '{"instruction":"<p>Complete the summary using the list of words. Choose the correct answer and move it into the gap.</p>","context":"<h3><strong>Mozart</strong></h3><p>The case of Mozart could be quoted as evidence against the 10,000-hour-practice theory. However, the writer points out that the young Mozart received a lot of  ______ from his father, and that the symphony he wrote at the age of  ______ was not  ______ and may be only of academic interest. The case therefore supports the view that expertise is not solely the result of  ______ characteristics.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'f8d4aa0d-9fba-4c88-b894-592f9597579f',
    'reading',
    'd74f6565-a6eb-411d-9df0-ff67042d2dcc',
    38,
    'summary_completion',
    'Question 38',
    '["popular","artistic","completed","eight","tuition","encouragement","inherited","four","practice","two"]'::jsonb,
    'eight',
    NULL,
    1,
    '{"instruction":"<p>Complete the summary using the list of words. Choose the correct answer and move it into the gap.</p>","context":"<h3><strong>Mozart</strong></h3><p>The case of Mozart could be quoted as evidence against the 10,000-hour-practice theory. However, the writer points out that the young Mozart received a lot of  ______ from his father, and that the symphony he wrote at the age of  ______ was not  ______ and may be only of academic interest. The case therefore supports the view that expertise is not solely the result of  ______ characteristics.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '18a0a551-24b4-4c47-b768-ed4c37fd7a3a',
    'reading',
    'd74f6565-a6eb-411d-9df0-ff67042d2dcc',
    39,
    'summary_completion',
    'Question 39',
    '["popular","artistic","completed","eight","tuition","encouragement","inherited","four","practice","two"]'::jsonb,
    'popular',
    NULL,
    1,
    '{"instruction":"<p>Complete the summary using the list of words. Choose the correct answer and move it into the gap.</p>","context":"<h3><strong>Mozart</strong></h3><p>The case of Mozart could be quoted as evidence against the 10,000-hour-practice theory. However, the writer points out that the young Mozart received a lot of  ______ from his father, and that the symphony he wrote at the age of  ______ was not  ______ and may be only of academic interest. The case therefore supports the view that expertise is not solely the result of  ______ characteristics.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '663d64c7-ea02-4488-ab39-ca87b563ec48',
    'reading',
    'd74f6565-a6eb-411d-9df0-ff67042d2dcc',
    40,
    'summary_completion',
    'Question 40',
    '["popular","artistic","completed","eight","tuition","encouragement","inherited","four","practice","two"]'::jsonb,
    'inherited',
    NULL,
    1,
    '{"instruction":"<p>Complete the summary using the list of words. Choose the correct answer and move it into the gap.</p>","context":"<h3><strong>Mozart</strong></h3><p>The case of Mozart could be quoted as evidence against the 10,000-hour-practice theory. However, the writer points out that the young Mozart received a lot of  ______ from his father, and that the symphony he wrote at the age of  ______ was not  ______ and may be only of academic interest. The case therefore supports the view that expertise is not solely the result of  ______ characteristics.</p>"}'::jsonb
);

