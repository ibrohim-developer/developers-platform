-- ============================================
-- Auto-generated seed for: Day 18: The Pirahã People of Brazil
-- Source API ID: 1801
-- Generated: 2026-02-26T11:44:08.540Z
-- ============================================

-- ============================================
-- Day 18: The Pirahã People of Brazil - Part 3: The Pirahã People of Brazil
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '37f296b9-cefd-486c-9a92-4833021c1aea',
    'Day 18: The Pirahã People of Brazil - Part 3: The Pirahã People of Brazil',
    'Cambridge IELTS - The Pirahã People of Brazil',
    'hard',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    '4b7075cb-0a47-4d57-9a99-972b1f48d7b9',
    '37f296b9-cefd-486c-9a92-4833021c1aea',
    1,
    'The Pirahã People of Brazil',
    'The Pirahã tribe live deep in Brazil''s Amazon forest, and their language is hotly debated by linguists. Since 1977, the ethnologist Daniel Everett has spent a total of seven years living with the Pirahã and has committed his career to studying their puzzling speech. Indeed, he was uncertain for so long about what he was actually hearing while living among the Pirahã that he waited nearly three decades before publishing his findings.

The debate over the Pirahã language goes right to the core of the riddle regarding how Homo sapiens managed to develop vocal communication. Although bees dance, birds sing and whales even sing with syntax*, human language is unique, if only for the reason that it enables humans to piece together never-before-constructed thoughts, and be infinitely imaginative - think of Shakespeare''s plays or Einstein''s theory of relativity.

Linguistics generally focuses on what features all human languages have in common, but the Pirahã language departs from what some academics have long maintained are essential and inalienable features of all human languages. Most of all, it may be unique for not employing subordinate clauses. Instead of saying, ''When I have finished eating, I will speak to you,'' the Pirahã say, ''I finish eating, I speak with you.'' Equally perplexing, the Pirahã appear not to use numbers. During the time he spent with them, Everett never heard words like ''all'', ''every'' and ''more''. There is one word, ''hoi'', that comes close to the numeral 1, but it can also mean ''small''. And they were never observed to count without language, on their fingers for example, in order to determine important tasks in village life like how many pieces of meat to grill.

Everett''s findings among the Pirahã have brought new life to a controversial theory by the linguist Benjamin Whorf, who suggested that people are only capable of constructing thoughts for which they possess actual words. Or to put it another way, because they have no words for numbers, they cannot even begin to understand the concept of numbers or arithmetic.

The Warlpiri language - spoken by a group of Australian Aborigines - like that of the Pirahã, features only the most rudimentary system of counting. However, the Warlpiri people had no difficulty counting farther than three in a foreign language, in this case English, but when Everett attempted to teach the Pirahã how to count in Portuguese like other Brazilians, not a single person could count to 10.

Everett is at pains to point out that the Pirahã are not unintelligent, for their thinking is not any slower than that of the average university student. And although they reside in a remote part of the forest, they do not live in complete genetic isolation, but mix with people from the surrounding populations and share similar intellectual capacities with their neighbours whose languages do contain numbers.

Eventually, after some 30 years of research, Everett has come up with a surprising explanation for the peculiarities of the Pirahã language. Language, he believes, is created by a people''s way of life, their belief system and values. In this way, variety in human language is almost limitless, a function of the human capacity to live in different ways, such as in the forest. What Everett''s research has revealed is that the central tenet of the Pirahã culture is to live in the here and now. The only thing of importance that is worth communicating to others is what is being experienced at that very moment, though this can often be described with great care and detail. In consequence, the language has no means to conjugate verbs in order to describe ''yesterday'' or ''last week'' or ''when I was a child''. Their very literal view of the world curtails abstract thought, and many features taken for granted among other peoples are absent among the Pirahã, such as a creation myth, story telling and painting. One manifestation of their beliefs is that by tradition the names they give their children are not particularly imaginative. Often they are named after other members of the tribe with whom they share similar character traits. Standing out or being different is not encouraged by the Pirahã, and this is reflected in their perhaps colourless choice of names.

Everett anticipated that these findings would be controversial and the reaction came as expected. Until this point, many linguists had defended the theories of Noam Chomsky, according to which all human languages have a universal grammar. What exactly makes up this universal grammar is the subject of debate, but at its heart is the concept of ''recursion'', which is defined as replication of a structure within its single parts. Without it, humans would not be able to view separate thoughts as subordinate parts of a complex whole. And, most pertinent to Everett''s work, there would not be subordinate clauses, which are responsible for translating the concept of recursion into grammar. But if the Pirahã do not form subordinate clauses, then recursion cannot explain the uniqueness of human language, and this would negate Chomsky''s theories.

