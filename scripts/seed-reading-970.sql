-- ============================================
-- Auto-generated seed for: null
-- Source API ID: 970
-- Generated: 2026-02-26T15:59:24.169Z
-- ============================================

-- ============================================
-- null - Part 3: A closer examination of a study on verbal and non-verbal messages
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    'c811f4b3-fbbf-44c3-bcdb-ef2d9509ada2',
    'null - Part 3: A closer examination of a study on verbal and non-verbal messages',
    'Cambridge IELTS - A closer examination of a study on verbal and non-verbal messages',
    'hard',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    '45f32851-87e8-4c8e-a700-9289cfce9ef4',
    'c811f4b3-fbbf-44c3-bcdb-ef2d9509ada2',
    1,
    'A closer examination of a study on verbal and non-verbal messages',
    'A study of non-verbal communication carried out in 1967 continues to be widely quoted today. David Lapakko looks at limitations in the original study

Description of the Study
The findings of a study on verbal and non-verbal messages in communication by Albert Mehrabian and his colleagues at UCLA1 in 1967 have been quoted so frequently that they are now often regarded as a self-evident truth.

In the first experiment, subjects were asked to listen to a recording of a female saying the word ''maybe'' in three tones of voice to convey liking, neutrality and disliking. The subjects were then shown photos of female faces expressing the same three emotions and were asked to guess the emotions in the recorded voice and the photos. It was found that the photos got more accurate responses than the voices. In the second experiment, subjects listened to nine recorded words spoken in different tones of voice. Three words had positive meanings (e.g. honey), three were neutral (e.g. oh) and three were negative (e.g. terrible). Again, the subjects had to guess the speaker''s emotions. It was found that tone of voice carried more meaning than the individual words. From these experiments the researchers concluded that 7% of our feeling towards a speaker is based on the actual words they use, 38% on their tone of voice, and 55% on their body language (e.g. facial expression).

Methodological Issues
However, a closer look at the study reveals several limitations. The first is that the entire study involved only 62 subjects. Of these, 25 were used to select the word for the first experiment, while the key issue comparing verbal and non-verbal communication - was determined by only the 37 remaining subjects. All were female undergraduates who participated as part of their introductory psychology course, and their ages and academic qualifications seem remarkably uniform. Thus, the findings may simply be a product of the nature of the sample.

Critics have also pointed out that the 7-38-55 formula is flawed since it was pieced together from two different experiments, neither of which involved all three channels (verbal, vocal, and facial). In addition, in the first experiment the single word maybe was used throughout so it was impossible for the effects of changes in verbal input to be assessed. The researchers intentionally used a ''neutral'' word so naturally the subjects found little meaning there. Clearly, such a methodology lacks validity. In the real world, people communicate in a particular context and speak in phrases and full-blown sentences, making extensive use of the multi-faceted vehicle of language.

My concern is that interpretations of this study have gained such prominence in our pedagogical literature. This 7-38-55 formula appears in many basic texts, used for training in public speaking, interpersonal communication and organizational communication.

Lessons to consider
Clearly, one appealing aspect of the Mehrabian study is its numerical precision. Communication is a complex phenomenon, but it seems less so when we can rely on these three magical numbers. In contrast to the ambiguities of language, numbers seem to possess exactness. And the popular appeal of the study has given the 7-38-55 formula enormous credibility. There is a certain mystique about non-verbal communication, and the continued references to this research sustain it, encouraging people to believe in the overwhelming importance of the non-verbal message compared with the verbal one. Yet we know that even one ill-chosen word to a colleague or friend can make or break a communicative effort. Words do matter. Bradley (1991), one of the few textbook writers to criticize the Mehrabian study, makes the same point when he observes, ''If we could communicate 93% of information and attitudes with vocal and facial cues, it would be wasteful to spend time learning a language''.

Mehrabian himself believes his research should not be interpreted to devalue the role of language in communication, saying:

Please remember that all my findings... dealt with communications of feelings and attitudes... it is absurd to imply or suggest that the verbal portion of all communication constitutes only 7% of the message... anytime we communicate abstract relationships (e.g., x = y the square of z) clearly 100% of the entire communication is verbal. (Mehrabian, 1995)

