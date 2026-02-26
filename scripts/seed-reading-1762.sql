-- ============================================
-- Auto-generated seed for: Day 14: Biophilic Design
-- Source API ID: 1762
-- Generated: 2026-02-26T11:43:44.285Z
-- ============================================

-- ============================================
-- Day 14: Biophilic Design - Part 2: Biophilic Design
-- ============================================

INSERT INTO public.tests (id, title, description, difficulty_level, is_published)
VALUES (
    'df9043c9-c783-4614-8eea-70931347f34a',
    'Day 14: Biophilic Design - Part 2: Biophilic Design',
    'Cambridge IELTS - Biophilic Design',
    'medium',
    true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count, time_limit)
VALUES (
    'ec14ba98-282e-4635-a86b-892d02e559ee',
    'df9043c9-c783-4614-8eea-70931347f34a',
    1,
    'Biophilic Design',
    'A 
The movement related to green architecture, has gained much momentum within the building community in recent years. The premise of biophilic design seeks both to avoid or minimize harmful impacts on the natural environment, and equally importantly, to provide and restore beneficial contacts between people and nature in the built environment.

B
People have a psychologically developed need to commune with nature but this has frequently been neglected. All too often, architects have put creative originality before the needs of the people who have to live and work in their futuristic constructions, with scant regard for emotional, as well as practical, considerations. Biophilic design does not advocate tree houses or cave-dwelling, but it does provide the nature-based features that maximize human functioning and health. Though not technically a biophilic design, Fallingwater - the stunning house in rural Pennsylvania designed in the 1930s by Frank Lloyd Wright - arguably speaks to the human soul much more than the box-like blocks of flats designed by his contemporary Le Corbusier.

C 
In the modern world, much of our built environment is obstructing the age-old connection between humans and nature. The rates of technological progress are far exceeding rates of psychological evolution, leaving us ill-equipped to cope with our lifestyle, which in turn leads to increased stress. Because biophilia attempts to integrate basic and current needs, it can alleviate the difficulties caused by the brain''s constant attempts to function in a modern environment it has not yet evolved to handle. For example, one crucial element of the natural landscape to human health is sunlight. We are evolutionarily programmed to respond positively to sunny areas over dark or overcast ones, and sense that they will foster restoration, improve emotional well-being and promote health.

D 
Because of its tremendous impact on human psychology, biophilic design plays a vital role in healthcare and healthcare delivery. The current healthcare system contains many flaws, especially in its physical spaces. Hospitals, clinics, and offices are high-stress environments for patients, visitors and healthcare professionals alike. One well-known study looked at the impact of nature on patients after surgery. One group had a view of a tree; the others had a window looking onto a brick wall. The first group had shorter hospital stays, received fewer negative comments from the nurses, required fewer analgesics, and had slightly fewer post-operative complications.

E 
As a consequence of this and other studies, nature and nature-based design have been integrated into the physical design of many hospitals. For example, Dartmouth-Hitchcock Medical Center (DHMC) in New Hampshire boasts an atrium design, illuminating the entire facility. Natural elements also permeate the building, including wood, stone, and numerous live plants. While DHMC was built to incorporate these qualities, other hospitals have had biophilic features added to existing structures. The application of biophilia’s concepts to interior design in hospitals has increased substantially as administrators have witnessed patients’ positive responses to nature.

F 
Many existing buildings contain biophilic elements, but only a few have been built with the specific idea of biophilic design in mind. One such building is the Adam Joseph Lewis Center for Environmental Studies at Oberlin College, in Ohio. The director of Oberlin’s Environmental Studies Program, David Orr, explained the building’s goals were ‘to create not just a place for classes but rather a building that would help to redefine the relationship between humankind and the environment — one that would expand our sense of ecological possibilities’. The Lewis Center is sustainable in a broader sense than in the typical application of the word. It harnesses solar power, utilizes both active and passive air systems, and monitors the weather to adapt to conditions. The Center’s ‘Living Machine’ treats wastewater by combining traditional wastewater technology with wetland ecosystems’ purification processes, producing water that can be used in the toilets and for irrigation. In their design, Orr and his team of architects engineered a healthy and comfortable space for students, while ensuring the surrounding environment was undamaged.

G 
Another example is the University of Guelph-Humber building in Ontario, Canada. It contains a centrally located bio-wall, vertically spanning the building. The wall is covered in dense foliage which not only connects people to nature on the inside of the building, but also functions as a new filtration system prototype. The wall purifies the air and has the potential to fulfill the building’s fresh air intake requirements. This is another example of how biophilic design principles can be applied in a variety of contexts. These examples prove that the built environment need not interfere with biological human needs to commune with nature, nor with existing ecological systems.

H 
Ancient architects built for their cultures, which were almost always more in touch with the earth than western society of the present. They mimicked nature’s forms, producing magnificent structures with which we are still awed - though biophilic design is a novel concept, they certainly employed some of its recommendations. Today, we can add another layer to this tradition and ensure maximal benefit for our planet and ourselves. ',
    835,
    1200
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'eee6c001-1ad3-4b9f-b81b-9a4f6450fa4b',
    'reading',
    'ec14ba98-282e-4635-a86b-892d02e559ee',
    14,
    'matching_info',
    'a description of how rapid change has a negative effect on people',
    '["","","","","","","",""]'::jsonb,
    'C',
    'Paragraph C explains that fast technological changes are happening faster than humans can adapt, which causes negative psychological effects. This directly matches the idea of rapid change harming people.',
    1,
    '{"explanation":"Paragraph C explains that fast technological changes are happening faster than humans can adapt, which causes negative psychological effects. This directly matches the idea of rapid change harming people.","fromPassage":"The rates of technological progress are far exceeding rates of psychological evolution, leaving us ill-equipped to cope with our lifestyle, which in turn leads to increased stress.","instruction":"<p>Which paragraph contains the following information?</p><p>Write the correct letter, <strong>A-H</strong>, in boxes 14-19 on your answer sheet.</p><p><strong>NB </strong>You may use any letter more than once.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'd7f6b0c5-4edc-4701-a132-ae43c0c12cd7',
    'reading',
    'ec14ba98-282e-4635-a86b-892d02e559ee',
    15,
    'matching_info',
    'a reference to an architect whose designs were uncharacteristic of biophilia',
    '["","","","","","","",""]'::jsonb,
    'B',
    'Paragraph B mentions Le Corbusier, whose modernist, box-like designs did not reflect biophilic principles. He is used as an example of an architect whose work was not aligned with biophilia.',
    1,
    '{"explanation":"Paragraph B mentions Le Corbusier, whose modernist, box-like designs did not reflect biophilic principles. He is used as an example of an architect whose work was not aligned with biophilia.","fromPassage":"Though not technically a biophilic design, Fallingwater… speaks to the human soul much more than the box-like blocks of flats designed by his contemporary Le Corbusier.","instruction":"<p>Which paragraph contains the following information?</p><p>Write the correct letter, <strong>A-H</strong>, in boxes 14-19 on your answer sheet.</p><p><strong>NB </strong>You may use any letter more than once.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '06963dab-666d-4aef-97d3-74198251abc5',
    'reading',
    'ec14ba98-282e-4635-a86b-892d02e559ee',
    16,
    'matching_info',
    'a definition of the two main aims of biophilia',
    '["","","","","","","",""]'::jsonb,
    'A',
    'Paragraph A states two main aims of biophilic design: avoiding or reducing harm to nature and restoring positive contact between humans and nature. This is exactly what the question refers to.',
    1,
    '{"explanation":"Paragraph A states two main aims of biophilic design: avoiding or reducing harm to nature and restoring positive contact between humans and nature. This is exactly what the question refers to.","fromPassage":"The premise of biophilic design seeks both to avoid or minimize harmful impacts on the natural environment, and equally importantly, to provide and restore beneficial contacts between people and nature in the built environment.","instruction":"<p>Which paragraph contains the following information?</p><p>Write the correct letter, <strong>A-H</strong>, in boxes 14-19 on your answer sheet.</p><p><strong>NB </strong>You may use any letter more than once.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '0d04b505-74cc-49a3-9062-93b53c3a03fa',
    'reading',
    'ec14ba98-282e-4635-a86b-892d02e559ee',
    17,
    'matching_info',
    'a positive claim about early forms of architecture',
    '["","","","","","","",""]'::jsonb,
    'H',
    'Paragraph H praises ancient architects for creating structures influenced by nature and describes them positively, as “magnificent.” This is the positive claim about early architecture.',
    1,
    '{"explanation":"Paragraph H praises ancient architects for creating structures influenced by nature and describes them positively, as “magnificent.” This is the positive claim about early architecture.","fromPassage":"They mimicked nature’s forms, producing magnificent structures with which we are still awed - though biophilic design is a novel concept, they certainly employed some of its recommendations.","instruction":"<p>Which paragraph contains the following information?</p><p>Write the correct letter, <strong>A-H</strong>, in boxes 14-19 on your answer sheet.</p><p><strong>NB </strong>You may use any letter more than once.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '339dde61-ca48-41d1-b67a-28364465946e',
    'reading',
    'ec14ba98-282e-4635-a86b-892d02e559ee',
    18,
    'matching_info',
    'a reference to the fact that many architects are too focused on innovation',
    '["","","","","","","",""]'::jsonb,
    'B',
    'Paragraph B criticizes many architects for prioritizing creativity and originality over human needs. This matches the idea that architects focus too much on innovation.',
    1,
    '{"explanation":"Paragraph B criticizes many architects for prioritizing creativity and originality over human needs. This matches the idea that architects focus too much on innovation.","fromPassage":"All too often, architects have put creative originality before the needs of the people who have to live and work in their futuristic constructions, with scant regard for emotional, as well as practical, considerations.","instruction":"<p>Which paragraph contains the following information?</p><p>Write the correct letter, <strong>A-H</strong>, in boxes 14-19 on your answer sheet.</p><p><strong>NB </strong>You may use any letter more than once.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'e6c250a1-ec05-4259-b22f-dc195ad5e629',
    'reading',
    'ec14ba98-282e-4635-a86b-892d02e559ee',
    19,
    'matching_info',
    ' a description of features which conserve energy in a biophilic design',
    '["","","","","","","",""]'::jsonb,
    'F',
    'Paragraph F describes how the Lewis Center uses energy-saving features such as solar power and adaptive air systems. These are the energy-conserving elements mentioned.',
    1,
    '{"explanation":"Paragraph F describes how the Lewis Center uses energy-saving features such as solar power and adaptive air systems. These are the energy-conserving elements mentioned.","fromPassage":"It harnesses solar power, utilizes both active and passive air systems, and monitors the weather to adapt to conditions.","instruction":"<p>Which paragraph contains the following information?</p><p>Write the correct letter, <strong>A-H</strong>, in boxes 14-19 on your answer sheet.</p><p><strong>NB </strong>You may use any letter more than once.</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'fd2cca24-c492-49c3-9412-6f647ca3d118',
    'reading',
    'ec14ba98-282e-4635-a86b-892d02e559ee',
    20,
    'gap_fill',
    'Question 20',
    NULL,
    'technological',
    'Paragraph C mentions “technological progress” happening too fast for humans to adapt. The correct one-word answer is “technological.”',
    1,
    '{"explanation":"Paragraph C mentions “technological progress” happening too fast for humans to adapt. The correct one-word answer is “technological.”","fromPassage":"The rates of technological progress are far exceeding rates of psychological evolution, leaving us ill-equipped to cope with our lifestyle, which in turn leads to increased stress.","instruction":"<p>Complete the sentences. Write&nbsp;<strong>NO MORE THAN ONE WORD</strong>&nbsp;from the text for each answer</p>","context":"<p>In the modern world,&nbsp;&nbsp; ______ advancements are happening so quickly that humans are unable to adjust to them.</p><p>Biophilia can help us deal with the&nbsp; ______ &nbsp;caused by the difficulties of our current lifestyles.</p><p>People instinctively feel more comfortable in places which have plenty of&nbsp; ______ &nbsp;something which is necessary for health and well-being.</p><p>An experiment designed to test the effect of nature on patient recovery times found that those who could see a&nbsp;  ______ made a faster recovery.</p><p>There is a biophilic design feature in the University of Guelph-Humber building which improves the quality of the&nbsp; ______ .</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '9221353e-9676-4c86-b82b-4cf57bed31a0',
    'reading',
    'ec14ba98-282e-4635-a86b-892d02e559ee',
    21,
    'gap_fill',
    'Question 21',
    NULL,
    'stress',
    'Paragraph C states that our modern lifestyle creates stress, and biophilia helps reduce these difficulties.',
    1,
    '{"explanation":"Paragraph C states that our modern lifestyle creates stress, and biophilia helps reduce these difficulties.","fromPassage":"leaving us ill-equipped to cope with our lifestyle, which in turn leads to increased stress.","instruction":"<p>Complete the sentences. Write&nbsp;<strong>NO MORE THAN ONE WORD</strong>&nbsp;from the text for each answer</p>","context":"<p>In the modern world,&nbsp;&nbsp; ______ advancements are happening so quickly that humans are unable to adjust to them.</p><p>Biophilia can help us deal with the&nbsp; ______ &nbsp;caused by the difficulties of our current lifestyles.</p><p>People instinctively feel more comfortable in places which have plenty of&nbsp; ______ &nbsp;something which is necessary for health and well-being.</p><p>An experiment designed to test the effect of nature on patient recovery times found that those who could see a&nbsp;  ______ made a faster recovery.</p><p>There is a biophilic design feature in the University of Guelph-Humber building which improves the quality of the&nbsp; ______ .</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    '64443929-5a4e-42f1-ae08-76481d7c4f53',
    'reading',
    'ec14ba98-282e-4635-a86b-892d02e559ee',
    22,
    'gap_fill',
    'Question 22',
    NULL,
    'sunlight',
    'Paragraph C says humans prefer sunny areas because they promote well-being. Therefore, sunlight is necessary for comfort and health.',
    1,
    '{"explanation":"Paragraph C says humans prefer sunny areas because they promote well-being. Therefore, sunlight is necessary for comfort and health.","fromPassage":"For example, one crucial element of the natural landscape to human health is sunlight.","instruction":"<p>Complete the sentences. Write&nbsp;<strong>NO MORE THAN ONE WORD</strong>&nbsp;from the text for each answer</p>","context":"<p>In the modern world,&nbsp;&nbsp; ______ advancements are happening so quickly that humans are unable to adjust to them.</p><p>Biophilia can help us deal with the&nbsp; ______ &nbsp;caused by the difficulties of our current lifestyles.</p><p>People instinctively feel more comfortable in places which have plenty of&nbsp; ______ &nbsp;something which is necessary for health and well-being.</p><p>An experiment designed to test the effect of nature on patient recovery times found that those who could see a&nbsp;  ______ made a faster recovery.</p><p>There is a biophilic design feature in the University of Guelph-Humber building which improves the quality of the&nbsp; ______ .</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'c94f1ab8-4c9c-463c-9b7a-b3664df865a4',
    'reading',
    'ec14ba98-282e-4635-a86b-892d02e559ee',
    23,
    'gap_fill',
    'Question 23',
    NULL,
    'tree',
    'Paragraph D describes a study where patients who could see a tree recovered faster. This matches the required answer.',
    1,
    '{"explanation":"Paragraph D describes a study where patients who could see a tree recovered faster. This matches the required answer.","fromPassage":"One group had a view of a tree; the others had a window looking onto a brick wall.","instruction":"<p>Complete the sentences. Write&nbsp;<strong>NO MORE THAN ONE WORD</strong>&nbsp;from the text for each answer</p>","context":"<p>In the modern world,&nbsp;&nbsp; ______ advancements are happening so quickly that humans are unable to adjust to them.</p><p>Biophilia can help us deal with the&nbsp; ______ &nbsp;caused by the difficulties of our current lifestyles.</p><p>People instinctively feel more comfortable in places which have plenty of&nbsp; ______ &nbsp;something which is necessary for health and well-being.</p><p>An experiment designed to test the effect of nature on patient recovery times found that those who could see a&nbsp;  ______ made a faster recovery.</p><p>There is a biophilic design feature in the University of Guelph-Humber building which improves the quality of the&nbsp; ______ .</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'be510573-2b8b-4983-acf2-e33a063f6ac2',
    'reading',
    'ec14ba98-282e-4635-a86b-892d02e559ee',
    24,
    'gap_fill',
    'Question 24',
    NULL,
    'air',
    'Paragraph G explains that the bio-wall purifies the air inside the building. So the feature improves air quality.',
    1,
    '{"explanation":"Paragraph G explains that the bio-wall purifies the air inside the building. So the feature improves air quality.","fromPassage":"The wall purifies the air and has the potential to fulfill the building’s fresh air intake requirements.","instruction":"<p>Complete the sentences. Write&nbsp;<strong>NO MORE THAN ONE WORD</strong>&nbsp;from the text for each answer</p>","context":"<p>In the modern world,&nbsp;&nbsp; ______ advancements are happening so quickly that humans are unable to adjust to them.</p><p>Biophilia can help us deal with the&nbsp; ______ &nbsp;caused by the difficulties of our current lifestyles.</p><p>People instinctively feel more comfortable in places which have plenty of&nbsp; ______ &nbsp;something which is necessary for health and well-being.</p><p>An experiment designed to test the effect of nature on patient recovery times found that those who could see a&nbsp;  ______ made a faster recovery.</p><p>There is a biophilic design feature in the University of Guelph-Humber building which improves the quality of the&nbsp; ______ .</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'c1f4cfd2-81bf-4a9d-93b6-76180594f84c',
    'reading',
    'ec14ba98-282e-4635-a86b-892d02e559ee',
    25,
    'mcq_single',
    'Question 25',
    '[" It was the first educational establishment designed with biophilic principles."," It is beneficial for both students and the environment."," It has established new concepts for classroom design.","It aims to inspire new ways of thinking about the environment.","It provides solar power to other buildings in the surrounding area."]'::jsonb,
    'B,D',
    'Paragraph F shows that the Lewis Center is designed to benefit both students (healthy, comfortable learning space) and the environment (solar power, air systems, wastewater treatment).',
    1,
    '{"explanation":"Paragraph F shows that the Lewis Center is designed to benefit both students (healthy, comfortable learning space) and the environment (solar power, air systems, wastewater treatment).","fromPassage":"In their design, Orr and his team of architects engineered a healthy and comfortable space for students, while ensuring the surrounding environment was undamaged.","instruction":"<p>Choose <strong>TWO</strong> letters,<strong> A-E.</strong></p>","context":"<p>Which<strong> TWO</strong> of the following statements does the writer make about the Adam Joseph Lewis Center at Oberlin College?</p>"}'::jsonb
);

INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points, metadata)
VALUES (
    'b7153c09-960a-4fb1-84f3-9f3fee9c2dae',
    'reading',
    'ec14ba98-282e-4635-a86b-892d02e559ee',
    26,
    'mcq_single',
    'Question 26',
    '[" It was the first educational establishment designed with biophilic principles."," It is beneficial for both students and the environment."," It has established new concepts for classroom design.","It aims to inspire new ways of thinking about the environment.","It provides solar power to other buildings in the surrounding area."]'::jsonb,
    'B,D',
    'Paragraph F quotes David Orr, saying the building aims to inspire a new relationship with the environment and “expand our sense of ecological possibilities.” This matches option D.',
    1,
    '{"explanation":"Paragraph F quotes David Orr, saying the building aims to inspire a new relationship with the environment and “expand our sense of ecological possibilities.” This matches option D.","fromPassage":"The director of Oberlin’s Environmental Studies Program, David Orr, explained the building’s goals were ‘to create not just a place for classes but rather a building that would help to redefine the relationship between humankind and the environment — one that would expand our sense of ecological possibilities’.","instruction":"<p>Choose <strong>TWO</strong> letters,<strong> A-E.</strong></p>","context":"<p>Which<strong> TWO</strong> of the following statements does the writer make about the Adam Joseph Lewis Center at Oberlin College?</p>"}'::jsonb
);

