-- ============================================
-- IELTS Platform - Seed Data
-- Run AFTER both migration files
-- ============================================

-- ============================================
-- TESTS (3 tests: easy, medium, hard)
-- ============================================
INSERT INTO public.tests (id, title, description, difficulty_level, is_published) VALUES
('11111111-1111-1111-1111-111111111111', 'IELTS Practice Test 1', 'General training test covering all modules with standard difficulty', 'easy', true),
('22222222-2222-2222-2222-222222222222', 'IELTS Practice Test 2', 'Academic test with moderate difficulty passages and tasks', 'medium', true),
('33333333-3333-3333-3333-333333333333', 'IELTS Practice Test 3', 'Advanced academic test with complex passages and challenging tasks', 'hard', true);

-- ============================================
-- LISTENING SECTIONS (4 sections per test)
-- ============================================

-- Test 1 (Easy) - Listening Sections
INSERT INTO public.listening_sections (id, test_id, section_number, audio_url, audio_duration_seconds, transcript) VALUES
('a1000001-0000-0000-0000-000000000001', '11111111-1111-1111-1111-111111111111', 1, '/audio/test1/section1.mp3', 300, 'Section 1: A conversation between a student and a university accommodation officer about finding suitable housing near campus.'),
('a1000001-0000-0000-0000-000000000002', '11111111-1111-1111-1111-111111111111', 2, '/audio/test1/section2.mp3', 360, 'Section 2: A guided tour of a local community center describing facilities and membership options.'),
('a1000001-0000-0000-0000-000000000003', '11111111-1111-1111-1111-111111111111', 3, '/audio/test1/section3.mp3', 420, 'Section 3: A discussion between three students planning a group presentation on renewable energy sources.'),
('a1000001-0000-0000-0000-000000000004', '11111111-1111-1111-1111-111111111111', 4, '/audio/test1/section4.mp3', 450, 'Section 4: A university lecture on the history of public transportation systems in major cities.');

-- Test 2 (Medium) - Listening Sections
INSERT INTO public.listening_sections (id, test_id, section_number, audio_url, audio_duration_seconds, transcript) VALUES
('a2000001-0000-0000-0000-000000000001', '22222222-2222-2222-2222-222222222222', 1, '/audio/test2/section1.mp3', 310, 'Section 1: A phone call to a travel agency about booking a holiday package to Southeast Asia.'),
('a2000001-0000-0000-0000-000000000002', '22222222-2222-2222-2222-222222222222', 2, '/audio/test2/section2.mp3', 370, 'Section 2: A radio broadcast about changes to local recycling policies and waste management.'),
('a2000001-0000-0000-0000-000000000003', '22222222-2222-2222-2222-222222222222', 3, '/audio/test2/section3.mp3', 430, 'Section 3: A seminar discussion between a tutor and two students about research methodology.'),
('a2000001-0000-0000-0000-000000000004', '22222222-2222-2222-2222-222222222222', 4, '/audio/test2/section4.mp3', 460, 'Section 4: An academic lecture on the psychological effects of social media on adolescents.');

-- Test 3 (Hard) - Listening Sections
INSERT INTO public.listening_sections (id, test_id, section_number, audio_url, audio_duration_seconds, transcript) VALUES
('a3000001-0000-0000-0000-000000000001', '33333333-3333-3333-3333-333333333333', 1, '/audio/test3/section1.mp3', 320, 'Section 1: A conversation at a medical clinic about registering as a new patient and available services.'),
('a3000001-0000-0000-0000-000000000002', '33333333-3333-3333-3333-333333333333', 2, '/audio/test3/section2.mp3', 380, 'Section 2: A presentation about a new urban development project including residential and commercial zones.'),
('a3000001-0000-0000-0000-000000000003', '33333333-3333-3333-3333-333333333333', 3, '/audio/test3/section3.mp3', 440, 'Section 3: A discussion between researchers about the findings of a climate change study in Arctic regions.'),
('a3000001-0000-0000-0000-000000000004', '33333333-3333-3333-3333-333333333333', 4, '/audio/test3/section4.mp3', 470, 'Section 4: A lecture on neurolinguistics and how the brain processes multiple languages simultaneously.');

-- ============================================
-- LISTENING QUESTIONS - Test 1 (40 questions)
-- ============================================

-- Test 1 - Section 1 (Questions 1-10)
INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points) VALUES
('b1010001-0000-0000-0000-000000000001', 'listening', 'a1000001-0000-0000-0000-000000000001', 1, 'multiple_choice', 'What type of accommodation is the student looking for?', '["A. A shared apartment", "B. A single room in a hall of residence", "C. A homestay with a local family", "D. A studio apartment"]', 'B', 'The student mentions wanting to live in university halls for the first year.', 1),
('b1010001-0000-0000-0000-000000000002', 'listening', 'a1000001-0000-0000-0000-000000000001', 2, 'fill_in_blank', 'The monthly rent for the recommended option is £_____.', null, '485', 'The officer states the monthly cost is four hundred and eighty-five pounds.', 1),
('b1010001-0000-0000-0000-000000000003', 'listening', 'a1000001-0000-0000-0000-000000000001', 3, 'multiple_choice', 'What is included in the rent?', '["A. All meals", "B. Electricity and water only", "C. All utilities and internet", "D. Nothing extra"]', 'C', 'The officer confirms that all utilities including internet are covered.', 1),
('b1010001-0000-0000-0000-000000000004', 'listening', 'a1000001-0000-0000-0000-000000000001', 4, 'fill_in_blank', 'The deposit required is equivalent to _____ months rent.', null, '2', 'A two-month deposit is required before moving in.', 1),
('b1010001-0000-0000-0000-000000000005', 'listening', 'a1000001-0000-0000-0000-000000000001', 5, 'multiple_choice', 'When is the earliest move-in date?', '["A. 1st August", "B. 15th August", "C. 1st September", "D. 15th September"]', 'C', 'Move-in begins on the first of September for the new academic year.', 1),
('b1010001-0000-0000-0000-000000000006', 'listening', 'a1000001-0000-0000-0000-000000000001', 6, 'fill_in_blank', 'The hall of residence is located on _____ Road.', null, 'Greenfield', 'The accommodation is on Greenfield Road, a 10-minute walk from campus.', 1),
('b1010001-0000-0000-0000-000000000007', 'listening', 'a1000001-0000-0000-0000-000000000001', 7, 'multiple_choice', 'What facility is NOT available in the hall?', '["A. Gym", "B. Laundry room", "C. Common kitchen", "D. Swimming pool"]', 'D', 'The officer lists gym, laundry, and kitchen but does not mention a pool.', 1),
('b1010001-0000-0000-0000-000000000008', 'listening', 'a1000001-0000-0000-0000-000000000001', 8, 'fill_in_blank', 'The application deadline is _____ June.', null, '30th', 'Applications must be submitted by the 30th of June.', 1),
('b1010001-0000-0000-0000-000000000009', 'listening', 'a1000001-0000-0000-0000-000000000001', 9, 'multiple_choice', 'How should the student submit the application?', '["A. By email", "B. In person at the office", "C. Through the online portal", "D. By post"]', 'C', 'The officer directs the student to the online accommodation portal.', 1),
('b1010001-0000-0000-0000-000000000010', 'listening', 'a1000001-0000-0000-0000-000000000001', 10, 'fill_in_blank', 'The student''s reference number is _____.', null, 'STU7842', 'The officer provides reference number STU7842 for tracking.', 1);