Conclusion
To be fair, many textbook writers attempt to be faithful to the context of Mehrabian''s research. For example, Stewart and D''Angelo (1988) write: ''Mehrabian argues that when we''re uncertain about what someone''s feeling, or about how much we like him or her, we rely...only 7% on the words that are spoken''. Others try to play down the specific percentages, saying that an understanding of the general importance of non-verbal cues is more important. Nonetheless, other textbook authors simply use the numbers without placing any limits on their meaning.

Since this relatively small study was first published it has achieved an influence far beyond its intended scope. We need to put it into its proper perspective and learn some important lessons from it regarding social science research, communication pedagogy, and the forces which have created widespread misunderstanding about communication.',
    835,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '2d3541e3-0bdc-4989-a448-2d61ea79e34c',
    'reading',
    '45f32851-87e8-4c8e-a700-9289cfce9ef4',
    27,
    'summary_completion',
    'Question 27',
    '["facial expressions","purposes","printed words","effects","word meanings","gender differences","feelings","characteristics"]'::jsonb,
    'effects',
    '“…an influential study comparing the effects of verbal and non-verbal communication…”

	•	The study measured how verbal and non-verbal communication influenced perception, so “effects” fits perfectly.
	•	Other options like “purposes” or “characteristics” are not what’s being compared.',
    1,
    '{"explanation":"“…an influential study comparing the effects of verbal and non-verbal communication…”\n\n\t•\tThe study measured how verbal and non-verbal communication influenced perception, so “effects” fits perfectly.\n\t•\tOther options like “purposes” or “characteristics” are not what’s being compared.","instruction":"<p><strong>Complete the summary using the list of words and phrases below.</strong></p><p><strong><em>Drag and drop </em></strong><em>the correct words into the gaps.</em></p><p><br></p>","context":"<p>Albert Mehrabian and his colleagues carried out an influential study comparing the  ______  of verbal and non-verbal communication. This involved two experiments. In both experiments, subjects had to identify the  ______  being communicated by other people. The two main areas focused on in the first experiment were voice tones and  ______ , while the second focused mainly on voice tones and  ______ .</p><p><br></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '6ec554ca-8f82-4046-97e9-9975ad787460',
    'reading',
    '45f32851-87e8-4c8e-a700-9289cfce9ef4',
    28,
    'summary_completion',
    'Question 28',
    '["facial expressions","purposes","printed words","effects","word meanings","gender differences","feelings","characteristics"]'::jsonb,
    'feelings',
    '“…subjects had to identify the feelings being communicated…”

	•	This is stated explicitly in the explanation: “the subjects had to guess the speaker’s emotions.”
	•	“Feelings” is a direct synonym for “emotions.”',
    1,
    '{"explanation":"“…subjects had to identify the feelings being communicated…”\n\n\t•\tThis is stated explicitly in the explanation: “the subjects had to guess the speaker’s emotions.”\n\t•\t“Feelings” is a direct synonym for “emotions.”","instruction":"<p><strong>Complete the summary using the list of words and phrases below.</strong></p><p><strong><em>Drag and drop </em></strong><em>the correct words into the gaps.</em></p><p><br></p>","context":"<p>Albert Mehrabian and his colleagues carried out an influential study comparing the  ______  of verbal and non-verbal communication. This involved two experiments. In both experiments, subjects had to identify the  ______  being communicated by other people. The two main areas focused on in the first experiment were voice tones and  ______ , while the second focused mainly on voice tones and  ______ .</p><p><br></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '12525d2e-e3ce-4536-8754-5fcd9e271f53',
    'reading',
    '45f32851-87e8-4c8e-a700-9289cfce9ef4',
    29,
    'summary_completion',
    'Question 29',
    '["facial expressions","purposes","printed words","effects","word meanings","gender differences","feelings","characteristics"]'::jsonb,
    'facial expressions',
    '“…The two main areas focused on in the first experiment were voice tones and facial expressions…”

	•	Clearly supported in the original paragraph describing the first experiment (voices + photos).',
    1,
    '{"explanation":"“…The two main areas focused on in the first experiment were voice tones and facial expressions…”\n\n\t•\tClearly supported in the original paragraph describing the first experiment (voices + photos).","instruction":"<p><strong>Complete the summary using the list of words and phrases below.</strong></p><p><strong><em>Drag and drop </em></strong><em>the correct words into the gaps.</em></p><p><br></p>","context":"<p>Albert Mehrabian and his colleagues carried out an influential study comparing the  ______  of verbal and non-verbal communication. This involved two experiments. In both experiments, subjects had to identify the  ______  being communicated by other people. The two main areas focused on in the first experiment were voice tones and  ______ , while the second focused mainly on voice tones and  ______ .</p><p><br></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '06e580dc-4926-4ad0-b40f-a7056a2bd001',
    'reading',
    '45f32851-87e8-4c8e-a700-9289cfce9ef4',
    30,
    'summary_completion',
    'Question 30',
    '["facial expressions","purposes","printed words","effects","word meanings","gender differences","feelings","characteristics"]'::jsonb,
    'word meanings',
    '“…while the second focused mainly on voice tones and word meanings.”

	•	The second experiment used 9 words with positive, neutral, and negative meanings, so this is the only accurate fit.',
    1,
    '{"explanation":"“…while the second focused mainly on voice tones and word meanings.”\n\n\t•\tThe second experiment used 9 words with positive, neutral, and negative meanings, so this is the only accurate fit.","instruction":"<p><strong>Complete the summary using the list of words and phrases below.</strong></p><p><strong><em>Drag and drop </em></strong><em>the correct words into the gaps.</em></p><p><br></p>","context":"<p>Albert Mehrabian and his colleagues carried out an influential study comparing the  ______  of verbal and non-verbal communication. This involved two experiments. In both experiments, subjects had to identify the  ______  being communicated by other people. The two main areas focused on in the first experiment were voice tones and  ______ , while the second focused mainly on voice tones and  ______ .</p><p><br></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0f01c6fd-be1b-42ec-8172-793e2a1b0f1a',
    'reading',
    '45f32851-87e8-4c8e-a700-9289cfce9ef4',
    31,
    'tfng',
    'One limitation of the study was that there were too few subjects involved.',
    NULL,
    'YES',
    '🔍 Explanation (Methodological Issues section):

