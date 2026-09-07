-- Drop statements
DROP TABLE IF EXISTS Review;
DROP TABLE IF EXISTS TutorMatch;
DROP TABLE IF EXISTS WaitlistEntry; 
DROP TABLE IF EXISTS StudentTutorRequest;
DROP TABLE IF EXISTS Offering; 
DROP TABLE IF EXISTS Tutor; 
DROP TABLE IF EXISTS Student; 
DROP TABLE IF EXISTS Course; 

-- Student Table
CREATE TABLE Student (
StudentID INT PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(100),
Email VARCHAR(100),
Phone VARCHAR(20),
School VARCHAR(100)
) ENGINE=INNODB;

-- Mock Data: Student Table

insert into Student (StudentID, Name, Email, Phone, School) values (1, 'Shadow Lehr', 'slehr0@exblog.jp', '(494) 6705358', 'Nihon Fukushi University');
insert into Student (StudentID, Name, Email, Phone, School) values (2, 'Gabriellia Melato', 'gmelato1@paypal.com', '(455) 9645096', 'Université de la Reunion');
insert into Student (StudentID, Name, Email, Phone, School) values (3, 'Xenia Cuttin', 'xcuttin2@arstechnica.com', '(112) 2533295', 'Zanjan University of Medical Sciences');
insert into Student (StudentID, Name, Email, Phone, School) values (4, 'Sharity Voelker', 'svoelker3@ca.gov', '(399) 8971932', 'University of Bergen');
insert into Student (StudentID, Name, Email, Phone, School) values (5, 'Marysa Sinnock', 'msinnock4@posterous.com', '(768) 7991506', 'Fachhochschule Oldenburg/Ostfriesland/Wilhelmshaven');
insert into Student (StudentID, Name, Email, Phone, School) values (6, 'Archambault Hazeldean', 'ahazeldean5@economist.com', '(139) 9007953', 'State University of New York Empire State College');
insert into Student (StudentID, Name, Email, Phone, School) values (7, 'Dennis Renne', 'drenne6@china.com.cn', '(383) 1265921', 'Ecole Supérieure des Techniques Industrielles et des Textiles');
insert into Student (StudentID, Name, Email, Phone, School) values (8, 'Pren Peinke', 'ppeinke7@sciencedaily.com', '(816) 7970037', 'SASTRA Deemed University');
insert into Student (StudentID, Name, Email, Phone, School) values (9, 'Glyn Poter', 'gpoter8@jigsy.com', '(127) 8372196', 'University of Texas Health Science Center at San Antonio');
insert into Student (StudentID, Name, Email, Phone, School) values (10, 'Dexter Truscott', 'dtruscott9@skyrock.com', '(510) 7431890', 'Xi''an Jiaotong-Liverpool University');
insert into Student (StudentID, Name, Email, Phone, School) values (11, 'Nicola Rainer', 'nrainera@ameblo.jp', '(100) 1229274', 'Harding University');
insert into Student (StudentID, Name, Email, Phone, School) values (12, 'Margarethe Sebley', 'msebleyb@over-blog.com', '(162) 2218690', 'Universität der Bundeswehr Hamburg');
insert into Student (StudentID, Name, Email, Phone, School) values (13, 'Consuela Petersen', 'cpetersenc@state.gov', '(285) 7102064', 'Rasmussen College, Illinois Campuses');
insert into Student (StudentID, Name, Email, Phone, School) values (14, 'Herschel Axelby', 'haxelbyd@plala.or.jp', '(300) 6170419', 'South China University');
insert into Student (StudentID, Name, Email, Phone, School) values (15, 'Luce De Zuani', 'ldee@mit.edu', '(375) 5340103', 'Universidad Fundepos Alma Mater');
insert into Student (StudentID, Name, Email, Phone, School) values (16, 'Theda Warsap', 'twarsapf@patch.com', '(276) 4976550', 'Samford University');
insert into Student (StudentID, Name, Email, Phone, School) values (17, 'Ernie Farlamb', 'efarlambg@amazon.co.uk', '(334) 3520984', 'Kuwait University');
insert into Student (StudentID, Name, Email, Phone, School) values (18, 'Roselle Follit', 'rfollith@un.org', '(490) 4745610', 'Universidad Catolica de Azogues');
insert into Student (StudentID, Name, Email, Phone, School) values (19, 'Rani Busch', 'rbuschi@gnu.org', '(464) 8236421', 'Universidade Federal do Pará');
insert into Student (StudentID, Name, Email, Phone, School) values (20, 'Muffin Braney', 'mbraneyj@addtoany.com', '(652) 7242799', 'Hochschule für Technik und Wirtschaft Dresden (FH)');
insert into Student (StudentID, Name, Email, Phone, School) values (21, 'Horst Frowen', 'hfrowenk@phpbb.com', '(928) 6930580', 'King Khaled University');
insert into Student (StudentID, Name, Email, Phone, School) values (22, 'Hamlen Satchel', 'hsatchell@amazon.com', '(312) 5852805', 'Tomsk State University');
insert into Student (StudentID, Name, Email, Phone, School) values (23, 'Reece Dumblton', 'rdumbltonm@baidu.com', '(202) 8430433', 'Donetsk National University');
insert into Student (StudentID, Name, Email, Phone, School) values (24, 'Ursa Bristoe', 'ubristoen@hhs.gov', '(422) 5820254', 'Royal College of Art');
insert into Student (StudentID, Name, Email, Phone, School) values (25, 'Anitra Canland', 'acanlando@wp.com', '(101) 9913569', 'School of the Visual Arts');
insert into Student (StudentID, Name, Email, Phone, School) values (26, 'Lenette Lomasney', 'llomasneyp@storify.com', '(797) 5432303', 'Washington and Lee University');
insert into Student (StudentID, Name, Email, Phone, School) values (27, 'Dicky Teek', 'dteekq@bloglines.com', '(832) 8303151', 'Stavropol State Technical University');
insert into Student (StudentID, Name, Email, Phone, School) values (28, 'Annetta Olifard', 'aolifardr@independent.co.uk', '(914) 9461293', 'University of Massachusetts Medical Center at Worcester');
insert into Student (StudentID, Name, Email, Phone, School) values (29, 'Maridel Ganning', 'mgannings@bandcamp.com', '(266) 2050388', 'Islamic Azad University, Majlesi');
insert into Student (StudentID, Name, Email, Phone, School) values (30, 'Tamarah Murrigans', 'tmurriganst@princeton.edu', '(375) 3635309', 'Universidad Nacional del Este');