-- Test 1 - Section 2 (Questions 11-20)
INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points) VALUES
('b1020001-0000-0000-0000-000000000001', 'listening', 'a1000001-0000-0000-0000-000000000002', 11, 'multiple_choice', 'What day does the community center open?', '["A. Monday to Friday only", "B. Every day of the week", "C. Monday to Saturday", "D. Weekdays and Sunday"]', 'B', 'The guide mentions the center is open seven days a week.', 1),
('b1020001-0000-0000-0000-000000000002', 'listening', 'a1000001-0000-0000-0000-000000000002', 12, 'fill_in_blank', 'Annual membership costs £_____.', null, '120', 'The standard annual membership fee is one hundred and twenty pounds.', 1),
('b1020001-0000-0000-0000-000000000003', 'listening', 'a1000001-0000-0000-0000-000000000002', 13, 'matching', 'Match each facility with its location in the building.', '{"items": ["Swimming pool", "Dance studio", "Cafe"], "options": ["Ground floor", "First floor", "Basement"]}', 'Basement,First floor,Ground floor', 'Swimming pool is in the basement, dance studio on the first floor, cafe on the ground floor.', 1),
('b1020001-0000-0000-0000-000000000004', 'listening', 'a1000001-0000-0000-0000-000000000002', 14, 'multiple_choice', 'What age group is the junior membership for?', '["A. Under 12", "B. Under 16", "C. Under 18", "D. Under 21"]', 'C', 'Junior membership is available for those under 18 years old.', 1),
('b1020001-0000-0000-0000-000000000005', 'listening', 'a1000001-0000-0000-0000-000000000002', 15, 'fill_in_blank', 'The center was originally built in _____.', null, '1985', 'The community center was originally constructed in 1985.', 1),
('b1020001-0000-0000-0000-000000000006', 'listening', 'a1000001-0000-0000-0000-000000000002', 16, 'multiple_choice', 'What new class is being introduced next month?', '["A. Yoga", "B. Pilates", "C. Kickboxing", "D. Pottery"]', 'D', 'A new pottery class is starting next month in the arts wing.', 1),
('b1020001-0000-0000-0000-000000000007', 'listening', 'a1000001-0000-0000-0000-000000000002', 17, 'fill_in_blank', 'The parking area has space for _____ cars.', null, '45', 'The car park accommodates forty-five vehicles.', 1),
('b1020001-0000-0000-0000-000000000008', 'listening', 'a1000001-0000-0000-0000-000000000002', 18, 'multiple_choice', 'What discount do members get at the cafe?', '["A. 5%", "B. 10%", "C. 15%", "D. 20%"]', 'B', 'Members receive a 10% discount on all cafe purchases.', 1),
('b1020001-0000-0000-0000-000000000009', 'listening', 'a1000001-0000-0000-0000-000000000002', 19, 'fill_in_blank', 'The center''s phone number is 0800 _____.', null, '555 3421', 'The contact number given is 0800 555 3421.', 1),
('b1020001-0000-0000-0000-000000000010', 'listening', 'a1000001-0000-0000-0000-000000000002', 20, 'multiple_choice', 'What event is held every Saturday morning?', '["A. Farmers market", "B. Book club", "C. Children''s sports club", "D. Art exhibition"]', 'A', 'A farmers market takes place every Saturday morning in the main hall.', 1);

-- Test 1 - Section 3 (Questions 21-30)
INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points) VALUES
('b1030001-0000-0000-0000-000000000001', 'listening', 'a1000001-0000-0000-0000-000000000003', 21, 'multiple_choice', 'What is the main topic of the group presentation?', '["A. Nuclear energy", "B. Renewable energy sources", "C. Fossil fuels", "D. Energy conservation"]', 'B', 'The students are planning a presentation on renewable energy sources.', 1),
('b1030001-0000-0000-0000-000000000002', 'listening', 'a1000001-0000-0000-0000-000000000003', 22, 'fill_in_blank', 'The presentation is due in _____ weeks.', null, '3', 'They mention the deadline is three weeks from now.', 1),
('b1030001-0000-0000-0000-000000000003', 'listening', 'a1000001-0000-0000-0000-000000000003', 23, 'multiple_choice', 'Who will cover the section on solar energy?', '["A. Maria", "B. James", "C. Chen", "D. All three"]', 'A', 'Maria volunteers to research and present the solar energy section.', 1),
('b1030001-0000-0000-0000-000000000004', 'listening', 'a1000001-0000-0000-0000-000000000003', 24, 'multiple_choice', 'What concern does James raise about the project?', '["A. The topic is too broad", "B. They need more team members", "C. The deadline is too soon", "D. They lack access to resources"]', 'A', 'James worries the topic is too broad and suggests narrowing focus.', 1),
('b1030001-0000-0000-0000-000000000005', 'listening', 'a1000001-0000-0000-0000-000000000003', 25, 'fill_in_blank', 'They agree the presentation should last _____ minutes.', null, '20', 'The group decides on a twenty-minute presentation.', 1),
('b1030001-0000-0000-0000-000000000006', 'listening', 'a1000001-0000-0000-0000-000000000003', 26, 'multiple_choice', 'What visual aid will they primarily use?', '["A. Posters", "B. Handouts", "C. PowerPoint slides", "D. Video clips"]', 'C', 'They agree to use PowerPoint slides as the main visual aid.', 1),
('b1030001-0000-0000-0000-000000000007', 'listening', 'a1000001-0000-0000-0000-000000000003', 27, 'fill_in_blank', 'Chen will focus on _____ energy in his section.', null, 'wind', 'Chen takes responsibility for the wind energy section.', 1),
('b1030001-0000-0000-0000-000000000008', 'listening', 'a1000001-0000-0000-0000-000000000003', 28, 'multiple_choice', 'Where will they meet to rehearse?', '["A. The library", "B. The student union", "C. Maria''s apartment", "D. The lecture hall"]', 'A', 'They plan to rehearse in the library study room.', 1),
('b1030001-0000-0000-0000-000000000009', 'listening', 'a1000001-0000-0000-0000-000000000003', 29, 'fill_in_blank', 'The presentation counts for _____% of their final grade.', null, '25', 'The presentation is worth twenty-five percent of the final grade.', 1),
('b1030001-0000-0000-0000-000000000010', 'listening', 'a1000001-0000-0000-0000-000000000003', 30, 'multiple_choice', 'What does James suggest adding to make it more engaging?', '["A. A quiz for the audience", "B. A demonstration", "C. Case studies from different countries", "D. Guest speaker"]', 'C', 'James suggests including case studies from various countries.', 1);