“The first is that the entire study involved only 62 subjects… the key issue… was determined by only the 37 remaining subjects.”

This clearly criticizes the small sample size as a limitation, so the statement is directly supported.

👍🏼 Synonyms/Paraphrases:
“too few subjects” ↔ “only 62 subjects… only 37 remaining”
“limitation” ↔ “the first [issue]”',
    1,
    '{"explanation":"🔍 Explanation (Methodological Issues section):\n\n“The first is that the entire study involved only 62 subjects… the key issue… was determined by only the 37 remaining subjects.”\n\nThis clearly criticizes the small sample size as a limitation, so the statement is directly supported.\n\n👍🏼 Synonyms/Paraphrases:\n“too few subjects” ↔ “only 62 subjects… only 37 remaining”\n“limitation” ↔ “the first [issue]”","instruction":"<h3><strong>Do the following statements agree with the views of the writer in Reading Passage 3?</strong>&nbsp;</h3><p><strong><em>YES</em></strong><em> -&nbsp;if the statement agrees with the information given in the text</em></p><p><strong><em>NO</em></strong><em> -&nbsp;if the statement contradicts the information</em></p><p><strong><em>NOT GIVEN</em></strong><em>&nbsp;- if there is no information on this.</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'f288e3c6-1efb-4044-a117-52fd5e6f8d2c',
    'reading',
    '45f32851-87e8-4c8e-a700-9289cfce9ef4',
    32,
    'tfng',
    'The fact that the subjects in the study came from a similar background was an advantage.',
    NULL,
    'NO',
    '🔍 Explanation (Methodological Issues section):

“…their ages and academic qualifications seem remarkably uniform. Thus, the findings may simply be a product of the nature of the sample.”

This criticizes the lack of diversity — it’s considered a problem, not an advantage. So this statement is the opposite of the text.

