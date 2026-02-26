-- ============================================
-- Auto-generated seed for: Day 8: Intelligent behaviour in birds
-- Source API ID: 1574
-- Generated: 2026-02-26T11:43:38.402Z
-- ============================================

-- ============================================
-- Day 8: Intelligent behaviour in birds - Part 2: Intelligent behaviour in birds
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    '1bcb20cc-c9b1-4af6-b524-d3d5ed289add',
    'Day 8: Intelligent behaviour in birds - Part 2: Intelligent behaviour in birds',
    'Cambridge IELTS - Intelligent behaviour in birds',
    'medium',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    '1e2ad7c6-e5a8-410b-9061-a0ce4b449779',
    '1bcb20cc-c9b1-4af6-b524-d3d5ed289add',
    1,
    'Intelligent behaviour in birds',
    ' 
[HEADING: A]
Many people are aware of the intelligence of chimpanzees and other mammals. However, birds also demonstrate intelligent behaviour. For centuries, many scholars maintained that humans were the only intelligent organism on Earth. Many traits were considered to be exclusively human examples of acumen – for example, language, tool use, deception, awareness of self and others. However, exciting new research on a number of animals, particularly birds, has called into question using uniqueness of these traits, forcing us to reconsider this opinion.
 
[HEADING: B]
In 1964, people were amazed when naturalist Jane Goodall first discovered chimpanzees making and using tools. But ornithologists, people who study birds, were not overly surprised. Almost 20 years earlier, a renowned ornithologist had shown that tool use was commonplace in populations of woodpecker finches residing on the Galápagos Islands. These tiny birds routinely used twigs to extract grubs from under bark. Since then, the catalogue of tool-using animals has grown. At least three Australian bird species make tools similar to those of the woodpecker finch, and when white-winged choughs come across shellfish they have been known to use rocks as hammers to crack open the recalcitrant shells. Other birds show a more sophisticated level of insight. For example, black kites have been reported dropping bait into lakes to bring fish to the surface of the water, thereby making them easier to catch. A kite may also pick up a smouldering stick from an area recently burned by a bushfire and drop the stick on a patch of unburned grass. The bird then feasts on the small animals that flee from the subsequent fire.
 
[HEADING:C]
Most tool-using behaviours are a means of extracting food, which may provide a clue as to how the mental abilities needed for tool use evolved. The predominant explanation is based on the proverb that ''necessity is the mother of invention''. Essentially, brain tissue is energetically expensive, so animals should have evolved only the necessary intellectual capabilities required to overcome the challenges they face in their environment. Consider a hypothetical duck grazing on a seemingly endless supply of grass. Being particularly intelligent will not help the duck eat more grass. In contrast, other species, such as birds of prey, live in a more challenging environment, where food may be distributed erratically, hidden from view or highly mobile. The food itself may be quite intelligent. So, if there are not enough resources to feed all individuals, then only the smartest in each generation will live and reproduce.
 
[HEADING: D]
New Caledonian crows boast many different tools in their tool kit. They use a hooked tool made by removing all but one of the side branches from a twig. They fashion serrated rakes (using their beaks as scissors) from stiff, leathery pandanus leaves. They also make probes by modifying their own moulted feathers. Each tool is used in slightly different ways to pull grubs from deep within tree trunks. The crows carry their favourite tool from one foraging site to the next. They also store their tools for later re-use in a secure place on their perch.
 
[HEADING: E]
Problem-solving abilities have traditionally been thought to be beyond the reach of animals. Nevertheless, birds are coming up with innovative solutions all the time. Recently, New Caledonian crows were observed moulding a piece of wire, something they had never seen before, into a hook and then using it to retrieve food.

 
[HEADING: F]
Literally hundreds of such reports have accumulated in back copies of scientific journals. Recently, a team of biologists from McGill University in Canada collated them and compared the frequency and size of innovations with the size of the birds'' forebrain (the brain-area responsible for higher-order information processing) relative to the hindbrain. The team uncovered a clear relationship: birds with relatively large forebrains are able to invent fresh solutions to ecological challenges, and to exploit the discoveries and inventions of others, more often than birds with relatively small forebrains.
 