The logical way forward now would be to try to prove that the Pirahã can think in a recursive fashion. The only problem is, nobody can confirm or deny Everett''s observations since no other researcher can speak Pirahã as well as he does. Despite this, several researchers - including two of Chomsky''s colleagues - will soon travel to Brazil to check his claims. My concern is that soon the Pirahã will simply become one more scientific oddity with every aspect of their lives being exploited and analysed.',
    927,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '1433597c-99ee-4a86-bef5-f104ee9fe1af',
    'reading',
    '4b7075cb-0a47-4d57-9a99-972b1f48d7b9',
    27,
    'mcq_single',
    'Question 27',
    '["He has lived among the Pirahã since 1977.","It took him seven years to learn the Pirahã language.","No one would publish his research for three decades.","Studying the Pirahã language is the focus of his work."]'::jsonb,
    'D',
    'The passage directly states that Everett devoted his career to studying the Pirahã language. This matches option D.',
    1,
    '{"explanation":"The passage directly states that Everett devoted his career to studying the Pirahã language. This matches option D.","fromPassage":"has committed his career to studying their puzzling speech. ","instruction":"<p>Choose the correct answer. </p>","context":"<p>What are we told about Daniel Everett in the first paragraph?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0779c0bf-05eb-4524-9413-6ef7b3ce12bd',
    'reading',
    '4b7075cb-0a47-4d57-9a99-972b1f48d7b9',
    28,
    'mcq_single',
    'Question 28',
    '["Humans are the only species to be linguistically creative.","Humans, bees, birds and whales share a characteristic.","Human language is not fully understood by scientists.","Humans are the only species to use syntax."]'::jsonb,
    'A',
    'The paragraph states that human language is unique because it allows infinite creativity — a characteristic no other species possesses.',
    1,
    '{"explanation":"The paragraph states that human language is unique because it allows infinite creativity — a characteristic no other species possesses.","fromPassage":"Although bees dance, birds sing and whales even sing with syntax*, human language is unique, if only for the reason that it enables humans to piece together never-before-constructed thoughts, and be infinitely imaginative - think of Shakespeare''s plays or Einstein''s theory of relativity.","instruction":"<p>Choose the correct answer. </p>","context":"<p>&nbsp;Which of the following is the best summary of the second paragraph?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'cae8e071-50cd-4598-b293-5aefdb84bd73',
    'reading',
    '4b7075cb-0a47-4d57-9a99-972b1f48d7b9',
    29,
    'mcq_single',
    'Question 29',
    '["To criticise the general approach of linguistics.","To compare two features of the Pirahã language."," To explain why the Pirahã language is difficult to learn.","To exemplify an unusual feature of the Pirahã language."]'::jsonb,
    'D',
    'Subordinate clauses are mentioned as a rare or unusual feature because the Pirahã language does not use them.',
    1,
    '{"explanation":"Subordinate clauses are mentioned as a rare or unusual feature because the Pirahã language does not use them.","fromPassage":"Most of all, it may be unique for not employing subordinate clauses.","instruction":"<p>choose the correct answe. </p>","context":"<p>Why does the writer refer to subordinate clauses?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '48733f02-7bf3-424a-a8ea-988e7e43f2e4',
    'reading',
    '4b7075cb-0a47-4d57-9a99-972b1f48d7b9',
    30,
    'mcq_single',
    'Question 30',
    '["He thought that numbers were common to all human languages.","His theory might be supported by Everett''s research.","His research enabled him to find a new life among the Pirahã.","He predicted that people like the Pirahã would never be found."]'::jsonb,
    'B',
    'The passage says Everett’s discoveries support Whorf’s theory that language limits thought.',
    1,
    '{"explanation":"The passage says Everett’s discoveries support Whorf’s theory that language limits thought.","fromPassage":"Everett''s findings among the Pirahã have brought new life to a controversial theory by the linguist Benjamin Whorf, who suggested that people are only capable of constructing thoughts for which they possess actual words.","instruction":"<p>Choose the correct answer. </p>","context":"<p>What point does the writer make about the work of Whorf?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'a6f3ddb9-97c2-4cbf-8cda-840be4b906c4',
    'reading',
    '4b7075cb-0a47-4d57-9a99-972b1f48d7b9',
    31,
    'mcq_single',
    'Question 31',
    '["Suggest that the Pirahã be taught to count in English.","Show how tribal peoples learn a foreign language.","Compare counting in English and Portuguese.","Illustrate the uniqueness of the Pirahã."]'::jsonb,
    'D',
    'The Warlpiri are used to highlight how unusual the Pirahã are when it comes to counting.',
    1,
    '{"explanation":"The Warlpiri are used to highlight how unusual the Pirahã are when it comes to counting.","fromPassage":"However, the Warlpiri people had no difficulty counting farther than three in a foreign language, in this case English, but when Everett attempted to teach the Pirahã how to count in Portuguese like other Brazilians, not a single person could count to 10.","instruction":"<p>Choose the correct answer. </p>","context":"<p>The writer refers to the Warlpiri people in order to</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '29c103e5-de07-402d-8a44-efe7835e494e',
    'reading',
    '4b7075cb-0a47-4d57-9a99-972b1f48d7b9',
    32,
    'mcq_single',
    'Question 32',
    '["Pirahã students have not graduated from universities.","He does not want people to criticise their intelligence.","Their isolation makes it difficult to evaluate their intelligence.","He believes their language is more complex than their neighbours’."]'::jsonb,
    'B',
    'Everett stresses that the Pirahã are not unintelligent, which shows he wants to prevent people from judging their intelligence negatively.',
    1,
    '{"explanation":"Everett stresses that the Pirahã are not unintelligent, which shows he wants to prevent people from judging their intelligence negatively.","fromPassage":"And although they reside in a remote part of the forest, they do not live in complete genetic isolation, but mix with people from the surrounding populations and share similar intellectual capacities with their neighbours whose languages do contain numbers.","instruction":"<p>Choose the correct answer. </p>","context":"<p>What is Everett’s point about the Pirahã’s intellectual capacities?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'dc76ddf1-1c18-4334-a0af-1e147bebcf35',
    'reading',
    '4b7075cb-0a47-4d57-9a99-972b1f48d7b9',
    33,
    'summary_completion',
    'Question 33',
    '["present ","past ","time","future","culture ","grammar ","art","individuality","children"]'::jsonb,
    'culture',
    'Everett believes language comes from a people''s way of life — meaning their culture.',
    1,
    '{"explanation":"Everett believes language comes from a people''s way of life — meaning their culture.","fromPassage":"Language, he believes, is created by a people''s way of life, their belief system and values.","instruction":"<p>Complete the summary using the list of words. Choose the correct answer and move it into the gap.</p>","context":"<h3><strong>Everett’s explanation</strong></h3><p>Everett believes that a group’s language is a product of their ______ and thus language is infinitely varied. During the time he spent living among them, he observed that the Pirahã only place value on the&nbsp; ______ &nbsp;and have no ______ to describe completed events. Similarly, the types of names they use reflect the fact that they do not celebrate ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'b5447eaf-514b-490e-adce-df0094210b76',
    'reading',
    '4b7075cb-0a47-4d57-9a99-972b1f48d7b9',
    34,
    'summary_completion',
    'Question 34',
    '["present ","past ","time","future","culture ","grammar ","art","individuality","children"]'::jsonb,
    'present',
    'The Pirahã value only what is happening now.',
    1,
    '{"explanation":"The Pirahã value only what is happening now.","fromPassage":"The only thing of importance that is worth communicating to others is what is being experienced at that very moment, though this can often be described with great care and detail.","instruction":"<p>Complete the summary using the list of words. Choose the correct answer and move it into the gap.</p>","context":"<h3><strong>Everett’s explanation</strong></h3><p>Everett believes that a group’s language is a product of their ______ and thus language is infinitely varied. During the time he spent living among them, he observed that the Pirahã only place value on the&nbsp; ______ &nbsp;and have no ______ to describe completed events. Similarly, the types of names they use reflect the fact that they do not celebrate ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '578043bf-2ebc-48e7-be7b-5d900ebedc51',
    'reading',
    '4b7075cb-0a47-4d57-9a99-972b1f48d7b9',
    35,
    'summary_completion',
    'Question 35',
    '["present ","past ","time","future","culture ","grammar ","art","individuality","children"]'::jsonb,
    'grammar',
    'The Pirahã language has no grammar to express past time.',
    1,
    '{"explanation":"The Pirahã language has no grammar to express past time.","fromPassage":"In consequence, the language has no means to conjugate verbs in order to describe ''yesterday'' or ''last week'' or ''when I was a child''.","instruction":"<p>Complete the summary using the list of words. Choose the correct answer and move it into the gap.</p>","context":"<h3><strong>Everett’s explanation</strong></h3><p>Everett believes that a group’s language is a product of their ______ and thus language is infinitely varied. During the time he spent living among them, he observed that the Pirahã only place value on the&nbsp; ______ &nbsp;and have no ______ to describe completed events. Similarly, the types of names they use reflect the fact that they do not celebrate ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '9c7cd955-a971-4dd9-ba8d-539ccb354945',
    'reading',
    '4b7075cb-0a47-4d57-9a99-972b1f48d7b9',
    36,
    'summary_completion',
    'Question 36',
    '["present ","past ","time","future","culture ","grammar ","art","individuality","children"]'::jsonb,
    'individuality',
    'Names are simple because the Pirahã do not value individuality.',
    1,
    '{"explanation":"Names are simple because the Pirahã do not value individuality.","fromPassage":"Often they are named after other members of the tribe with whom they share similar character traits.","instruction":"<p>Complete the summary using the list of words. Choose the correct answer and move it into the gap.</p>","context":"<h3><strong>Everett’s explanation</strong></h3><p>Everett believes that a group’s language is a product of their ______ and thus language is infinitely varied. During the time he spent living among them, he observed that the Pirahã only place value on the&nbsp; ______ &nbsp;and have no ______ to describe completed events. Similarly, the types of names they use reflect the fact that they do not celebrate ______ </p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '6aa369f3-8e2a-49f0-8c6b-36d67458e6b4',
    'reading',
    '4b7075cb-0a47-4d57-9a99-972b1f48d7b9',
    37,
    'tfng',
    'Everett was surprised by the way his research was greeted.',
    NULL,
    'NO',
    'Everett was not surprised — he expected criticism.',
    1,
    '{"explanation":"Everett was not surprised — he expected criticism.","fromPassage":"Everett anticipated that these findings would be controversial and the reaction came as expected.","instruction":"<p>Choose&nbsp;<strong>YES</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>NO</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT</strong> <strong>GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'bf7cb5c4-53c2-4b59-bb4f-07911d1df026',
    'reading',
    '4b7075cb-0a47-4d57-9a99-972b1f48d7b9',
    38,
    'tfng',
    'Chomsky has been critical of Everett’s research methodology.',
    NULL,
    'NOT GIVEN',
    'Nowhere in the passage does it say Chomsky criticised Everett’s methodology. Chomsky’s theories are discussed, but NOT his personal comments or criticism.',
    1,
    '{"explanation":"Nowhere in the passage does it say Chomsky criticised Everett’s methodology. Chomsky’s theories are discussed, but NOT his personal comments or criticism.","fromPassage":"And, most pertinent to Everett''s work, there would not be subordinate clauses, which are responsible for translating the concept of recursion into grammar.","instruction":"<p>Choose&nbsp;<strong>YES</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>NO</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT</strong> <strong>GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'a10d1843-f3f3-4bcf-ab56-5103e746391c',
    'reading',
    '4b7075cb-0a47-4d57-9a99-972b1f48d7b9',
    39,
    'tfng',
    'If ‘recursion’ as a universal concept is disproved, Chomsky’s ideas about language would be wrong.',
    NULL,
    'YES',
    'The passage clearly states that if the Pirahã lack recursion, this would contradict Chomsky’s theory.',
    1,
    '{"explanation":"The passage clearly states that if the Pirahã lack recursion, this would contradict Chomsky’s theory.","fromPassage":"But if the Pirahã do not form subordinate clauses, then recursion cannot explain the uniqueness of human language, and this would negate Chomsky''s theories.","instruction":"<p>Choose&nbsp;<strong>YES</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>NO</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT</strong> <strong>GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '7d41c7e9-d79f-4175-b396-5554fc0c4f45',
    'reading',
    '4b7075cb-0a47-4d57-9a99-972b1f48d7b9',
    40,
    'tfng',
    'The Pirahã will benefit from their new-found status among academics.',
    NULL,
    'NO',
    'The writer is worried the Pirahã will become exploited — meaning they will not benefit.',
    1,
    '{"explanation":"The writer is worried the Pirahã will become exploited — meaning they will not benefit.","fromPassage":"My concern is that soon the Pirahã will simply become one more scientific oddity with every aspect of their lives being exploited and analysed.","instruction":"<p>Choose&nbsp;<strong>YES</strong>&nbsp;if the statement agrees with the information given in the text, choose&nbsp;<strong>NO</strong>&nbsp;if the statement contradicts the information, or choose&nbsp;<strong>NOT</strong> <strong>GIVEN</strong>&nbsp;if there is no information on this.</p>"}'::jsonb
);