👍🏼 Synonyms/Paraphrases:
“came from a similar background” ↔ “remarkably uniform”
“was an advantage” ≠ “may be a product of the nature of the sample” (i.e., a limitation)',
    1,
    '{"explanation":"🔍 Explanation (Methodological Issues section):\n\n“…their ages and academic qualifications seem remarkably uniform. Thus, the findings may simply be a product of the nature of the sample.”\n\nThis criticizes the lack of diversity — it’s considered a problem, not an advantage. So this statement is the opposite of the text.\n\n👍🏼 Synonyms/Paraphrases:\n“came from a similar background” ↔ “remarkably uniform”\n“was an advantage” ≠ “may be a product of the nature of the sample” (i.e., a limitation)","instruction":"<h3><strong>Do the following statements agree with the views of the writer in Reading Passage 3?</strong>&nbsp;</h3><p><strong><em>YES</em></strong><em> -&nbsp;if the statement agrees with the information given in the text</em></p><p><strong><em>NO</em></strong><em> -&nbsp;if the statement contradicts the information</em></p><p><strong><em>NOT GIVEN</em></strong><em>&nbsp;- if there is no information on this.</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'c88169ba-f59f-4ab3-8e37-27200fa5a026',
    'reading',
    '45f32851-87e8-4c8e-a700-9289cfce9ef4',
    33,
    'tfng',
    'The two experiments should have been carried out in a different order.',
    NULL,
    'NOT GIVEN',
    '🔍 Explanation: No comment is made about the order of the experiments — whether it was right or wrong, better or worse — this idea is never mentioned.',
    1,
    '{"explanation":"🔍 Explanation: No comment is made about the order of the experiments — whether it was right or wrong, better or worse — this idea is never mentioned.","instruction":"<h3><strong>Do the following statements agree with the views of the writer in Reading Passage 3?</strong>&nbsp;</h3><p><strong><em>YES</em></strong><em> -&nbsp;if the statement agrees with the information given in the text</em></p><p><strong><em>NO</em></strong><em> -&nbsp;if the statement contradicts the information</em></p><p><strong><em>NOT GIVEN</em></strong><em>&nbsp;- if there is no information on this.</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '6ec5a90e-728a-4586-bcb4-1983f2dd6e77',
    'reading',
    '45f32851-87e8-4c8e-a700-9289cfce9ef4',
    34,
    'tfng',
    'The researchers'' choice of a neutral word was helpful in the context of the study.',
    NULL,
    'NO',
    '🔍 Explanation (Methodological Issues section):

“The researchers intentionally used a ‘neutral’ word so naturally the subjects found little meaning there. Clearly, such a methodology lacks validity.”

This criticizes the use of a neutral word as a flaw, not a helpful choice. The word choice made it hard to assess verbal impact, thus weakening the study.

👍🏼 Synonyms/Paraphrases:
“helpful” ≠ “lacks validity”
“choice of a neutral word” ↔ “used a ‘neutral’ word… found little meaning”',
    1,
    '{"explanation":"🔍 Explanation (Methodological Issues section):\n\n“The researchers intentionally used a ‘neutral’ word so naturally the subjects found little meaning there. Clearly, such a methodology lacks validity.”\n\nThis criticizes the use of a neutral word as a flaw, not a helpful choice. The word choice made it hard to assess verbal impact, thus weakening the study.\n\n👍🏼 Synonyms/Paraphrases:\n“helpful” ≠ “lacks validity”\n“choice of a neutral word” ↔ “used a ‘neutral’ word… found little meaning”","instruction":"<h3><strong>Do the following statements agree with the views of the writer in Reading Passage 3?</strong>&nbsp;</h3><p><strong><em>YES</em></strong><em> -&nbsp;if the statement agrees with the information given in the text</em></p><p><strong><em>NO</em></strong><em> -&nbsp;if the statement contradicts the information</em></p><p><strong><em>NOT GIVEN</em></strong><em>&nbsp;- if there is no information on this.</em></p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '60da7427-50ed-411e-873c-3e887e54e61e',
    'reading',
    '45f32851-87e8-4c8e-a700-9289cfce9ef4',
    35,
    'tfng',
    'The study would have been more valid if it had included a range of languages.',
    NULL,
    'NOT GIVEN',
    '🔍 Explanation: Nowhere in the passage does it suggest that using more languages would have improved validity. The criticisms focus on sample size, gender, verbal channel limitations, etc. No mention of multilingualism.',
    1,
    '{"explanation":"🔍 Explanation: Nowhere in the passage does it suggest that using more languages would have improved validity. The criticisms focus on sample size, gender, verbal channel limitations, etc. No mention of multilingualism.","instruction":"<h3><strong>Do the following statements agree with the views of the writer in Reading Passage 3?</strong>&nbsp;</h3><p><strong><em>YES</em></strong><em> -&nbsp;if the statement agrees with the information given in the text</em></p><p><strong><em>NO</em></strong><em> -&nbsp;if the statement contradicts the information</em></p><p><strong><em>NOT GIVEN</em></strong><em>&nbsp;- if there is no information on this.</em></p>"}'::jsonb
);