-- Test 1 - Section 4 (Questions 31-40)
INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points) VALUES
('b1040001-0000-0000-0000-000000000001', 'listening', 'a1000001-0000-0000-0000-000000000004', 31, 'multiple_choice', 'When was the first public bus service introduced?', '["A. 1820s", "B. 1830s", "C. 1850s", "D. 1880s"]', 'B', 'The lecturer states the first public bus route began in the 1830s in Paris.', 1),
('b1040001-0000-0000-0000-000000000002', 'listening', 'a1000001-0000-0000-0000-000000000004', 32, 'fill_in_blank', 'The London Underground opened in _____.', null, '1863', 'The Metropolitan Railway in London opened in 1863.', 1),
('b1040001-0000-0000-0000-000000000003', 'listening', 'a1000001-0000-0000-0000-000000000004', 33, 'sentence_completion', 'According to the lecture, the main advantage of trams was their _____ compared to horse-drawn carriages.', null, 'speed and reliability', 'Trams offered greater speed and reliability over horse-drawn transport.', 1),
('b1040001-0000-0000-0000-000000000004', 'listening', 'a1000001-0000-0000-0000-000000000004', 34, 'multiple_choice', 'What factor most influenced the decline of tram systems?', '["A. Cost of maintenance", "B. Rise of private car ownership", "C. Safety concerns", "D. Environmental regulations"]', 'B', 'The rise of private cars in the mid-20th century led to tram decline.', 1),
('b1040001-0000-0000-0000-000000000005', 'listening', 'a1000001-0000-0000-0000-000000000004', 35, 'fill_in_blank', 'The first electric subway system was built in _____.', null, 'Budapest', 'Budapest opened the first electric underground railway in 1896.', 1),
('b1040001-0000-0000-0000-000000000006', 'listening', 'a1000001-0000-0000-0000-000000000004', 36, 'multiple_choice', 'What percentage of city commuters used public transport in the 1950s?', '["A. About 40%", "B. About 50%", "C. About 60%", "D. About 70%"]', 'D', 'Approximately 70% of urban commuters relied on public transport in the 1950s.', 1),
('b1040001-0000-0000-0000-000000000007', 'listening', 'a1000001-0000-0000-0000-000000000004', 37, 'sentence_completion', 'Modern cities are now investing in _____ to reduce carbon emissions.', null, 'electric bus fleets', 'Cities are transitioning to electric bus fleets as part of green initiatives.', 1),
('b1040001-0000-0000-0000-000000000008', 'listening', 'a1000001-0000-0000-0000-000000000004', 38, 'multiple_choice', 'Which city does the lecturer cite as a model for integrated transport?', '["A. Tokyo", "B. London", "C. Singapore", "D. New York"]', 'C', 'Singapore is highlighted as a model for seamless integrated transport.', 1),
('b1040001-0000-0000-0000-000000000009', 'listening', 'a1000001-0000-0000-0000-000000000004', 39, 'fill_in_blank', 'The concept of "mobility as a _____" is transforming urban planning.', null, 'service', 'Mobility as a Service (MaaS) is the emerging concept discussed.', 1),
('b1040001-0000-0000-0000-000000000010', 'listening', 'a1000001-0000-0000-0000-000000000004', 40, 'multiple_choice', 'What is the lecturer''s prediction for public transport by 2050?', '["A. It will become fully automated", "B. It will be replaced by flying taxis", "C. It will become free in most cities", "D. It will double in capacity worldwide"]', 'A', 'The lecturer predicts fully automated public transport systems by 2050.', 1);

-- ============================================
-- READING PASSAGES (3 per test)
-- ============================================

