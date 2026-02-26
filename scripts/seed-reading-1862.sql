-- ============================================
-- Auto-generated seed for: Day 11: Playing Soccer
-- Source API ID: 1862
-- Generated: 2026-02-26T11:44:17.965Z
-- ============================================

-- ============================================
-- Day 11: Playing Soccer - Part 2: Playing Soccer
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    'a2d41016-e281-485f-9782-772742343b00',
    'Day 11: Playing Soccer - Part 2: Playing Soccer',
    'Cambridge IELTS - Playing Soccer',
    'medium',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    'd23b4317-9c44-474c-86ef-b78178a7fac7',
    'a2d41016-e281-485f-9782-772742343b00',
    1,
    'Playing Soccer',
    'A
Street soccer, as its name implies, is an informal variation of the sport, often played on the street, particularly in urban areas. There are many reasons for the widespread popularity of street soccer. Unlike youth soccer, its more formally organized counterpart, no large space is needed, and goal posts, corner markers, and marked lines, associated with the formal game, are typically absent, as are game officials or referees. Another attraction of street soccer is that it is played frequently and competitively, but does not necessarily require standard 11-a-side teams or fixed playing positions. Unlike in youth soccer, inexperienced street soccer players rarely learn from repetitive technical and tactical drills. Instead, they learn from their poor performance in competition, unconscious of the skills they are nonetheless developing, and without older adults or coaches present. Players learn without effort through playing the game, and soon attain an almost natural feeling for the sport.

B
However, there are lots of cities in the world today where conditions are such that street soccer is no longer possible. Congested traffic now dominates where games were once played. Parks and open fields are used as hangouts for older teenagers with other interests. Add to this the requirement in many localities for official permits to use public spaces and the managed schedules that many young people have today, and spontaneous play of any kind is hard to imagine.

C
In spite of all these obstacles, which are probably solvable in most instances, there is another sociological explanation of why in many places street soccer doesn''t enjoy the same popularity it once did. In his book How Soccer Explains the World, US writer Franklin Foer observes: But for all the talk of freedom, the 1960s parenting style had a far less relaxed side too. Like the 1960s consumer movement which brought seat belts and airbags to cars, the (youth) soccer movement felt like it could create a set of ... regulations that would protect both the child''s body and mind from damage. Soccer leagues like the one I played in as a child handed out ''participation'' prizes to every player, no matter how few games his (or her) team won.... Where most of the world accepts the practice of using your head to hit the ball as an essential element of the game, some (youth) soccer parents have worried over the potential for injury to the brain. An entire industry grew up to manufacture protective headgear.... Even though very little medical evidence supports this fear, some youth leagues prohibited heading the ball altogether.

D
A growing body of people don''t believe street soccer involves a legitimate educational method. They argue that children need to be taught by experts. Youth soccer instruction now begins with four-year-olds, so that they will have an advantage as six-year-olds. This need to get ahead brings with it a fear of falling behind that only expert instruction can prevent. This type of instruction leaves no room for the trial and error approach of street soccer.

E
One of the basic ideas of street soccer is that young players are assigned a particular role by a better player and are expected to play for the good of the team. Such an assignment runs counter to the idea of youth soccer that every child needs to learn every position and will benefit from doing so. In street soccer, you fill the role that you are best suited to at a particular time. While this role assignment can change from game to game, the purpose is always the same: to get the best out of each individual at any given moment.

F
In street soccer, children have to learn patience, to wait their turn, to realize that they are not entitled to make decisions, or even be listened to simply because they show up. Positions of responsibility are earned through competition within the team. Younger players in street soccer must wait to attain those positions. In youth soccer, however, with its overly democratic values, youngsters are guaranteed their time in the spotlight. Whether it''s their turn to be captain, to play a central position or to take a crucial shot, youth soccer players come to believe that hard work and patience aren''t really necessary.