-- Course Table
CREATE TABLE Course (
CourseID INT PRIMARY KEY AUTO_INCREMENT,
Course_num VARCHAR(50),
Professor VARCHAR(100),
Description TEXT
) ENGINE=INNODB;

-- Mock Data: Course Table

insert into Course (CourseID, Course_num, Professor, Description) values (1, '#90419c', 'Minne Yekel', 'in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis');
insert into Course (CourseID, Course_num, Professor, Description) values (2, '#50ced8', 'Niko Bottomer', 'maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque');
insert into Course (CourseID, Course_num, Professor, Description) values (3, '#968f03', 'Bradly Giorio', 'lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in');
insert into Course (CourseID, Course_num, Professor, Description) values (4, '#23deef', 'Paton Faulkes', 'ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper');
insert into Course (CourseID, Course_num, Professor, Description) values (5, '#c06b63', 'Jacob Forst', 'in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat');
insert into Course (CourseID, Course_num, Professor, Description) values (6, '#7aaa28', 'Kale Folds', 'ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices');
insert into Course (CourseID, Course_num, Professor, Description) values (7, '#6181ac', 'Walton Assad', 'vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget');
insert into Course (CourseID, Course_num, Professor, Description) values (8, '#16430a', 'Clint Verdon', 'vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi');
insert into Course (CourseID, Course_num, Professor, Description) values (9, '#ff1bb3', 'Weston Pancoust', 'venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in');
insert into Course (CourseID, Course_num, Professor, Description) values (10, '#7a1a40', 'Alvan Rylatt', 'morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in');
insert into Course (CourseID, Course_num, Professor, Description) values (11, '#645d55', 'Manda Beazleigh', 'pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit');
insert into Course (CourseID, Course_num, Professor, Description) values (12, '#4c5fde', 'Calhoun Kynder', 'in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut');
insert into Course (CourseID, Course_num, Professor, Description) values (13, '#6aab37', 'Marcile Greensall', 'dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet');
insert into Course (CourseID, Course_num, Professor, Description) values (14, '#4788b5', 'Roxine Andrzejak', 'orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at');
insert into Course (CourseID, Course_num, Professor, Description) values (15, '#c21308', 'Mort Vasquez', 'a suscipit nulla elit ac nulla sed vel enim sit');
insert into Course (CourseID, Course_num, Professor, Description) values (16, '#9d0d10', 'Abdel Kordova', 'etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit');
insert into Course (CourseID, Course_num, Professor, Description) values (17, '#66f379', 'Mufi Padmore', 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum');
insert into Course (CourseID, Course_num, Professor, Description) values (18, '#3e8ea1', 'Drucy Kubecka', 'mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem');
insert into Course (CourseID, Course_num, Professor, Description) values (19, '#88e6c9', 'Bail Sambeck', 'ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis');
insert into Course (CourseID, Course_num, Professor, Description) values (20, '#a7a8a0', 'Cyndia Duley', 'nunc proin at turpis a pede posuere nonummy integer non velit');
insert into Course (CourseID, Course_num, Professor, Description) values (21, '#d15f51', 'Regan Sowray', 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus');
insert into Course (CourseID, Course_num, Professor, Description) values (22, '#defff9', 'Angie Kinnon', 'diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut');
insert into Course (CourseID, Course_num, Professor, Description) values (23, '#37b893', 'Rosabel Brashier', 'lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque');
insert into Course (CourseID, Course_num, Professor, Description) values (24, '#252a21', 'Derwin Throssell', 'diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere');
insert into Course (CourseID, Course_num, Professor, Description) values (25, '#d7c220', 'Vere Zammitt', 'ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean');
insert into Course (CourseID, Course_num, Professor, Description) values (26, '#cda3f2', 'Wally Petraitis', 'platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida');
insert into Course (CourseID, Course_num, Professor, Description) values (27, '#1848b4', 'Stefanie Friedenbach', 'at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed');
insert into Course (CourseID, Course_num, Professor, Description) values (28, '#ceb991', 'Alasteir Kenchington', 'pede ac diam cras pellentesque volutpat dui maecenas tristique est et');
insert into Course (CourseID, Course_num, Professor, Description) values (29, '#bee3f1', 'Garek Andrys', 'posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet');
insert into Course (CourseID, Course_num, Professor, Description) values (30, '#ed9492', 'Libbie Volkers', 'consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed');


-- Tutor Table
CREATE TABLE Tutor (
TutorID INT PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(100),
Email VARCHAR(100),
Phone VARCHAR(20),
Experience VARCHAR(250)
) ENGINE=INNODB;

-- Mock Data: Tutor Table 

insert into Tutor (TutorID, Name, Email, Phone, Experience) values (1, 'Hillary Iskov', 'hiskov0@bizjournals.com', '(482) 1795411', 'justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (2, 'Harriett Case', 'hcase1@geocities.jp', '(792) 8929411', 'nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (3, 'Sheelah Monnelly', 'smonnelly2@amazon.de', '(841) 4732874', 'erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (4, 'Joycelin Barthrop', 'jbarthrop3@dailymotion.com', '(277) 9930292', 'velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (5, 'Peyter Axcel', 'paxcel4@jigsy.com', '(837) 5889950', 'tristique in tempus sit amet sem fusce consequat nulla nisl nunc');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (6, 'Trace Camplin', 'tcamplin5@sohu.com', '(552) 1440392', 'in eleifend quam a odio in hac habitasse platea dictumst maecenas ut');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (7, 'Augustina MacGillespie', 'amacgillespie6@psu.edu', '(968) 4980828', 'faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (8, 'Bennie Childe', 'bchilde7@gov.uk', '(133) 3093220', 'tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (9, 'Agathe Garrie', 'agarrie8@reverbnation.com', '(426) 8619318', 'dui proin leo odio porttitor id consequat in consequat ut nulla sed');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (10, 'Agnesse Jell', 'ajell9@bing.com', '(281) 9281144', 'interdum venenatis turpis enim blandit mi in porttitor pede justo');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (11, 'Hilliary Bretherick', 'hbrethericka@prlog.org', '(752) 2831684', 'libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (12, 'Ethe Salan', 'esalanb@google.nl', '(956) 1390962', 'volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (13, 'Amalita Delleschi', 'adelleschic@nba.com', '(965) 6215160', 'nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (14, 'Jacqui Albutt', 'jalbuttd@prnewswire.com', '(904) 7832479', 'volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (15, 'Pearle Walwood', 'pwalwoode@utexas.edu', '(840) 8380531', 'non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (16, 'Claude Wannell', 'cwannellf@delicious.com', '(792) 8608081', 'habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (17, 'Cecily Manon', 'cmanong@sogou.com', '(187) 4961549', 'eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (18, 'Hortensia Koba', 'hkobah@topsy.com', '(582) 8872807', 'penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (19, 'Monroe Haspineall', 'mhaspinealli@angelfire.com', '(848) 9149893', 'erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (20, 'Mort Kimbury', 'mkimburyj@ifeng.com', '(637) 6131299', 'nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (21, 'Natalee Beaushaw', 'nbeaushawk@tamu.edu', '(326) 8487074', 'leo rhoncus sed vestibulum sit amet cursus id turpis integer');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (22, 'Elita Read', 'ereadl@springer.com', '(166) 7882608', 'magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (23, 'Clarke Tolcharde', 'ctolchardem@e-recht24.de', '(715) 5278644', 'volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (24, 'Willy Ramplee', 'wrampleen@blogger.com', '(908) 6148488', 'nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (25, 'Bartholemy Stroyan', 'bstroyano@lulu.com', '(335) 3783655', 'quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (26, 'Waverley Crank', 'wcrankp@nymag.com', '(236) 6051443', 'dapibus augue vel accumsan tellus nisi eu orci mauris lacinia');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (27, 'Tabbitha Rogerot', 'trogerotq@nhs.uk', '(306) 6504748', 'in tempus sit amet sem fusce consequat nulla nisl nunc nisl');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (28, 'Skipp Foxon', 'sfoxonr@unesco.org', '(376) 8845076', 'curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (29, 'Ivonne Etteridge', 'ietteridges@unblog.fr', '(202) 9550532', 'odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac');
insert into Tutor (TutorID, Name, Email, Phone, Experience) values (30, 'Birdie Beausang', 'bbeausangt@amazon.co.uk', '(591) 2101419', 'nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam');

-- Offering Table
CREATE TABLE Offering (
OfferingID INT PRIMARY KEY AUTO_INCREMENT,
Rate VARCHAR(50),
Experience VARCHAR(200),
CourseID INT,
TutorID INT,
FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
FOREIGN KEY (TutorID) REFERENCES Tutor(TutorID)
) ENGINE=INNODB;

-- Mock data: Offering Table 

insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (1, 81.65, 'nulla eget eros elementum pellentesque quisque porta volutpat erat', 1, 1);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (2, 42.53, 'varius integer ac leo pellentesque ultrices mattis odio donec vitae', 2, 2);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (3, 17.67, 'nibh in hac habitasse platea dictumst aliquam augue quam', 3, 3);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (4, 33.77, 'vitae consectetuer eget rutrum at lorem integer tincidunt ante', 4, 4);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (5, 15.01, 'sit amet consectetuer adipiscing elit proin', 5, 5);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (6, 31.16, 'facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt', 6, 6);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (7, 83.41, 'consequat in consequat ut nulla', 7, 7);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (8, 93.64, 'et magnis dis parturient montes nascetur ridiculus mus', 8, 8);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (9, 63.62, 'dignissim vestibulum vestibulum ante ipsum', 9, 9);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (10, 12.63, 'felis ut at dolor quis odio consequat', 10, 10);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (11, 16.63, 'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', 11, 11);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (12, 5.94, 'eget eleifend luctus ultricies eu nibh', 12, 12);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (13, 61.01, 'eleifend luctus ultricies eu nibh quisque id', 13, 13);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (14, 33.34, 'ac est lacinia nisi venenatis', 14, 14);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (15, 32.64, 'maecenas tincidunt lacus at velit vivamus vel nulla eget eros', 15, 15);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (16, 84.7, 'nec nisi volutpat eleifend donec ut', 16, 16);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (17, 38.53, 'amet sapien dignissim vestibulum vestibulum ante ipsum primis', 17, 17);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (18, 3.87, 'etiam pretium iaculis justo in hac habitasse', 18, 18);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (19, 41.38, 'phasellus in felis donec semper', 19, 19);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (20, 55.68, 'mi integer ac neque duis bibendum', 20, 20);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (21, 62.67, 'nonummy integer non velit donec diam neque vestibulum eget', 21, 21);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (22, 88.76, 'non interdum in ante vestibulum ante ipsum', 22, 22);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (23, 4.1, 'natoque penatibus et magnis dis', 23, 23);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (24, 8.26, 'lobortis vel dapibus at diam nam tristique tortor', 24, 24);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (25, 31.78, 'mattis egestas metus aenean fermentum', 25, 25);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (26, 48.79, 'sit amet cursus id turpis integer aliquet', 26, 26);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (27, 20.7, 'leo maecenas pulvinar lobortis est phasellus sit amet erat nulla', 27, 27);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (28, 3.24, 'lorem vitae mattis nibh ligula nec sem', 28, 28);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (29, 43.44, 'libero quis orci nullam molestie nibh in lectus pellentesque', 29, 29);
insert into Offering (OfferingID, Rate, Experience, CourseID , TutorID ) values (30, 64.95, 'at vulputate vitae nisl aenean lectus', 30, 30);


-- WaitlistEntry Table
CREATE TABLE WaitlistEntry (
WaitlistEntryID INT PRIMARY KEY AUTO_INCREMENT,
RequestDate DATE,
Status VARCHAR(50),
StudentID INT,
CourseID INT,
FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
) ENGINE=INNODB;

-- Mock Data: WaitlistEntry Table 

insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (1, '2025-08-01', 'eu', 6, 10);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (2, '2026-02-26', 'ridiculus mus', 18, 30);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (3, '2025-11-01', 'eu', 25, 29);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (4, '2025-09-19', 'in', 26, 17);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (5, '2026-03-25', 'quis', 6, 8);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (6, '2026-03-13', 'congue', 28, 9);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (7, '2026-01-28', 'nisl', 30, 6);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (8, '2025-11-02', 'phasellus sit', 28, 8);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (9, '2026-03-19', 'nisi vulputate', 30, 6);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (10, '2025-07-18', 'pede', 13, 21);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (11, '2026-01-19', 'iaculis justo', 13, 18);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (12, '2025-10-02', 'convallis nunc', 15, 9);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (13, '2025-05-20', 'nascetur', 19, 17);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (14, '2026-03-25', 'rutrum', 26, 24);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (15, '2025-12-10', 'enim', 28, 11);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (16, '2025-08-04', 'tellus', 8, 15);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (17, '2025-06-23', 'id sapien', 15, 6);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (18, '2026-01-17', 'venenatis', 16, 24);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (19, '2025-06-09', 'leo', 12, 3);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (20, '2025-08-15', 'montes', 10, 20);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (21, '2025-09-07', 'massa volutpat', 10, 3);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (22, '2025-07-02', 'et eros', 1, 9);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (23, '2026-03-19', 'mus vivamus', 13, 27);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (24, '2025-10-28', 'ipsum', 9, 24);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (25, '2025-07-11', 'quam', 21, 9);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (26, '2025-05-11', 'faucibus orci', 7, 20);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (27, '2025-06-01', 'at', 10, 29);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (28, '2025-03-31', 'purus', 15, 21);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (29, '2025-07-14', 'leo', 13, 16);
insert into WaitlistEntry (WaitlistEntryID, RequestDate, Status, StudentID, CourseID) values (30, '2025-05-12', 'suscipit', 30, 19);

-- StudentTutorRequest Table
CREATE TABLE StudentTutorRequest (
Request_num INT PRIMARY KEY AUTO_INCREMENT,
PreferredTime VARCHAR(100),
RequestedTopic VARCHAR(200),
StudentID INT,
FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
) ENGINE=INNODB;

-- Mock Data: StudentTutorRequest Table

insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (1, '11:12 AM', 'blandit ultrices', 17);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (2, '5:21 AM', 'turpis', 27);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (3, '5:06 PM', 'felis', 16);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (4, '2:15 PM', 'donec semper', 22);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (5, '7:25 AM', 'dui vel', 16);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (6, '1:27 AM', 'ultrices', 25);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (7, '1:56 AM', 'mi', 13);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (8, '1:53 PM', 'in magna', 30);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (9, '4:05 PM', 'consequat', 8);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (10, '11:05 PM', 'molestie sed', 1);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (11, '12:01 AM', 'semper', 17);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (12, '1:14 AM', 'gravida sem', 26);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (13, '5:41 PM', 'sollicitudin', 21);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (14, '6:38 AM', 'adipiscing', 10);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (15, '11:54 AM', 'quis', 16);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (16, '8:43 AM', 'magna', 29);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (17, '6:39 PM', 'pellentesque ultrices', 12);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (18, '2:33 AM', 'quis', 19);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (19, '4:16 PM', 'tortor risus', 9);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (20, '2:05 AM', 'feugiat et', 26);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (21, '1:16 PM', 'interdum in', 26);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (22, '11:24 PM', 'nec molestie', 24);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (23, '5:53 PM', 'ipsum praesent', 17);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (24, '12:02 PM', 'id', 16);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (25, '12:31 AM', 'sit amet', 19);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (26, '1:54 AM', 'dui proin', 1);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (28, '12:03 PM', 'posuere', 24);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (29, '3:13 PM', 'ultrices', 6);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (30, '5:18 AM', 'nec euismod', 5);
insert into StudentTutorRequest (Request_num, PreferredTime, RequestedTopic, StudentID) values (31, '3:50 AM', 'lacus curabitur', 21);

-- Match Table
CREATE TABLE TutorMatch (
MatchID INT PRIMARY KEY AUTO_INCREMENT,
MatchStatus VARCHAR(50),
PaymentStatus VARCHAR(50),
Request_num INT,
OfferingID INT,
FOREIGN KEY (Request_num) REFERENCES StudentTutorRequest(Request_num),
FOREIGN KEY (OfferingID) REFERENCES Offering(OfferingID)
) ENGINE=INNODB;

-- Mock Data: Match Table

INSERT INTO TutorMatch (MatchID, MatchStatus, PaymentStatus, Request_num, OfferingID) VALUES
(1,  'pending',   true,  1,  2),
(2,  'confirmed', false, 2,  3),
(3,  'pending',   false, 3,  4),
(4,  'completed', true,  4,  5),
(5,  'cancelled', false, 5,  6),
(6,  'confirmed', true,  6,  8),
(7,  'pending',   false, 7,  9),
(8,  'completed', true,  8,  10),
(9,  'confirmed', false, 9,  12),
(10, 'pending',   false, 10, 13),
(11, 'completed', true,  11, 17),
(12, 'cancelled', false, 12, 19),
(13, 'confirmed', true,  13, 21),
(14, 'pending',   false, 14, 24),
(15, 'completed', true,  15, 25),
(16, 'confirmed', false, 16, 26),
(17, 'pending',   true,  17, 27),
(18, 'cancelled', false, 18, 30),
(19, 'completed', true,  19, 2),
(20, 'confirmed', false, 20, 3),
(21, 'pending',   true,  21, 4),
(22, 'completed', false, 22, 5),
(23, 'confirmed', true,  23, 6),
(24, 'cancelled', false, 24, 8),
(25, 'completed', true,  25, 9),
(26, 'confirmed', false, 26, 10),
(27, 'pending',   true,  28, 12),
(28, 'completed', false, 29, 13),
(29, 'confirmed', true,  30, 17),
(30, 'cancelled', false, 31, 19);

-- Review Table
CREATE TABLE Review (
ReviewID INT PRIMARY KEY AUTO_INCREMENT,
Rating INT,
Feedback TEXT,
MatchID INT UNIQUE,
FOREIGN KEY (MatchID) REFERENCES TutorMatch(MatchID)
) ENGINE=INNODB;

-- Mock Data: Review Table 

insert into Review (Reviewid, Rating, Feedback, MatchID) values (1, 2, 'venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu', 1);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (2, 1, 'eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor', 2);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (3, 3, 'consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla', 3);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (4, 1, 'et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis', 4);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (5, 4, 'eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus', 5);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (6, 2, 'nam dui proin leo odio porttitor id consequat in consequat ut', 6);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (7, 1, 'consequat metus sapien ut nunc vestibulum ante ipsum primis in', 7);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (8, 5, 'blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices', 8);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (9, 3, 'donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum', 9);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (10, 2, 'in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis', 10);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (11, 4, 'eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst', 11);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (12, 5, 'est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices', 12);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (13, 4, 'eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam', 13);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (14, 3, 'sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis', 14);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (15, 1, 'quam a odio in hac habitasse platea dictumst maecenas ut', 15);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (16, 2, 'lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa', 16);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (17, 2, 'sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus', 17);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (18, 1, 'ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat', 18);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (19, 2, 'sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod', 19);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (20, 4, 'eleifend luctus ultricies eu nibh quisque id justo sit amet', 20);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (21, 1, 'felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl', 21);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (22, 3, 'parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id', 22);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (23, 3, 'erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at', 23);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (24, 4, 'viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui', 24);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (25, 4, 'commodo placerat praesent blandit nam nulla integer pede justo lacinia eget', 25);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (26, 5, 'eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat', 26);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (27, 3, 'iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc', 27);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (28, 5, 'velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum', 28);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (29, 2, 'sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at', 29);
insert into Review (Reviewid, Rating, Feedback, MatchID) values (30, 2, 'aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec', 30);

--Queries 

    SELECT s.Name, c.Course_num AS Course, m.MatchStatus AS Status, s.StudentID AS 'Group'
    FROM StudentTutorRequest AS str
    JOIN Student AS s ON str.StudentID = s.StudentID 
    JOIN WaitListEntry AS we ON s.StudentID = we.StudentID 
    JOIN Course AS c ON we.CourseID = c.CourseID 
    LEFT JOIN TutorMatch AS tm ON str.Request_num = tm.Request_num
    ORDER BY s.StudentID, c.Course_num;

    SELECT s.Name AS Student, c.Course_num AS Course
    FROM StudentTutorRequest AS str
    JOIN Student AS s ON str.StudentID = s.StudentID 
    JOIN WaitlistEntry AS we ON s.StudentID = we.StudentID 
    JOIN Course AS c ON we.CourseID = c.CourseID 
    LEFT JOIN TutorMatch AS tm ON str.Request_num = tm.Request_num
    WHERE tm.MatchStatus IS NULL OR tm.MatchStatus = 'cancelled';

    SELECT t.Name AS Tutor, tm.MatchStatus AS 'Matched Status', o.Experience AS 'Course Coverage'
    FROM Tutor AS t 
    JOIN Offering AS o ON t.TutorID = o.TutorID 
    LEFT JOIN TutorMatch AS tm ON o.OfferingID = tm.OfferingID 
    ORDER BY t.name;

    SELECT
    t.tutor_id,
    t.name,
    t.email,
    t.phone
    FROM tutors t
    WHERE t.tutor_id NOT IN (
    SELECT tutor_id
    FROM matches
    WHERE status IN ('Matched', 'In Progress')
    );

    SELECT
    s.name                  AS student_name,
    s.email                 AS student_email,
    tr.course_name,
    tr.course_number,
    t.name                  AS tutor_name,
    t.email                 AS tutor_email,
    tr.budget_range         AS student_budget,
    tc.fee                  AS tutor_fee,
    m.status                AS match_status,
    CASE
        WHEN tr.seeking_paid = TRUE AND tc.charges_fee = TRUE THEN 'Paid'
        ELSE 'Free'
    END                     AS payment_status
    FROM matches m
    JOIN tutoring_requests tr   ON m.request_id   = tr.request_id
    JOIN students s             ON tr.student_id  = s.student_id
    JOIN tutors t               ON m.tutor_id     = t.tutor_id
    JOIN tutor_courses tc       ON m.tutor_id     = tc.tutor_id AND tr.course_number = tc.course_number
    WHERE m.status IN ('Matched', 'In Progress', 'Fulfilled');