-- Test 1 (Easy) - Reading Passages
INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count) VALUES
('c1000001-0000-0000-0000-000000000001', '11111111-1111-1111-1111-111111111111', 1, 'The Rise of Urban Cycling',
'In recent years, cycling has experienced a remarkable resurgence in cities around the world. What was once seen primarily as a recreational activity or a mode of transport for those who could not afford cars has transformed into a mainstream commuting choice embraced by professionals, students, and families alike.

The shift towards urban cycling can be attributed to several factors. Growing awareness of environmental issues has prompted many city dwellers to seek greener alternatives to driving. The health benefits of regular cycling have been widely documented, with studies showing that cyclists enjoy improved cardiovascular fitness, reduced stress levels, and lower rates of obesity compared to non-cyclists.

Cities have responded to this trend by investing heavily in cycling infrastructure. Protected bike lanes, bike-sharing programs, and secure parking facilities have made cycling safer and more convenient than ever before. Copenhagen, often cited as the world''s most bicycle-friendly city, has over 390 kilometers of dedicated cycle tracks, and more than 60% of its residents cycle to work or school daily.

However, challenges remain. Safety concerns persist, particularly in cities where cycling infrastructure is still developing. Conflicts between cyclists and motorists continue to be a source of tension, and the lack of standardized traffic regulations for cyclists creates confusion on the roads.

Despite these challenges, the trend towards urban cycling shows no signs of slowing down. Experts predict that by 2030, cycling could account for up to 25% of all urban trips in major European cities, fundamentally reshaping how we think about urban mobility and city planning.', 234),

('c1000001-0000-0000-0000-000000000002', '11111111-1111-1111-1111-111111111111', 2, 'The Psychology of Color in Marketing',
'Color is one of the most powerful tools in a marketer''s arsenal, capable of influencing consumer behavior in ways that are both subtle and profound. Research has consistently shown that up to 90% of snap judgments about products can be based on color alone, making it a critical consideration in everything from logo design to product packaging.

The psychological associations of different colors have been studied extensively. Red, for instance, is commonly associated with urgency, excitement, and passion. It is frequently used in clearance sales and fast-food branding because it is believed to stimulate appetite and create a sense of urgency. Blue, on the other hand, evokes feelings of trust, security, and calm, which explains its prevalence in the branding of financial institutions and technology companies.

Green has strong associations with nature, health, and sustainability. As environmental consciousness has grown, many brands have incorporated green into their visual identity to signal their commitment to eco-friendly practices. Yellow is associated with optimism and warmth, though it can also cause eye fatigue when overused.

Cultural differences play a significant role in color perception. White, which symbolizes purity and cleanliness in Western cultures, is associated with mourning in many East Asian countries. Similarly, red signifies good fortune and prosperity in Chinese culture but can represent danger or warning in Western contexts.

The digital age has added new dimensions to color marketing. Screen displays can render millions of colors, allowing brands to create more nuanced and sophisticated color palettes. However, the challenge of maintaining color consistency across different devices and platforms remains a significant concern for digital marketers.

Modern research suggests that the relationship between color and consumer behavior is more complex than simple color-emotion associations. Factors such as personal preference, cultural background, and context all influence how individuals respond to color in marketing materials. Nevertheless, color remains one of the most immediate and impactful elements of visual communication in the commercial world.', 305),

('c1000001-0000-0000-0000-000000000003', '11111111-1111-1111-1111-111111111111', 3, 'Artificial Intelligence in Healthcare',
'The integration of artificial intelligence into healthcare represents one of the most significant technological advances of the twenty-first century. From diagnostic imaging to drug discovery, AI is transforming virtually every aspect of medical practice, promising to improve patient outcomes while reducing costs and increasing efficiency.

One of the most established applications of AI in healthcare is in medical imaging. Machine learning algorithms have been trained to analyze X-rays, MRI scans, and CT images with remarkable accuracy, in some cases matching or exceeding the diagnostic capabilities of experienced radiologists. A landmark study published in Nature in 2020 demonstrated that an AI system could detect breast cancer in mammograms with greater accuracy than human readers, while also reducing false positives and false negatives.

AI is also revolutionizing drug discovery and development. Traditional drug development is a lengthy and expensive process, typically taking 10 to 15 years and costing billions of dollars. AI-powered platforms can analyze vast databases of molecular structures and biological data to identify promising drug candidates much more quickly. During the COVID-19 pandemic, AI tools played a crucial role in accelerating the development of vaccines and treatments.

In clinical settings, AI-powered decision support systems are helping doctors make more informed treatment decisions. These systems can analyze patient data, medical literature, and clinical guidelines to suggest diagnoses and treatment plans. Natural language processing enables AI to extract relevant information from electronic health records, saving clinicians valuable time.

However, the adoption of AI in healthcare is not without challenges. Concerns about data privacy and security are paramount, as healthcare data is among the most sensitive personal information. The ''black box'' nature of some AI algorithms raises questions about transparency and accountability in medical decision-making. There are also fears that AI could exacerbate existing health inequalities if the data used to train algorithms does not adequately represent diverse populations.

Regulatory frameworks are still evolving to keep pace with AI innovation in healthcare. The balance between encouraging innovation and ensuring patient safety remains a delicate one. Despite these challenges, the potential of AI to transform healthcare for the better is widely recognized, and investment in health AI continues to grow rapidly across the globe.', 348);

-- Test 2 (Medium) - Reading Passages
INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count) VALUES
('c2000001-0000-0000-0000-000000000001', '22222222-2222-2222-2222-222222222222', 1, 'The Economics of Space Tourism',
'Space tourism, once the exclusive domain of science fiction, is rapidly becoming a commercial reality. Companies such as SpaceX, Blue Origin, and Virgin Galactic have made significant strides in developing vehicles capable of carrying paying passengers beyond Earth''s atmosphere, ushering in a new era of commercial space travel.

The economics of space tourism are complex and evolving. Early flights have commanded prices in the hundreds of thousands to tens of millions of dollars per seat, placing them firmly in the realm of the ultra-wealthy. However, proponents argue that prices will decrease significantly as technology matures and competition increases, following a trajectory similar to that of commercial aviation in the early twentieth century.

The potential economic impact of a thriving space tourism industry extends far beyond ticket sales. Spaceport development creates construction and operational jobs in often economically disadvantaged regions. Supporting industries including specialized manufacturing, training facilities, and hospitality services all stand to benefit from increased space tourism activity.

Critics of space tourism raise valid concerns about its environmental impact. Rocket launches produce carbon dioxide and other pollutants, and the cumulative effect of frequent launches could contribute to atmospheric damage. The industry is aware of these concerns and is investing in the development of more sustainable propulsion systems, including those using liquid hydrogen and oxygen that produce only water as exhaust.

From a regulatory perspective, space tourism presents unique challenges. Questions of liability, insurance, and passenger safety in an environment where no comprehensive international framework exists are being addressed by organizations including the Federal Aviation Administration and the United Nations Office for Outer Space Affairs.

Despite the challenges, the trajectory of the space tourism industry appears firmly upward. Market analysts project the industry could be worth over 8 billion dollars by 2030, driven by technological advances, increasing competition, and growing public interest in space exploration.', 280),

('c2000001-0000-0000-0000-000000000002', '22222222-2222-2222-2222-222222222222', 2, 'The Science of Sleep',
'Sleep is one of the most fundamental biological processes, yet it remains one of the least understood aspects of human physiology. Despite spending roughly one-third of our lives asleep, scientists are only beginning to unravel the complex mechanisms that govern sleep and its critical role in maintaining physical and mental health.

The sleep cycle consists of several distinct stages, broadly categorized into non-rapid eye movement (NREM) sleep and rapid eye movement (REM) sleep. NREM sleep comprises three stages of progressively deeper sleep, during which the body repairs tissues, builds bone and muscle, and strengthens the immune system. REM sleep, characterized by rapid eye movements and vivid dreaming, is believed to play a crucial role in memory consolidation and emotional processing.

A typical night''s sleep involves four to six complete cycles, each lasting approximately 90 minutes. The composition of these cycles changes throughout the night, with deeper NREM sleep predominating in the early hours and REM sleep becoming more prominent towards morning. This architecture of sleep is influenced by two primary regulatory processes: the circadian rhythm, an internal biological clock synchronized to the 24-hour light-dark cycle, and sleep homeostasis, the increasing pressure to sleep that builds during waking hours.

The consequences of chronic sleep deprivation are far-reaching and well-documented. Insufficient sleep has been linked to an increased risk of cardiovascular disease, diabetes, obesity, and mental health disorders including depression and anxiety. Cognitive function deteriorates significantly with sleep loss, affecting attention, decision-making, and reaction time. Studies have shown that being awake for 24 hours produces cognitive impairment comparable to having a blood alcohol concentration of 0.1%, well above the legal driving limit in most countries.

Modern lifestyles pose significant challenges to healthy sleep patterns. The ubiquitous glow of electronic screens, irregular work schedules, and the cultural glorification of busyness all conspire to erode both the quantity and quality of sleep. The blue light emitted by smartphones and computers suppresses the production of melatonin, the hormone that signals the body to prepare for sleep, making it harder to fall asleep after evening screen use.

Sleep research has gained increasing attention and funding in recent years, reflecting growing recognition of sleep''s importance to public health. New technologies including wearable sleep trackers and smart mattresses are providing researchers and individuals with unprecedented data about sleep patterns, though experts caution that consumer devices may not always provide clinically accurate measurements.', 380),

('c2000001-0000-0000-0000-000000000003', '22222222-2222-2222-2222-222222222222', 3, 'Urbanization and Biodiversity',
'The rapid expansion of urban areas represents one of the most significant environmental challenges of our time. By 2050, an estimated 68% of the world''s population will live in cities, up from 55% today. This unprecedented wave of urbanization is having profound effects on biodiversity, both locally and globally, transforming landscapes and ecosystems in ways that are complex and often irreversible.

Urbanization affects biodiversity through several mechanisms. The most direct is habitat destruction: as cities expand, natural habitats are converted to built environments, displacing or eliminating the species that depend on them. Fragmentation of remaining natural areas creates isolated patches of habitat that may be too small to support viable populations of many species. The resulting ''island effect'' reduces genetic diversity and increases the vulnerability of populations to local extinction.

However, the relationship between urbanization and biodiversity is not simply one of destruction. Cities can and do support significant biodiversity, often in unexpected ways. Urban green spaces including parks, gardens, and green roofs provide habitat for a variety of plant and animal species. Some species have adapted remarkably well to urban environments, with urban populations of birds, foxes, and raccoons thriving alongside human residents.

The concept of ''biophilic design'' is gaining traction among urban planners and architects. This approach seeks to incorporate natural elements into the built environment, creating buildings and public spaces that support both human wellbeing and biodiversity. Green corridors connecting urban parks and natural areas allow wildlife to move through the city, maintaining genetic exchange between populations.

Research has shown that urban biodiversity provides important ecosystem services to city residents. Urban trees absorb air pollutants and reduce the urban heat island effect, while urban wetlands help manage stormwater and reduce flooding risk. Pollinators in urban gardens contribute to local food production, and exposure to urban nature has been linked to improved mental health outcomes.

The challenge for urban planners is to balance the demands of a growing population with the need to preserve and enhance urban biodiversity. Innovative approaches including vertical forests, rooftop meadows, and wildlife-friendly building designs offer promising solutions, but their widespread adoption requires changes in planning regulations, building codes, and public attitudes towards urban nature.', 350);

-- Test 3 (Hard) - Reading Passages
INSERT INTO public.reading_passages (id, test_id, passage_number, title, content, word_count) VALUES
('c3000001-0000-0000-0000-000000000001', '33333333-3333-3333-3333-333333333333', 1, 'Quantum Computing: Beyond Classical Limits',
'Quantum computing represents a fundamental departure from the classical computing paradigm that has dominated information technology for over half a century. While classical computers process information using bits that exist in one of two states - zero or one - quantum computers harness the principles of quantum mechanics to process information using quantum bits, or qubits, which can exist in multiple states simultaneously through a phenomenon known as superposition.

The theoretical foundations of quantum computing were laid in the early 1980s by physicist Richard Feynman, who recognized that quantum systems could not be efficiently simulated by classical computers and proposed a new type of computer that operated according to quantum mechanical principles. In 1994, mathematician Peter Shor developed an algorithm demonstrating that a quantum computer could factor large numbers exponentially faster than any known classical algorithm, with profound implications for cryptography and data security.

The power of quantum computing derives from two key quantum mechanical properties: superposition and entanglement. Superposition allows each qubit to represent both zero and one simultaneously, meaning that a system of n qubits can represent 2 to the power of n states at once. Entanglement creates correlations between qubits that have no classical equivalent, enabling quantum computers to process vast amounts of information in parallel.

Building practical quantum computers presents formidable engineering challenges. Qubits are extraordinarily sensitive to environmental disturbances, a problem known as decoherence, which causes quantum information to degrade rapidly. Current quantum computers must be cooled to temperatures near absolute zero and shielded from electromagnetic interference to maintain qubit coherence. Error correction in quantum systems is considerably more complex than in classical systems, requiring multiple physical qubits to create a single reliable logical qubit.

Despite these challenges, significant progress has been made. In 2019, Google claimed to have achieved ''quantum supremacy'' with its 53-qubit Sycamore processor, performing a calculation in 200 seconds that would have taken the world''s fastest supercomputer approximately 10,000 years. IBM, Microsoft, and numerous startups are pursuing different approaches to building quantum computers, including superconducting circuits, trapped ions, and topological qubits.

The potential applications of quantum computing span numerous fields. In pharmaceutical research, quantum computers could simulate molecular interactions with unprecedented accuracy, accelerating drug discovery. In materials science, they could model new materials with specific properties. Financial modeling, optimization problems in logistics, and advances in artificial intelligence are all areas where quantum computing is expected to make transformative contributions.

However, experts caution against overhyping quantum computing''s near-term potential. Current quantum computers are noisy and error-prone, and many of the most impactful applications will require machines with thousands or millions of stable qubits - far beyond current capabilities. The development of fault-tolerant quantum computers remains one of the grand challenges of twenty-first-century engineering.', 420),

('c3000001-0000-0000-0000-000000000002', '33333333-3333-3333-3333-333333333333', 2, 'The Anthropology of Food',
'Food is far more than mere sustenance. It is a lens through which we can examine virtually every aspect of human culture, society, and identity. The anthropological study of food reveals how what we eat, how we prepare it, and with whom we share it are deeply embedded in systems of meaning that reflect and reinforce social structures, power relations, and cultural values.

The concept of ''foodways'' encompasses the full spectrum of activities and beliefs surrounding food in a given culture. This includes not only the practical aspects of food production, preparation, and consumption, but also the symbolic meanings attached to particular foods, the social rituals that govern eating, and the economic systems that determine food access and distribution.

Claude Levi-Strauss, in his influential work on structuralism, proposed that cooking is a universal human activity that marks the transition from nature to culture. His ''culinary triangle'' model suggested that all cultures classify food along axes of raw versus cooked and fresh versus rotten, with these classifications reflecting deeper cognitive structures. While subsequent scholars have critiqued the rigidity of this model, it remains a foundational framework for understanding the cultural significance of food preparation.

The globalization of food systems has created new tensions between local food traditions and global culinary influences. On one hand, the worldwide availability of foods from diverse cultures has enriched diets and expanded culinary horizons. On the other hand, the homogenization of food production and distribution threatens traditional foodways and the biodiversity of local food systems. The concept of ''food sovereignty'' has emerged as a counterpoint to globalization, asserting the right of communities to define their own food systems based on local needs, cultures, and ecologies.

Food has also become a significant arena for the expression and negotiation of identity. Dietary choices increasingly serve as markers of social, ethical, and political identity. Veganism, organic consumption, and locavorism are not merely dietary preferences but statements about one''s relationship to the environment, animal welfare, and the global food system. Religious dietary laws, from kosher and halal to Hindu vegetarianism, continue to play a central role in defining community boundaries and expressing spiritual values.

The anthropology of food also intersects with issues of power and inequality. Access to nutritious food is unevenly distributed both within and between societies, and food insecurity remains a pressing global challenge. The concept of ''food deserts'' - urban areas lacking access to affordable, healthy food - highlights how socioeconomic factors shape dietary patterns and health outcomes. Meanwhile, the politics of food aid, agricultural subsidies, and trade agreements illustrate how food systems are embedded in broader structures of economic and political power.', 400),

('c3000001-0000-0000-0000-000000000003', '33333333-3333-3333-3333-333333333333', 3, 'Epigenetics: Beyond the Genetic Code',
'For decades, the central dogma of molecular biology held that the flow of genetic information was essentially unidirectional: DNA is transcribed into RNA, which is then translated into proteins. Genes were considered the fundamental units of heredity, and an organism''s characteristics were believed to be largely determined by the specific sequences of nucleotides in its DNA. The emerging field of epigenetics has fundamentally challenged this view, revealing a layer of biological regulation that operates above the level of the genetic code itself.

Epigenetics refers to heritable changes in gene expression that occur without alterations to the underlying DNA sequence. These changes are mediated by several mechanisms, the most well-studied of which are DNA methylation and histone modification. In DNA methylation, methyl groups are added to cytosine bases in the DNA, typically suppressing gene expression in the affected region. Histone modification involves chemical changes to the proteins around which DNA is wound, affecting how tightly the DNA is packaged and therefore how accessible it is for transcription.

The implications of epigenetic regulation are profound. It explains how cells with identical DNA can differentiate into the vastly different cell types that make up a complex organism - a neuron, a liver cell, and a skin cell all contain the same genetic information, but epigenetic modifications determine which genes are active in each cell type. This process of cellular differentiation is essential for normal development and is guided by a complex interplay of epigenetic signals.

Perhaps the most provocative finding in epigenetics is the evidence that some epigenetic changes can be transmitted across generations. Studies in both animals and humans have suggested that environmental exposures - including diet, stress, and toxins - can produce epigenetic modifications that affect not only the exposed individual but also their offspring and even subsequent generations. The Dutch Hunger Winter study, which examined the descendants of women who experienced famine during World War II, found increased rates of obesity and cardiovascular disease in the children and grandchildren of those who were malnourished during pregnancy.

Epigenetics also has significant implications for medicine. Aberrant epigenetic modifications have been implicated in a wide range of diseases, including cancer, autoimmune disorders, and neurological conditions. Unlike genetic mutations, epigenetic changes are potentially reversible, opening up new therapeutic possibilities. Drugs that target epigenetic mechanisms, such as DNA methyltransferase inhibitors and histone deacetylase inhibitors, are already in clinical use for certain cancers and are being investigated for other conditions.

The field of epigenetics continues to evolve rapidly, with new discoveries regularly challenging established assumptions about heredity, development, and disease. As our understanding deepens, it is becoming clear that the relationship between genotype and phenotype is far more complex and dynamic than was previously appreciated, with epigenetic mechanisms playing a crucial mediating role.', 430);

-- ============================================
-- READING QUESTIONS - Test 1 (40 questions)
-- ============================================

-- Test 1 - Passage 1: Urban Cycling (Questions 1-13)
INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points) VALUES
('d1010001-0000-0000-0000-000000000001', 'reading', 'c1000001-0000-0000-0000-000000000001', 1, 'true_false_not_given', 'Cycling was previously considered mainly a leisure activity.', null, 'TRUE', 'The passage states cycling "was once seen primarily as a recreational activity."', 1),
('d1010001-0000-0000-0000-000000000002', 'reading', 'c1000001-0000-0000-0000-000000000001', 2, 'true_false_not_given', 'Environmental awareness is the only reason for the rise in urban cycling.', null, 'FALSE', 'The passage mentions several factors including health benefits and infrastructure investment.', 1),
('d1010001-0000-0000-0000-000000000003', 'reading', 'c1000001-0000-0000-0000-000000000001', 3, 'fill_in_blank', 'Copenhagen has over _____ kilometers of dedicated cycle tracks.', null, '390', 'The passage states "over 390 kilometers of dedicated cycle tracks."', 1),
('d1010001-0000-0000-0000-000000000004', 'reading', 'c1000001-0000-0000-0000-000000000001', 4, 'multiple_choice', 'What percentage of Copenhagen residents cycle to work or school?', '["A. Over 40%", "B. Over 50%", "C. Over 60%", "D. Over 70%"]', 'C', 'More than 60% of residents cycle to work or school daily.', 1),
('d1010001-0000-0000-0000-000000000005', 'reading', 'c1000001-0000-0000-0000-000000000001', 5, 'true_false_not_given', 'All cities now have standardized traffic regulations for cyclists.', null, 'FALSE', 'The passage mentions "the lack of standardized traffic regulations for cyclists."', 1),
('d1010001-0000-0000-0000-000000000006', 'reading', 'c1000001-0000-0000-0000-000000000001', 6, 'multiple_choice', 'By 2030, cycling could account for what percentage of urban trips in Europe?', '["A. Up to 15%", "B. Up to 20%", "C. Up to 25%", "D. Up to 30%"]', 'C', 'Experts predict up to 25% of all urban trips.', 1),
('d1010001-0000-0000-0000-000000000007', 'reading', 'c1000001-0000-0000-0000-000000000001', 7, 'true_false_not_given', 'Cycling reduces the risk of heart disease.', null, 'TRUE', 'The passage mentions "improved cardiovascular fitness" as a benefit.', 1),
('d1010001-0000-0000-0000-000000000008', 'reading', 'c1000001-0000-0000-0000-000000000001', 8, 'fill_in_blank', 'Cities have invested in protected bike lanes, bike-sharing programs, and secure _____ facilities.', null, 'parking', 'The passage lists "secure parking facilities."', 1),
('d1010001-0000-0000-0000-000000000009', 'reading', 'c1000001-0000-0000-0000-000000000001', 9, 'true_false_not_given', 'Copenhagen was founded specifically as a cycling city.', null, 'NOT GIVEN', 'The passage does not discuss the founding of Copenhagen.', 1),
('d1010001-0000-0000-0000-000000000010', 'reading', 'c1000001-0000-0000-0000-000000000001', 10, 'multiple_choice', 'What is described as a source of tension on the roads?', '["A. Pedestrians and cyclists", "B. Cyclists and motorists", "C. Bus drivers and cyclists", "D. Taxi drivers and cyclists"]', 'B', 'Conflicts between cyclists and motorists are mentioned as a source of tension.', 1),
('d1010001-0000-0000-0000-000000000011', 'reading', 'c1000001-0000-0000-0000-000000000001', 11, 'true_false_not_given', 'Cycling infrastructure is fully developed in all major cities.', null, 'FALSE', 'The passage mentions cities "where cycling infrastructure is still developing."', 1),
('d1010001-0000-0000-0000-000000000012', 'reading', 'c1000001-0000-0000-0000-000000000001', 12, 'sentence_completion', 'Studies show cyclists have lower rates of _____ compared to non-cyclists.', null, 'obesity', 'The passage mentions "lower rates of obesity."', 1),
('d1010001-0000-0000-0000-000000000013', 'reading', 'c1000001-0000-0000-0000-000000000001', 13, 'true_false_not_given', 'The trend towards urban cycling is expected to decline in the coming years.', null, 'FALSE', 'The passage states "the trend towards urban cycling shows no signs of slowing down."', 1);

-- Test 1 - Passage 2: Color in Marketing (Questions 14-27)
INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points) VALUES
('d1020001-0000-0000-0000-000000000001', 'reading', 'c1000001-0000-0000-0000-000000000002', 14, 'fill_in_blank', 'Up to _____% of snap judgments about products can be based on color.', null, '90', 'The passage states "up to 90% of snap judgments."', 1),
('d1020001-0000-0000-0000-000000000002', 'reading', 'c1000001-0000-0000-0000-000000000002', 15, 'multiple_choice', 'Why is red used in fast-food branding?', '["A. It is the cheapest color to produce", "B. It stimulates appetite and urgency", "C. It is universally popular", "D. It stands out at night"]', 'B', 'Red is believed to stimulate appetite and create a sense of urgency.', 1),
('d1020001-0000-0000-0000-000000000003', 'reading', 'c1000001-0000-0000-0000-000000000002', 16, 'true_false_not_given', 'Blue is commonly used by banks and tech companies.', null, 'TRUE', 'Blue evokes trust and security, explaining its use in financial and tech branding.', 1),
('d1020001-0000-0000-0000-000000000004', 'reading', 'c1000001-0000-0000-0000-000000000002', 17, 'multiple_choice', 'What problem can yellow cause when overused?', '["A. Confusion", "B. Sadness", "C. Eye fatigue", "D. Aggression"]', 'C', 'Yellow can cause eye fatigue when overused.', 1),
('d1020001-0000-0000-0000-000000000005', 'reading', 'c1000001-0000-0000-0000-000000000002', 18, 'true_false_not_given', 'White symbolizes mourning in East Asian cultures.', null, 'TRUE', 'The passage states white "is associated with mourning in many East Asian countries."', 1),
('d1020001-0000-0000-0000-000000000006', 'reading', 'c1000001-0000-0000-0000-000000000002', 19, 'fill_in_blank', 'In Chinese culture, red signifies good fortune and _____.', null, 'prosperity', 'Red signifies good fortune and prosperity in Chinese culture.', 1),
('d1020001-0000-0000-0000-000000000007', 'reading', 'c1000001-0000-0000-0000-000000000002', 20, 'matching_headings', 'Which paragraph discusses the impact of digital technology on color marketing?', '["A. Paragraph 1", "B. Paragraph 3", "C. Paragraph 5", "D. Paragraph 6"]', 'C', 'Paragraph 5 discusses screen displays and digital marketing challenges.', 1),
('d1020001-0000-0000-0000-000000000008', 'reading', 'c1000001-0000-0000-0000-000000000002', 21, 'true_false_not_given', 'Green is used by brands to show environmental commitment.', null, 'TRUE', 'Brands incorporate green to signal eco-friendly practices.', 1),
('d1020001-0000-0000-0000-000000000009', 'reading', 'c1000001-0000-0000-0000-000000000002', 22, 'multiple_choice', 'What challenge do digital marketers face with color?', '["A. Limited color options", "B. Color consistency across devices", "C. Copyright on colors", "D. Cost of color printing"]', 'B', 'Maintaining color consistency across different devices is a significant concern.', 1),
('d1020001-0000-0000-0000-000000000010', 'reading', 'c1000001-0000-0000-0000-000000000002', 23, 'true_false_not_given', 'Simple color-emotion associations fully explain consumer behavior.', null, 'FALSE', 'The passage says the relationship is "more complex than simple color-emotion associations."', 1),
('d1020001-0000-0000-0000-000000000011', 'reading', 'c1000001-0000-0000-0000-000000000002', 24, 'fill_in_blank', 'Personal preference, cultural background, and _____ influence how people respond to color.', null, 'context', 'Context is listed as one of the influencing factors.', 1),
('d1020001-0000-0000-0000-000000000012', 'reading', 'c1000001-0000-0000-0000-000000000002', 25, 'true_false_not_given', 'Color is the least important element in visual marketing.', null, 'FALSE', 'Color is described as "one of the most immediate and impactful elements."', 1),
('d1020001-0000-0000-0000-000000000013', 'reading', 'c1000001-0000-0000-0000-000000000002', 26, 'multiple_choice', 'What does green symbolize according to the passage?', '["A. Wealth and power", "B. Nature, health, and sustainability", "C. Youth and energy", "D. Creativity and innovation"]', 'B', 'Green has strong associations with nature, health, and sustainability.', 1),
('d1020001-0000-0000-0000-000000000014', 'reading', 'c1000001-0000-0000-0000-000000000002', 27, 'true_false_not_given', 'Screen displays can render exactly one million colors.', null, 'NOT GIVEN', 'The passage says "millions of colors" but does not specify exactly one million.', 1);

-- Test 1 - Passage 3: AI in Healthcare (Questions 28-40)
INSERT INTO public.questions (id, module_type, section_id, question_number, question_type, question_text, options, correct_answer, explanation, points) VALUES
('d1030001-0000-0000-0000-000000000001', 'reading', 'c1000001-0000-0000-0000-000000000003', 28, 'multiple_choice', 'What was demonstrated in the Nature study about AI and mammograms?', '["A. AI was less accurate than humans", "B. AI matched or exceeded human accuracy", "C. AI could only detect one type of cancer", "D. AI was too slow for practical use"]', 'B', 'The AI system detected breast cancer with greater accuracy than human readers.', 1),
('d1030001-0000-0000-0000-000000000002', 'reading', 'c1000001-0000-0000-0000-000000000003', 29, 'fill_in_blank', 'Traditional drug development typically takes _____ to 15 years.', null, '10', 'The passage states "10 to 15 years."', 1),
('d1030001-0000-0000-0000-000000000003', 'reading', 'c1000001-0000-0000-0000-000000000003', 30, 'true_false_not_given', 'AI played a role in COVID-19 vaccine development.', null, 'TRUE', 'AI tools played a crucial role in accelerating vaccine and treatment development.', 1),
('d1030001-0000-0000-0000-000000000004', 'reading', 'c1000001-0000-0000-0000-000000000003', 31, 'multiple_choice', 'What does NLP enable AI to do with health records?', '["A. Delete old records", "B. Extract relevant information", "C. Create new patient files", "D. Translate records to other languages"]', 'B', 'NLP enables AI to extract relevant information from electronic health records.', 1),
('d1030001-0000-0000-0000-000000000005', 'reading', 'c1000001-0000-0000-0000-000000000003', 32, 'true_false_not_given', 'Healthcare data privacy is not a concern for AI adoption.', null, 'FALSE', 'Concerns about data privacy and security are described as paramount.', 1),
('d1030001-0000-0000-0000-000000000006', 'reading', 'c1000001-0000-0000-0000-000000000003', 33, 'fill_in_blank', 'The ''_____ box'' nature of some AI algorithms raises transparency concerns.', null, 'black', 'The passage references the "black box" nature of AI algorithms.', 1),
('d1030001-0000-0000-0000-000000000007', 'reading', 'c1000001-0000-0000-0000-000000000003', 34, 'true_false_not_given', 'AI could worsen health inequalities if training data is not diverse.', null, 'TRUE', 'AI could exacerbate inequalities if data does not represent diverse populations.', 1),
('d1030001-0000-0000-0000-000000000008', 'reading', 'c1000001-0000-0000-0000-000000000003', 35, 'multiple_choice', 'What is the current state of AI regulatory frameworks in healthcare?', '["A. Fully established", "B. Still evolving", "C. Non-existent", "D. Being dismantled"]', 'B', 'Regulatory frameworks are described as "still evolving."', 1),
('d1030001-0000-0000-0000-000000000009', 'reading', 'c1000001-0000-0000-0000-000000000003', 36, 'true_false_not_given', 'Investment in health AI is decreasing globally.', null, 'FALSE', 'Investment in health AI continues to grow rapidly across the globe.', 1),
('d1030001-0000-0000-0000-000000000010', 'reading', 'c1000001-0000-0000-0000-000000000003', 37, 'sentence_completion', 'AI-powered decision support systems help doctors make more informed _____ decisions.', null, 'treatment', 'These systems suggest diagnoses and treatment plans.', 1),
('d1030001-0000-0000-0000-000000000011', 'reading', 'c1000001-0000-0000-0000-000000000003', 38, 'multiple_choice', 'What can AI analyze to identify drug candidates?', '["A. Patient surveys", "B. Molecular structures and biological data", "C. Hospital records only", "D. Insurance claims"]', 'B', 'AI can analyze databases of molecular structures and biological data.', 1),
('d1030001-0000-0000-0000-000000000012', 'reading', 'c1000001-0000-0000-0000-000000000003', 39, 'true_false_not_given', 'AI systems have completely replaced radiologists.', null, 'NOT GIVEN', 'The passage says AI matches or exceeds radiologist accuracy but does not say it has replaced them.', 1),
('d1030001-0000-0000-0000-000000000013', 'reading', 'c1000001-0000-0000-0000-000000000003', 40, 'fill_in_blank', 'Drug development traditionally costs _____ of dollars.', null, 'billions', 'The passage states it costs "billions of dollars."', 1);

-- ============================================
-- WRITING TASKS (2 per test)
-- ============================================

-- Test 1 (Easy)
INSERT INTO public.writing_tasks (id, test_id, task_number, task_type, prompt, image_url, min_words, sample_answer) VALUES
('e1000001-0000-0000-0000-000000000001', '11111111-1111-1111-1111-111111111111', 1, 'report',
'The bar chart below shows the number of students enrolled in three different subjects at a university between 2018 and 2022.

Summarize the information by selecting and reporting the main features, and make comparisons where relevant.

Subject enrollment data:
- Computer Science: 2018 (450), 2019 (520), 2020 (610), 2021 (680), 2022 (750)
- Business Studies: 2018 (600), 2019 (580), 2020 (550), 2021 (530), 2022 (500)
- Engineering: 2018 (400), 2019 (420), 2020 (440), 2021 (460), 2022 (480)',
null, 150,
'The bar chart illustrates changes in student enrollment across three university subjects over a five-year period from 2018 to 2022.

Overall, Computer Science experienced the most significant growth, while Business Studies showed a steady decline. Engineering demonstrated modest but consistent increases throughout the period.

Computer Science enrollment rose steadily from 450 students in 2018 to 750 in 2022, representing an increase of approximately 67%. This made it the fastest-growing subject. In contrast, Business Studies, which had the highest initial enrollment of 600 students in 2018, declined consistently each year, falling to 500 by 2022.

Engineering showed gradual growth, rising from 400 to 480 students over the period. Notably, by 2022, Computer Science had overtaken Business Studies to become the most popular subject, while Engineering remained the least enrolled despite its upward trend.'),

('e1000001-0000-0000-0000-000000000002', '11111111-1111-1111-1111-111111111111', 2, 'essay',
'Some people believe that universities should focus on providing academic skills, while others think they should prepare students for employment.

Discuss both views and give your own opinion.

Give reasons for your answer and include any relevant examples from your own knowledge or experience.',
null, 250,
'The debate over whether universities should prioritize academic knowledge or employability skills has intensified in recent years. Both perspectives have merit, and this essay will examine each before presenting my own view.

Those who advocate for a focus on academic skills argue that universities have traditionally been centers of knowledge and intellectual inquiry. They believe that deep understanding of a subject develops critical thinking, analytical abilities, and research skills that are transferable to any career. Furthermore, academic research drives innovation and advances human understanding in ways that purely vocational training cannot.

On the other hand, proponents of employment-focused education point to the rising cost of university degrees and argue that graduates deserve a clear return on their investment. They note that many employers complain about graduates lacking practical skills such as teamwork, communication, and problem-solving in real-world contexts. Work placements, internships, and industry partnerships can bridge this gap effectively.

In my opinion, the most effective approach combines both perspectives. Universities should maintain rigorous academic standards while integrating practical elements that prepare students for the workplace. Programs that include internships, project-based learning, and industry collaboration can develop both intellectual depth and professional competence. The best graduates are those who can think critically and apply their knowledge in practical situations.');

-- Test 2 (Medium)
INSERT INTO public.writing_tasks (id, test_id, task_number, task_type, prompt, image_url, min_words, sample_answer) VALUES
('e2000001-0000-0000-0000-000000000001', '22222222-2222-2222-2222-222222222222', 1, 'report',
'The pie charts below show the proportion of energy generated from different sources in Country X in 2000 and 2020.

Summarize the information by selecting and reporting the main features, and make comparisons where relevant.

Energy sources in 2000: Coal (40%), Natural Gas (25%), Oil (20%), Nuclear (10%), Renewables (5%)
Energy sources in 2020: Coal (20%), Natural Gas (30%), Oil (15%), Nuclear (12%), Renewables (23%)',
null, 150, null),

('e2000001-0000-0000-0000-000000000002', '22222222-2222-2222-2222-222222222222', 2, 'essay',
'In many countries, the proportion of older people is steadily increasing. Some think this is a positive development, while others consider it a problem for society.

Discuss both views and give your own opinion.

Give reasons for your answer and include any relevant examples from your own knowledge or experience.',
null, 250, null);

-- Test 3 (Hard)
INSERT INTO public.writing_tasks (id, test_id, task_number, task_type, prompt, image_url, min_words, sample_answer) VALUES
('e3000001-0000-0000-0000-000000000001', '33333333-3333-3333-3333-333333333333', 1, 'report',
'The table below shows the percentage of household income spent on different categories in five countries in 2022.

Summarize the information by selecting and reporting the main features, and make comparisons where relevant.

| Category    | Japan | USA  | Brazil | Nigeria | Sweden |
|-------------|-------|------|--------|---------|--------|
| Housing     | 25%   | 33%  | 30%    | 22%     | 28%    |
| Food        | 14%   | 10%  | 25%    | 56%     | 12%    |
| Transport   | 12%   | 17%  | 15%    | 8%      | 10%    |
| Healthcare  | 8%    | 18%  | 10%    | 5%      | 3%     |
| Education   | 10%   | 7%   | 8%     | 4%      | 2%     |
| Other       | 31%   | 15%  | 12%    | 5%      | 45%    |',
null, 150, null),

('e3000001-0000-0000-0000-000000000002', '33333333-3333-3333-3333-333333333333', 2, 'essay',
'Some experts believe that the best way to improve road safety is to increase the minimum legal age for driving. Others believe there are more effective measures.

Discuss both views and give your own opinion.

Give reasons for your answer and include any relevant examples from your own knowledge or experience.',
null, 250, null);