G
Not only does every youth soccer player get a chance, it is assumed that each individual has played well. ''Everyone''s a winner; no one''s a loser'' is a guiding principle of youth soccer. This ensures each individual goes away positive about themselves. No one can leave a game or a practice feeling bad. But, if there really are no losers, then why try at all? Since giving less than your best receives the same reward as giving your best why go to any extra effort? In street soccer, every game results in a winner and a loser and everyone knows who is who. Losing a game is a common experience and players learn early on how to handle this. As a result, unlike most youth soccer players, they acquire resilience. A further difference between these two strands of soccer is that in street soccer a formal record is not kept. You can lose one day and win the next. The results are only temporary and are forgotten within minutes of the end of the match. But in organized youth soccer, the position each person plays and the results are formally noted and maintained throughout a season.',
    905,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0665ac1b-d53a-4930-b7f3-9a8b0a2c1045',
    'reading',
    'd23b4317-9c44-474c-86ef-b78178a7fac7',
    14,
    'matching_info',
    'A contrast between the ways young players gain experience of playing different positions',
    '["","","","","","",""]'::jsonb,
    'E',
    'Section E compares how street soccer assigns roles based on suitability, while youth soccer requires every child to learn every position. This is a direct contrast in how young players gain experience of different positions.',
    1,
    '{"explanation":"Section E compares how street soccer assigns roles based on suitability, while youth soccer requires every child to learn every position. This is a direct contrast in how young players gain experience of different positions.","fromPassage":"Such an assignment runs counter to the idea of youth soccer that every child needs to learn every position and will benefit from doing so.","instruction":"<p>Reading Passage 2 has seven sections,<strong> A-G.</strong> Which section contains the following information?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '50c2060a-0215-4d80-9373-040f672a7a31',
    'reading',
    'd23b4317-9c44-474c-86ef-b78178a7fac7',
    15,
    'matching_info',
    'Examples outside sport of greater emphasis on individual safety',
    '["","","","","","",""]'::jsonb,
    'C',
    'Section C gives examples outside sport (seat belts and airbags) to show a broader emphasis on child safety.',
    1,
    '{"explanation":"Section C gives examples outside sport (seat belts and airbags) to show a broader emphasis on child safety.","fromPassage":"Like the 1960s consumer movement which brought seat belts and airbags to cars, the (youth) soccer movement felt like it could create a set of ... regulations that would protect both the child''s body and mind from damage.","instruction":"<p>Reading Passage 2 has seven sections,<strong> A-G.</strong> Which section contains the following information?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '08725ff6-960c-4980-942d-790a69fa0f44',
    'reading',
    'd23b4317-9c44-474c-86ef-b78178a7fac7',
    16,
    'matching_info',
    'A description of methods of selection for leadership on soccer teams',
    '["","","","","","",""]'::jsonb,
    'F',
    'Section F explains that leadership or responsibility positions are earned through competition, not given automatically.',
    1,
    '{"explanation":"Section F explains that leadership or responsibility positions are earned through competition, not given automatically.","fromPassage":"Positions of responsibility are earned through competition within the team.","instruction":"<p>Reading Passage 2 has seven sections,<strong> A-G.</strong> Which section contains the following information?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '45b07bf5-0a3c-49bb-bdd9-c5b4c9f63db6',
    'reading',
    'd23b4317-9c44-474c-86ef-b78178a7fac7',
    17,
    'matching_info',
    'Details of urban changes that discourage street soccer',
    '["","","","","","",""]'::jsonb,
    'B',
    'Section B lists specific urban changes—traffic, new uses of parks, permit requirements—that make street soccer difficult today.',
    1,
    '{"explanation":"Section B lists specific urban changes—traffic, new uses of parks, permit requirements—that make street soccer difficult today.","fromPassage":"Parks and open fields are used as hangouts for older teenagers with other interests.","instruction":"<p>Reading Passage 2 has seven sections,<strong> A-G.</strong> Which section contains the following information?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'fa25f1b8-21c4-471c-873c-5e3ae3435e88',
    'reading',
    'd23b4317-9c44-474c-86ef-b78178a7fac7',
    18,
    'matching_info',
    'A mention of the lesson that failure teaches street soccer players',
    '["","","","","","",""]'::jsonb,
    'G',
    'Section G explains that losing teaches resilience — this is the lesson failure provides in street soccer.',
    1,
    '{"explanation":"Section G explains that losing teaches resilience — this is the lesson failure provides in street soccer.","fromPassage":"Losing a game is a common experience and players learn early on how to handle this.","instruction":"<p>Reading Passage 2 has seven sections,<strong> A-G.</strong> Which section contains the following information?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '2134e5fd-0dcd-486b-996d-3a5bdce829ad',
    'reading',
    'd23b4317-9c44-474c-86ef-b78178a7fac7',
    19,
    'matching_info',
    'An explanation of why youth soccer emphasises the need for coaches',
    '["","","","","","",""]'::jsonb,
    'D',
    'Section D explains that youth soccer emphasises the need for coaches because parents fear their children will fall behind without expert instruction.',
    1,
    '{"explanation":"Section D explains that youth soccer emphasises the need for coaches because parents fear their children will fall behind without expert instruction.","fromPassage":"This need to get ahead brings with it a fear of falling behind that only expert instruction can prevent.","instruction":"<p>Reading Passage 2 has seven sections,<strong> A-G.</strong> Which section contains the following information?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'f9a19480-0ece-4c90-8637-d0179b05e2f5',
    'reading',
    'd23b4317-9c44-474c-86ef-b78178a7fac7',
    20,
    'mcq_single',
    'Question 20',
    '["Many famous soccer players got their start in street soccer.","Young people can begin playing street soccer at a very early age.","You do not need elaborate facilities to play street soccer."," Inexperienced street soccer players are not criticised for mistakes.","Street soccer teams can have varying numbers of players."]'::jsonb,
    'C,E',
    'The writer notes that street soccer requires no formal field, no special equipment, and no official space — meaning elaborate facilities are unnecessary.',
    1,
    '{"explanation":"The writer notes that street soccer requires no formal field, no special equipment, and no official space — meaning elaborate facilities are unnecessary.","fromPassage":"No large space is needed, and goal posts, corner markers, and marked lines, associated with the formal game, are typically absent, as are game officials or referees.","instruction":"<p>Choose&nbsp;<strong>TWO</strong>&nbsp;correct answers</p>","context":"<p>The list below gives some possible reasons for the popularity of street soccer. Which <strong>TWO</strong> of these reasons are mentioned by the writer of the text?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '97585395-6aee-4248-9509-f02d9c63c7bb',
    'reading',
    'd23b4317-9c44-474c-86ef-b78178a7fac7',
    21,
    'mcq_single',
    'Question 21',
    '["Many famous soccer players got their start in street soccer.","Young people can begin playing street soccer at a very early age.","You do not need elaborate facilities to play street soccer."," Inexperienced street soccer players are not criticised for mistakes.","Street soccer teams can have varying numbers of players."]'::jsonb,
    'C,E',
    'Street soccer does not require fixed numbers of players — the team size can vary.',
    1,
    '{"explanation":"Street soccer does not require fixed numbers of players — the team size can vary.","fromPassage":"Another attraction of street soccer is that it is played frequently and competitively, but does not necessarily require standard 11-a-side teams or fixed playing positions.","instruction":"<p>Choose&nbsp;<strong>TWO</strong>&nbsp;correct answers</p>","context":"<p>The list below gives some possible reasons for the popularity of street soccer. Which <strong>TWO</strong> of these reasons are mentioned by the writer of the text?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '6e584a1c-e59a-4d40-93c2-aea26f730b32',
    'reading',
    'd23b4317-9c44-474c-86ef-b78178a7fac7',
    22,
    'mcq_single',
    'Question 22',
    '["Participation in youth soccer became much more expensive.","Some youth soccer leagues adopted more restrictive rules of play.","Fewer young people joined youth soccer teams."," Youth soccer players were sometimes rewarded for simply playing in games.","Soccer equipment manufacturers directed advertising towards parents."]'::jsonb,
    'B,D',
    'Foer explains that some leagues prohibited heading the ball because parents worried about brain injury.',
    1,
    '{"explanation":"Foer explains that some leagues prohibited heading the ball because parents worried about brain injury.","fromPassage":"Even though very little medical evidence supports this fear, some youth leagues prohibited heading the ball altogether.","instruction":"<p>Choose&nbsp;<strong>TWO</strong>&nbsp;correct answers</p>","context":"<p>The list below gives some possible results of the 1960s parenting style. Which <strong>TWO</strong> of these results are mentioned by Franklin Foer in the excerpt from How Soccer Explains the World?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '889dd87b-08e1-4604-a2a4-f7551bacf74d',
    'reading',
    'd23b4317-9c44-474c-86ef-b78178a7fac7',
    23,
    'mcq_single',
    'Question 23',
    '["Participation in youth soccer became much more expensive.","Some youth soccer leagues adopted more restrictive rules of play.","Fewer young people joined youth soccer teams."," Youth soccer players were sometimes rewarded for simply playing in games.","Soccer equipment manufacturers directed advertising towards parents."]'::jsonb,
    'B,D',
    'Foer says youth leagues gave participation prizes regardless of performance.',
    1,
    '{"explanation":"Foer says youth leagues gave participation prizes regardless of performance.","fromPassage":"Soccer leagues like the one I played in as a child handed out ‘participation’ prizes to every player, no matter how few games his (or her) team won ","instruction":"<p>Choose&nbsp;<strong>TWO</strong>&nbsp;correct answers</p>","context":"<p>The list below gives some possible results of the 1960s parenting style. Which <strong>TWO</strong> of these results are mentioned by Franklin Foer in the excerpt from How Soccer Explains the World?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'f891c810-f133-4ae3-9d1e-de72f28f2a30',
    'reading',
    'd23b4317-9c44-474c-86ef-b78178a7fac7',
    24,
    'summary_completion',
    'Question 24',
    NULL,
    'principle',
    'Youth soccer follows the principle that everyone should feel good regardless of performance.',
    1,
    '{"explanation":"Youth soccer follows the principle that everyone should feel good regardless of performance.","fromPassage":"Everyone’s a winner; no one’s a loser’ is a guiding principle of youth soccer.","instruction":"<p>Answer the questions. Write&nbsp;<strong>ONE WORD ONLY&nbsp;</strong>from the text&nbsp;for&nbsp;each&nbsp;answer.</p>","context":"<h3><strong>Winners and losers</strong></h3><p>For youth soccer players, a key&nbsp; ______ &nbsp;is that they should always come away from the game with a positive attitude.</p><p><br></p><p>In this respect, regardless of the effort the players make, they get some kind of&nbsp; ______ &nbsp;at the end of a game.</p><p><br></p><p>In street soccer, however, players gain resilience because they have to learn to cope with failure. But the outcome of a match isn''t remembered for long. In fact, no-one ever keeps a&nbsp; ______ &nbsp;of the results of games.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '2f7d01c2-8d29-4c64-a477-87220bf8132b',
    'reading',
    'd23b4317-9c44-474c-86ef-b78178a7fac7',
    25,
    'summary_completion',
    'Question 25',
    NULL,
    'reward',
    'Youth soccer players get a reward whether they try their best or not.',
    1,
    '{"explanation":"Youth soccer players get a reward whether they try their best or not.","fromPassage":"Since giving less than your best receives the same reward as giving your best why go to any extra effort?","instruction":"<p>Answer the questions. Write&nbsp;<strong>ONE WORD ONLY&nbsp;</strong>from the text&nbsp;for&nbsp;each&nbsp;answer.</p>","context":"<h3><strong>Winners and losers</strong></h3><p>For youth soccer players, a key&nbsp; ______ &nbsp;is that they should always come away from the game with a positive attitude.</p><p><br></p><p>In this respect, regardless of the effort the players make, they get some kind of&nbsp; ______ &nbsp;at the end of a game.</p><p><br></p><p>In street soccer, however, players gain resilience because they have to learn to cope with failure. But the outcome of a match isn''t remembered for long. In fact, no-one ever keeps a&nbsp; ______ &nbsp;of the results of games.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '73abe348-0f35-4fc5-92d2-c321de4661f7',
    'reading',
    'd23b4317-9c44-474c-86ef-b78178a7fac7',
    26,
    'summary_completion',
    'Question 26',
    NULL,
    'record',
    'Street soccer never keeps a formal record of the results.',
    1,
    '{"explanation":"Street soccer never keeps a formal record of the results.","fromPassage":"A further difference between these two strands of soccer is that in street soccer a formal record is not kept.","instruction":"<p>Answer the questions. Write&nbsp;<strong>ONE WORD ONLY&nbsp;</strong>from the text&nbsp;for&nbsp;each&nbsp;answer.</p>","context":"<h3><strong>Winners and losers</strong></h3><p>For youth soccer players, a key&nbsp; ______ &nbsp;is that they should always come away from the game with a positive attitude.</p><p><br></p><p>In this respect, regardless of the effort the players make, they get some kind of&nbsp; ______ &nbsp;at the end of a game.</p><p><br></p><p>In street soccer, however, players gain resilience because they have to learn to cope with failure. But the outcome of a match isn''t remembered for long. In fact, no-one ever keeps a&nbsp; ______ &nbsp;of the results of games.</p>"}'::jsonb
);