[HEADING: G]
Intelligence in birds may also arise as a result of selection to overcome the dynamic challenges of communal living. Since this involves competition between group members, to be successful, a social animal may need to be able to reflect on its own intentions, as well as those of others. The consequence of being part of a community may be the evolution of a distinctly ''political'' brain. What better way to exercise a political brain than to be deceitful! Perhaps the best example of deception among birds comes from the white-winged choughs. Choughs are cooperative breeders – that is, they form a communal group consisting of one breeding-pair and up to 15 non-breeding ''helpers''. However, because young choughs have so little enthusiasm for foraging, or gathering food, they are often too hungry to help. And because it is socially unacceptable to be part of a group and provide little help, young choughs often act deceptively. For example, when an adult is watching, a young chough will place some food in the mouth of a hungry chick – but it does not release the food. Instead, it waits until the adult departs and then eats it. A chough can also help the group by preening* the chicks. Interestingly, it is more likely to preen the chicks if another bird can see it do so. A chough that has been sitting totally still on the nest while the rest of the group is foraging out of sight will comically spring up and frantically start to preen the chicks as soon as some of its group members come into view. It is likely that these young choughs are only motivated to help when others are watching because they are concerned about their social status. Choughs need other choughs to like them as they cannot breed without them.

preening*: cleaning and arranging feathers on birds',
    969,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'b3443295-8efd-44c1-93c3-affb6e3bc93e',
    'reading',
    '1e2ad7c6-e5a8-410b-9061-a0ce4b449779',
    14,
    'matching_headings',
    'Question 14',
    '["The theory linking capacity for tool use in birds and survival","The influence of humans on tool use","The theory linking cognitive ability and living in a society","Reviewing long-held beliefs","One species'' multiple tool-using techniques","How some birds trick each other","Physiological evidence of birds'' intelligence","Several examples of birds who use tools","Intelligence helps birds to remember"]'::jsonb,
    'D',
    'This paragraph explains how the belief that only humans possess intelligence and traits like tool use, language, and deception has been challenged. The author presents new research that forces us to reconsider or "review" these old assumptions.',
    1,
    '{"explanation":"This paragraph explains how the belief that only humans possess intelligence and traits like tool use, language, and deception has been challenged. The author presents new research that forces us to reconsider or \"review\" these old assumptions.","instruction":"<p>The passage has seven paragraphs. Choose the correct heading for each paragraph from the list of headings below.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '178432c5-0b1b-4ee2-83a5-b8ece5a27342',
    'reading',
    '1e2ad7c6-e5a8-410b-9061-a0ce4b449779',
    15,
    'matching_headings',
    'Question 15',
    '["The theory linking capacity for tool use in birds and survival","The influence of humans on tool use","The theory linking cognitive ability and living in a society","Reviewing long-held beliefs","One species'' multiple tool-using techniques","How some birds trick each other","Physiological evidence of birds'' intelligence","Several examples of birds who use tools","Intelligence helps birds to remember"]'::jsonb,
    'H',
    'This paragraph gives multiple examples of birds using tools, such as woodpecker finches, Australian birds, and black kites. The focus is on listing various species and their tool-using behaviors.',
    1,
    '{"explanation":"This paragraph gives multiple examples of birds using tools, such as woodpecker finches, Australian birds, and black kites. The focus is on listing various species and their tool-using behaviors.","instruction":"<p>The passage has seven paragraphs. Choose the correct heading for each paragraph from the list of headings below.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'f64d5f64-aa4b-4ef3-a089-e32bc70dfba9',
    'reading',
    '1e2ad7c6-e5a8-410b-9061-a0ce4b449779',
    16,
    'matching_headings',
    'Question 16',
    '["The theory linking capacity for tool use in birds and survival","The influence of humans on tool use","The theory linking cognitive ability and living in a society","Reviewing long-held beliefs","One species'' multiple tool-using techniques","How some birds trick each other","Physiological evidence of birds'' intelligence","Several examples of birds who use tools","Intelligence helps birds to remember"]'::jsonb,
    'A',
    'This paragraph presents a theory suggesting that tool use developed in birds as a survival strategy in challenging environments. It connects intelligence (used for tool use) to survival advantages.',
    1,
    '{"explanation":"This paragraph presents a theory suggesting that tool use developed in birds as a survival strategy in challenging environments. It connects intelligence (used for tool use) to survival advantages.","instruction":"<p>The passage has seven paragraphs. Choose the correct heading for each paragraph from the list of headings below.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd1b8a11b-b83b-482c-acaf-be864fc9a41e',
    'reading',
    '1e2ad7c6-e5a8-410b-9061-a0ce4b449779',
    17,
    'matching_headings',
    'Question 17',
    '["The theory linking capacity for tool use in birds and survival","The influence of humans on tool use","The theory linking cognitive ability and living in a society","Reviewing long-held beliefs","One species'' multiple tool-using techniques","How some birds trick each other","Physiological evidence of birds'' intelligence","Several examples of birds who use tools","Intelligence helps birds to remember"]'::jsonb,
    'E',
    'This paragraph focuses entirely on New Caledonian crows and the variety of tools they use. It describes several distinct tools and how they use them differently, which directly matches the heading.',
    1,
    '{"explanation":"This paragraph focuses entirely on New Caledonian crows and the variety of tools they use. It describes several distinct tools and how they use them differently, which directly matches the heading.","instruction":"<p>The passage has seven paragraphs. Choose the correct heading for each paragraph from the list of headings below.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'a53f7406-9003-4284-8678-03f4515906dd',
    'reading',
    '1e2ad7c6-e5a8-410b-9061-a0ce4b449779',
    18,
    'matching_headings',
    'Question 18',
    '["The theory linking capacity for tool use in birds and survival","The influence of humans on tool use","The theory linking cognitive ability and living in a society","Reviewing long-held beliefs","One species'' multiple tool-using techniques","How some birds trick each other","Physiological evidence of birds'' intelligence","Several examples of birds who use tools","Intelligence helps birds to remember"]'::jsonb,
    'G',
    'This paragraph introduces the idea that birds can solve new problems using innovative thinking. The mention of shaping wire into a hook—something entirely unfamiliar—serves as strong evidence of cognitive ability.',
    1,
    '{"explanation":"This paragraph introduces the idea that birds can solve new problems using innovative thinking. The mention of shaping wire into a hook—something entirely unfamiliar—serves as strong evidence of cognitive ability.","instruction":"<p>The passage has seven paragraphs. Choose the correct heading for each paragraph from the list of headings below.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'aa659c21-f401-4b10-a9c2-b31abe2cf646',
    'reading',
    '1e2ad7c6-e5a8-410b-9061-a0ce4b449779',
    19,
    'matching_headings',
    'Question 19',
    '["The theory linking capacity for tool use in birds and survival","The influence of humans on tool use","The theory linking cognitive ability and living in a society","Reviewing long-held beliefs","One species'' multiple tool-using techniques","How some birds trick each other","Physiological evidence of birds'' intelligence","Several examples of birds who use tools","Intelligence helps birds to remember"]'::jsonb,
    'C',
    'This paragraph presents findings from research showing that birds with larger forebrains are more capable of solving problems and using social learning. This links intelligence with social living and cooperation.',
    1,
    '{"explanation":"This paragraph presents findings from research showing that birds with larger forebrains are more capable of solving problems and using social learning. This links intelligence with social living and cooperation.","instruction":"<p>The passage has seven paragraphs. Choose the correct heading for each paragraph from the list of headings below.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '495158b4-4a63-47f1-99d6-719a83e47a76',
    'reading',
    '1e2ad7c6-e5a8-410b-9061-a0ce4b449779',
    20,
    'matching_headings',
    'Question 20',
    '["The theory linking capacity for tool use in birds and survival","The influence of humans on tool use","The theory linking cognitive ability and living in a society","Reviewing long-held beliefs","One species'' multiple tool-using techniques","How some birds trick each other","Physiological evidence of birds'' intelligence","Several examples of birds who use tools","Intelligence helps birds to remember"]'::jsonb,
    'F',
    'This paragraph explains how white-winged choughs use deception to protect their reputation in the group. They pretend to help when others are watching, which shows socially motivated trickery.',
    1,
    '{"explanation":"This paragraph explains how white-winged choughs use deception to protect their reputation in the group. They pretend to help when others are watching, which shows socially motivated trickery.","instruction":"<p>The passage has seven paragraphs. Choose the correct heading for each paragraph from the list of headings below.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '1ca42571-43e2-46bc-94c0-375033120686',
    'reading',
    '1e2ad7c6-e5a8-410b-9061-a0ce4b449779',
    21,
    'matching_info',
    'Keeping tools that they like to use',
    '["white-winged choughs","black kites","New Caledonian crows"]'::jsonb,
    'C',
    'New Caledonian crows were seen carrying their favorite tools from one place to another and even storing them for later use. This shows that they keep tools they like and use them repeatedly, which is unusual and intelligent behavior for birds.',
    1,
    '{"explanation":"New Caledonian crows were seen carrying their favorite tools from one place to another and even storing them for later use. This shows that they keep tools they like and use them repeatedly, which is unusual and intelligent behavior for birds.","fromPassage":"The crows carry their favourite tool from one foraging site to the next. They also store their tools for later re-use in a secure place on their perch.","instruction":"<p>Look at the following characteristics (Questions 21-26) and the list of birds below. Match each characteristic with the correct bird, A, B, or C. Choose the correct letter, A, B, or C, in boxes 21-26.</p><p><strong>NB</strong>&nbsp;You may use any letter more than once.</p>","context":"<p><strong>List of Birds:</strong></p><p>A. white-winged choughs</p><p>B. black kites</p><p>C. New Caledonian crows</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '76971117-68c3-4fc7-ba76-0b2f476e01ee',
    'reading',
    '1e2ad7c6-e5a8-410b-9061-a0ce4b449779',
    22,
    'matching_info',
    'Drawing out their prey by frightening it',
    '["white-winged choughs","black kites","New Caledonian crows"]'::jsonb,
    'B',
    'Black kites use a clever hunting method by dropping bait into water. This scares the fish and brings them to the surface, making them easier to catch. This behavior involves drawing prey out by frightening it.',
    1,
    '{"explanation":"Black kites use a clever hunting method by dropping bait into water. This scares the fish and brings them to the surface, making them easier to catch. This behavior involves drawing prey out by frightening it.","fromPassage":"Black kites have been reported dropping bait into lakes to bring fish to the surface of the water, thereby making them easier to catch.","instruction":"<p>Look at the following characteristics (Questions 21-26) and the list of birds below. Match each characteristic with the correct bird, A, B, or C. Choose the correct letter, A, B, or C, in boxes 21-26.</p><p><strong>NB</strong>&nbsp;You may use any letter more than once.</p>","context":"<p><strong>List of Birds:</strong></p><p>A. white-winged choughs</p><p>B. black kites</p><p>C. New Caledonian crows</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '21e71db0-7218-496a-af91-b251c45e1815',
    'reading',
    '1e2ad7c6-e5a8-410b-9061-a0ce4b449779',
    23,
    'matching_info',
    'The use of tools to remove the outer covering from food',
    '["white-winged choughs","black kites","New Caledonian crows"]'::jsonb,
    'A',
    'The passage explains that New Caledonian crows use several specially made tools to extract grubs from deep inside tree trunks. This involves removing the outer layer of food sources with tools, which shows advanced tool use.',
    1,
    '{"explanation":"The passage explains that New Caledonian crows use several specially made tools to extract grubs from deep inside tree trunks. This involves removing the outer layer of food sources with tools, which shows advanced tool use.","fromPassage":"Each tool is used in slightly different ways to pull grubs from deep within tree trunks.","instruction":"<p>Look at the following characteristics (Questions 21-26) and the list of birds below. Match each characteristic with the correct bird, A, B, or C. Choose the correct letter, A, B, or C, in boxes 21-26.</p><p><strong>NB</strong>&nbsp;You may use any letter more than once.</p>","context":"<p><strong>List of Birds:</strong></p><p>A. white-winged choughs</p><p>B. black kites</p><p>C. New Caledonian crows</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'f7755b53-640e-4766-923e-cf0b75ed5102',
    'reading',
    '1e2ad7c6-e5a8-410b-9061-a0ce4b449779',
    24,
    'matching_info',
    'Using food to attract their prey',
    '["white-winged choughs","black kites","New Caledonian crows"]'::jsonb,
    'B',
    'Black kites attract their prey by dropping bait into the water. This bait acts as a lure to bring fish to the surface, so they can catch them easily. It’s a clever use of food to catch more food.',
    1,
    '{"explanation":"Black kites attract their prey by dropping bait into the water. This bait acts as a lure to bring fish to the surface, so they can catch them easily. It’s a clever use of food to catch more food.","fromPassage":"Black kites have been reported dropping bait into lakes to bring fish to the surface of the water, thereby making them easier to catch.","instruction":"<p>Look at the following characteristics (Questions 21-26) and the list of birds below. Match each characteristic with the correct bird, A, B, or C. Choose the correct letter, A, B, or C, in boxes 21-26.</p><p><strong>NB</strong>&nbsp;You may use any letter more than once.</p>","context":"<p><strong>List of Birds:</strong></p><p>A. white-winged choughs</p><p>B. black kites</p><p>C. New Caledonian crows</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '419cfeec-eb82-4b98-afa6-5401647e0846',
    'reading',
    '1e2ad7c6-e5a8-410b-9061-a0ce4b449779',
    25,
    'matching_info',
    'The use of unfamiliar materials to make tools',
    '["white-winged choughs","black kites","New Caledonian crows"]'::jsonb,
    'C',
    'These crows were observed shaping a piece of wire—something completely unfamiliar to them—into a hook. This shows they can make tools from new materials they’ve never encountered before.',
    1,
    '{"explanation":"These crows were observed shaping a piece of wire—something completely unfamiliar to them—into a hook. This shows they can make tools from new materials they’ve never encountered before.","fromPassage":"Recently, New Caledonian crows were observed moulding a piece of wire, something they had never seen before, into a hook and then using it to retrieve food.","instruction":"<p>Look at the following characteristics (Questions 21-26) and the list of birds below. Match each characteristic with the correct bird, A, B, or C. Choose the correct letter, A, B, or C, in boxes 21-26.</p><p><strong>NB</strong>&nbsp;You may use any letter more than once.</p>","context":"<p><strong>List of Birds:</strong></p><p>A. white-winged choughs</p><p>B. black kites</p><p>C. New Caledonian crows</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '568e61fc-926e-4d5e-890f-23cc085fd75d',
    'reading',
    '1e2ad7c6-e5a8-410b-9061-a0ce4b449779',
    26,
    'matching_info',
    'Engaging in certain activities for the benefit of observers',
    '["white-winged choughs","black kites","New Caledonian crows"]'::jsonb,
    'A',
    'Young white-winged choughs were seen pretending to help (like preening chicks) only when others were watching. This shows they care about what others think and want to appear helpful, especially in front of observers.',
    1,
    '{"explanation":"Young white-winged choughs were seen pretending to help (like preening chicks) only when others were watching. This shows they care about what others think and want to appear helpful, especially in front of observers.","fromPassage":"A chough that has been sitting totally still on the nest while the rest of the group is foraging out of sight will comically spring up and frantically start to preen the chicks as soon as some of its group members come into view.","instruction":"<p>Look at the following characteristics (Questions 21-26) and the list of birds below. Match each characteristic with the correct bird, A, B, or C. Choose the correct letter, A, B, or C, in boxes 21-26.</p><p><strong>NB</strong>&nbsp;You may use any letter more than once.</p>","context":"<p><strong>List of Birds:</strong></p><p>A. white-winged choughs</p><p>B. black kites</p><p>C. New Caledonian crows</p>"}'::jsonb
);

