# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Meeting.destroy_all
User.destroy_all
a = User.new(email: "cv@gmail.com",
    first_name: "Christophe",
    last_name: "Vallerin",
    industry: "Retail",
    profile: "Expert Professional",
    linkedin_url: "https://www.linkedin.com/in/christophe-vallerin-18ab9947/",
    avatar_url: "https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/4/000/163/2fd/184d038.jpg",
    encrypted_password: "$2a$11$b1UALeSIShywjDrI2ortU.Nn7sFrTVrciNLsn7JEfthMv9fX5nsWy",
    password: "123456",
biography: "Sr Manager with a strong experience in both Finance and Operation, I am a team player who likes to work as a catalyser and drive successful changes within an organization. Performance-oriented, I promote a better understanding of company leverages through efficient reporting, KPIs and Process Improvements.")
a.save
b = User.new(email: "jb@gmail.com",
    first_name: "Jean-Baptiste",
    last_name: "Feldis",
    industry: "Computer",
    profile: "Expert Professional",
    linkedin_url: "https://www.linkedin.com/in/jbfeldis/",
    avatar_url: "https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAj6AAAAJGQzNDFjMTAxLTc5YTMtNDQ0Ni1hYTc4LTRhNWZiYTY2MGI0Zg.jpg",
    encrypted_password: "$2a$11$b1UALeSIShywjDrI2ortU.Nn7sFrTVrciNLsn7JEfthMv9fX5nsWy",
    password: "123456",
biography: "Application and web-based software developer. Co-founder of Studio Melipone and various startups. Really interested in web design and UX. I'm focused on making simple and efficient software driven with philosophy and good practices. I love working with Ruby, Rails, ReactJS, a great deal of well written javascript and html5/css3. I can help you boost your ideas, make a focused MVP, improve your app or train your teams. All that while sending good vibes.")
b.save
c = User.new(email: "phil@gmail.com",
    first_name: "Phil",
    last_name: "Doe",
    industry: "Computer",
    profile: "College Freshman",
    avatar_url: "https://www.cegepgarneau.ca/assets/img/programmes/stages/informatique.jpg",
    encrypted_password: "$2a$11$b1UALeSIShywjDrI2ortU.Nn7sFrTVrciNLsn7JEfthMv9fX5nsWy",
    password: "123456",
biography: "Student in computer science.")
c.save
d = User.new(email: "pks@gmail.com",
    first_name: "Pedro",
    last_name: "Sol Koike",
    industry: "Computer",
    profile: "Professional",
    linkedin_url: "https://www.linkedin.com/in/pedrokoike/",
    avatar_url: "https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAnkAAAAJDM5MmMwZTVjLWU1NDYtNGMwMC1iMGI5LTcwNDk4YzFkMDlhZQ.jpg",
    encrypted_password: "$2a$11$b1UALeSIShywjDrI2ortU.Nn7sFrTVrciNLsn7JEfthMv9fX5nsWy",
    password: "123456",
biography: "Formado em Relações públicas pela FAAP com MBA em Gestão da Comunicação Corporativa pela Escola Superior de Engenharia e Gestão /ABERJE. Estou com 10 anos de experiência nas áreas de comunicação e marketing, sendo quatro na gestão de pessoas. Neste tempo, tive oportunidade de trabalhar com grandes players em diferentes mercados (Lockheed-Martin, Accenture, Grupo Brasfanta, Johnson & Johnson e Locomotiva) na construção de marca, desenvolvimento de campanhas, materiais de PDV, design de embalagem e reestruturação de portfólio de produtos e marcas. Nos últimos anos trabalhei diretamente com o mercado digital, atuando com a Toshiba, Huawei e iRobot e LG na análise e diagnóstico de marca, planejamento de campanhas de: Lançamento de produtos, incentivo ao Trade, presença e relacionamento online, ativação de canais entre outras.")
d.save
e = User.new(email: "ad@gmail.com",
    first_name: "Abilio",
    last_name: "Diniz",
    industry: "Retail",
    profile: "Expert Professional",
    linkedin_url: "https://www.linkedin.com/in/abiliodiniz/",
    avatar_url: "https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAALuAAAAJDllYmNhNDQwLTUxMWQtNGM5MS05MTVmLTg5NTg5NmM0MjNkMg.jpg",
    encrypted_password: "$2a$11$b1UALeSIShywjDrI2ortU.Nn7sFrTVrciNLsn7JEfthMv9fX5nsWy",
    password: "123456",
biography: "Abilio dos Santos Diniz nasceu em São Paulo, em 28 de dezembro de 1936. Católico praticante, vai à missa semanalmente e freqüenta a igreja Santa Rita de Cássia, na Vila Mariana, todo dia 22. Sua mãe, Floripes, foi sua principal influência no catolicismo. O pai Valentim iniciou-lhe, desde cedo, no mundo do trabalho e dos negócios. Com fé, conhecimento e determinação, Abilio criou e desenvolveu, junto com o pai, o maior grupo varejista do País, o Pão de Açúcar. Sua vida é marcada pela paixão esportiva, convertida em ferramenta de autoconhecimento, busca do equilíbrio e evolução pessoal. O primeiro lugar onde se percebeu uma pessoa hábil e se sentiu vitorioso foi debaixo de um gol, nos jogos de futebol de rua no bairro do Paraíso, onde morou durante a infância, ou na Várzea do Glicério, perto da segunda padaria do pai, na Liberdade. Nesses ambientes, Abilio começou a fortalecer seu espírito e seu corpo e também a testar sua capacidade de liderança.")
e.save
f = User.new(email: "logan@gmail.com",
    first_name: "Logan",
    last_name: "Green",
    industry: "Transportation",
    profile: "Expert Professional",
    linkedin_url: "https://www.linkedin.com/in/logangreen/",
    avatar_url: "https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAeGAAAAJDM5ZmMxYWI5LTFmYTgtNGE3MC1hZjQ4LTc2OTVmNDdjMGI4MQ.jpg",
    encrypted_password: "$2a$11$b1UALeSIShywjDrI2ortU.Nn7sFrTVrciNLsn7JEfthMv9fX5nsWy",
    password: "123456",
biography: "I am the co-founder and CEO of Lyft.
I have long been fascinated by innovation in transportation, having grown up in Southern California with much of my childhood spent stuck in traffic. Lyft originated out of Zimride, a long-distance ridesharing company founded in 2007, which was built to create a more social, sustainable and affordable transportation system. The idea for Zimride (and ultimately Lyft) struck while I was studying in Zimbabwe during college, where carpooling is a common form of transportation among neighbors. Lyft is working towards a future where people - not cars - are the center of our everyday lives. Ridesharing is just the first phase of the movement to end car ownership and reclaim cities. Today, Lyft provides more than 17 million rides a month and has grown nearly 2.5x year-over-year. We have huge momentum as we bring to life our vision of connecting people and communities through better transportation while reimagining the way our cities are built.")
f.save
g = User.new(email: "fg@gmail.com",
    first_name: "Francois",
    last_name: "Guerin",
    industry: "Financial Services",
    profile: "Professional",
    linkedin_url: "https://www.linkedin.com/in/guerinfrancois/",
    avatar_url: "https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAlpAAAAJDdhZWE1YzJmLTEzNTUtNGZlYy1hOTk4LTYzM2VlOWVkMDc3ZA.jpg",
    encrypted_password: "$2a$11$b1UALeSIShywjDrI2ortU.Nn7sFrTVrciNLsn7JEfthMv9fX5nsWy",
    password: "123456",
    biography: "Ex banker, now doing code @ Le Wagon")
g.save
h = User.new(email: "Student1@gmail.com",
    first_name: "Student-1",
    last_name: "Silva",
    industry: "Financial Services",
    profile: "College Freshman",
    encrypted_password: "$2a$11$b1UALeSIShywjDrI2ortU.Nn7sFrTVrciNLsn7JEfthMv9fX5nsWy",
    password: "123456",
biography: "Student in finance.")
h.save
i = User.new(email: "Student2@gmail.com",
    first_name: "Student-2",
    last_name: "Saraiva",
    industry: "Green Technology",
    profile: "College Freshman",
    encrypted_password: "$2a$11$b1UALeSIShywjDrI2ortU.Nn7sFrTVrciNLsn7JEfthMv9fX5nsWy",
    password: "123456",
biography: "Student @ USP in Green Technology, seeking for ideas for my career.")
i.save
j = User.new(email: "Student3@gmail.com",
    first_name: "Student-3",
    last_name: "Davilla",
    industry: "Advertising",
    profile: "College Senior",
    avatar_url: "https://cap.stanford.edu/profiles/viewImage?profileId=40372&type=square",
    encrypted_password: "$2a$11$b1UALeSIShywjDrI2ortU.Nn7sFrTVrciNLsn7JEfthMv9fX5nsWy",
    password: "123456",
biography: "Student @ Uninove in business adminstration, looking forward for mentorship.")
j.save
k = User.new(email: "Student4@gmail.com",
    first_name: "Student-4",
    last_name: "De Mattos",
    industry: "Advertising",
    profile: "College Senior",
    avatar_url: "http://www.njit.edu/features/images/student/hari-stanford.jpg",
    encrypted_password: "$2a$11$b1UALeSIShywjDrI2ortU.Nn7sFrTVrciNLsn7JEfthMv9fX5nsWy",
    password: "123456",
biography: "Student @ Stanford, I want to talk about business opportunites in the advertising sector.")
k.save
meet1 = Meeting.new(title: "Retail in Brazil", description: "Abilio criou e desenvolveu, junto com o pai, o maior grupo varejista do País, o Pão de Açúcar", nb_max_participant: 5, local: "avenida Faria Lima", profile_wanted: "College Freshman", date: "20/05/2017")
meet1.user = e
meet1.save
meet2 = Meeting.new(title: "Ruby on rails, Because You’re Worth It", description: "Ruby on Rails, or simply Rails, is a server-side web application framework written in Ruby under the MIT License. Rails is a model–view–controller (MVC) framework, providing default structures for a database, a web service, and web pages. It encourages and facilitates the use of web standards such as JSON or XML for data transfer, and HTML, CSS and JavaScript for display and user interfacing. In addition to MVC, Rails emphasizes the use of other well-known software engineering patterns and paradigms, including convention over configuration (CoC), don't repeat yourself (DRY), and the active record pattern.", nb_max_participant: 5, local: "Rua Mourato Coelho, 1404 - Sao Paulo", profile_wanted: "College Freshman", date: "15/05/2017")
meet2.user = b
meet2.save
meet3 = Meeting.new(title: "Furture of Urban mobility", description: "Happy to discuss with young professional on the future of the Urban mobility", profile_wanted:  "Junior Professional", date: "20/05/2017")
meet3.user = f
meet3.save
bk1 = Booking.new(motivations: "I want to work in the retail space, I would like to know more about it and see it fits with my ambitions")
bk1.user = k
bk1.meeting = meet1
bk1.save
bk2 = Booking.new(motivations: "I want to ask Abilio Diniz some money")
bk2.user = j
bk2.meeting = meet1
bk2.save
bk3 = Booking.new(motivations: "I am seeking for some advise to redirect my career, I think Abilio Diniz will be a great inspiration")
bk3.user = g
bk3.meeting = meet2
bk3.save
bk4 = Booking.new(motivations: "Ruby is my passion")
bk4.user = g
bk4.meeting = meet2
bk4.save
bk4 = Booking.new(motivations: "I would like to understand better this industry")
bk4.user = g
bk4.meeting = meet3
bk4.save
bk5 = Booking.new(motivations: "fed up of taking my scooter to go back to Sao Jose every friday night, I would like to ask Mr Green when he think he will be able to start Lyft in Brazil and if he will do special promotion on Sao Paulo - Sao Jose rides")
bk5.user = d
bk5.meeting = meet3
bk5.save
bk6 = Booking.new(motivations: "Ruby is the best thing on earth")
bk6.user = d
bk6.meeting = meet2
bk6.save
bk7 = Booking.new(motivations: "Can't stop thinking about Ruby")
bk7.user = a
bk7.meeting = meet2
bk7.save
