
----==================================================================--
--							/* Должность */

--	INSERT INTO Position ([Name]) VALUES (N'Директор');
--	INSERT INTO Position ([Name]) VALUES (N'Главный бухгалтер');
--	INSERT INTO Position ([Name]) VALUES (N'Секретарь');
--	INSERT INTO Position ([Name]) VALUES (N'Юрист');
--	INSERT INTO Position ([Name]) VALUES (N'Менеджер');
--	INSERT INTO Position ([Name]) VALUES (N'Водитель');
--	INSERT INTO Position ([Name]) VALUES (N'Гид-экскурсовод');
--	INSERT INTO Position ([Name]) VALUES (N'Клининг-менеджер');

----==================================================================--
--							/* Регионы */

--	INSERT INTO Region ([Name]) VALUES (N'Украина'); -- Крым
--	INSERT INTO Region ([Name]) VALUES (N'Крым'); -- Старый Крым, г. Судак, Симферополь
--	INSERT INTO Region ([Name]) VALUES (N'Киргизия'); --  г.Ош, г.Сары-Таш 
--	INSERT INTO Region ([Name]) VALUES (N'Мексика'); --  
--	INSERT INTO Region ([Name]) VALUES (N'Шри-Ланка'); --  
--	INSERT INTO Region ([Name]) VALUES (N'Филиппины'); --  Манила, 
--	INSERT INTO Region ([Name]) VALUES (N'Франция'); --  Сен-Тропе, 
--	INSERT INTO Region ([Name]) VALUES (N'Республика Мальта'); -- Luqa, 
--	INSERT INTO Region ([Name]) VALUES (N'Италия'); -- 
--	INSERT INTO Region ([Name]) VALUES (N'Хорватия'); -- г. Биоград-на-Мору, г. Зминьяк, г. Пишкера, г. Сали, г. Сукошан, г. Задар
--	INSERT INTO Region ([Name]) VALUES (N'Абхазия'); -- Гагра, Сухум, Захаровка, Цебельда, Ткуарчал, Кындыг, Новый Афон
--	INSERT INTO Region ([Name]) VALUES (N'Евразия'); -- Кавказ, 
--	INSERT INTO Region ([Name]) VALUES (N'Сочи'); -- Адлер

--	-- Самойленко Денис Николаевич, 050 684 35 88

--	INSERT INTO Region ([Name], ParentID) VALUES (N'Крым', 1);
--	INSERT INTO Region ([Name], ParentID) VALUES (N'Старый Крым', 2);
--	INSERT INTO Region ([Name], ParentID) VALUES (N'г. Судак', 2);
--	INSERT INTO Region ([Name], ParentID) VALUES (N'Симферополь', 2);
--	INSERT INTO Region ([Name], ParentID) VALUES (N'г.Ош', 3);
--	INSERT INTO Region ([Name], ParentID) VALUES (N'г.Сары-Таш', 3);
--	INSERT INTO Region ([Name], ParentID) VALUES (N'Манила', 6);
--	INSERT INTO Region ([Name], ParentID) VALUES (N'Сен-Тропе', 7);
--	INSERT INTO Region ([Name], ParentID) VALUES (N'Luqa', 8);
--	INSERT INTO Region ([Name], ParentID) VALUES (N'г. Биоград-на-Мору', 10);
--	INSERT INTO Region ([Name], ParentID) VALUES (N'г. Зминьяк', 10);
--	INSERT INTO Region ([Name], ParentID) VALUES (N'г. Пишкера', 10);
--	INSERT INTO Region ([Name], ParentID) VALUES (N'г. Сали', 10);
--	INSERT INTO Region ([Name], ParentID) VALUES (N'г. Сукошан', 10);
--	INSERT INTO Region ([Name], ParentID) VALUES (N'г. Задар', 10);
--	INSERT INTO Region ([Name], ParentID) VALUES (N'Гагра', 11);
--	INSERT INTO Region ([Name], ParentID) VALUES (N'Сухум', 11);
--	INSERT INTO Region ([Name], ParentID) VALUES (N'Захаровка', 11);
--	INSERT INTO Region ([Name], ParentID) VALUES (N'Цебельда', 11);
--	INSERT INTO Region ([Name], ParentID) VALUES (N'Ткуарчал', 11);
--	INSERT INTO Region ([Name], ParentID) VALUES (N'Кындыг', 11);
--	INSERT INTO Region ([Name], ParentID) VALUES (N'Новый Афон', 11);
--	INSERT INTO Region ([Name], ParentID) VALUES (N'Кавказ', 12);
--	INSERT INTO Region ([Name], ParentID) VALUES (N'Адлер', 13);

--	-- 1 -- Украина, Старый Крым, Сурб-Хач, Кизил-Таш, Эчки-Даг, Лисья бухта, бухта Чалка, пос. Солнечная долина, г. Судак
--		-- дост: Сурб-Хач, Кизил-Таш, Эчки-Даг, Лисья бухта, бухта Чалка, пос. Солнечная долина
--	-- 2 -- Украина, Симферополь, Большой Каньон Крыма, водопад Серебряные струи, г. Ай-Петри, Айпетринская яйла, г. Спирады, пер.Шайтан-Мердвен, Фороская церковь , пер. Байдарские ворота, г. Ильяс-Кая, мыс Сарыч.
--		-- дост: Большой Каньон Крыма, водопад Серебряные струи, г. Ай-Петри, Айпетринская яйла, г. Спирады, пер.Шайтан-Мердвен, Фороская церковь, пер. Байдарские ворота, г. Ильяс-Кая, мыс Сарыч
--	-- 3 -- Киргизия, г.Ош, г.Сары-Таш, п.Сары-Могол, БЛ «Луковая поляна», пик Ленина 7134 м
--		-- дост: п.Сары-Могол,  БЛ «Луковая поляна», пик Ленина 7134 м
--	-- 4 -- Мексика, полуостров Юкатан, остров Холбош, остров Женщин
--			-- дост: полуостров Юкатан, остров Холбош, остров Женщин
--	-- 5 -- Шри-Ланка
--			-- дост: - 
--	-- 6 -- Филиппины, Манила, Пуэрто Принцесса, рифы Туббатаха
--			-- дост: Пуэрто Принцесса, рифы Туббатаха
--	-- 7 -- Франция, Сен-Тропе, Средиземное море
--			-- дост: Средиземное море
--	-- 8 -- Республика Мальта, Luqa, Италия, Сицилия, Средиземное море
--			-- дост: Сицилия, Средиземное море
--	-- 9 -- Хорватия, Центральная Далмация, Жупания Задар, г. Биоград-на-Мору, г. Зминьяк, г. Пишкера, г. Сали, г. Сукошан, г. Задар, Средиземное море, Адриатическое море
--			-- дост: Центральная Далмация, Жупания Задар, Средиземное море, Адриатическое море
--	-- 10 -- Абхазия, Кавказ, Адлер, Гагра, Сухум, Захаровка, Цебельда, Ткуарчал, Кындыг, Новый Афон, Шакуранский водопад, озеро Амткел
--			-- дост: Шакуранский водопад, озеро Амткел

----==================================================================--
--							/* Туры */

--	INSERT INTO Tour ([Name], Price, MaxPersons) VALUES (N'Восточный Крым — очей отрада', 2500, 17);
--	INSERT INTO Tour ([Name], Price, MaxPersons) VALUES (N'По кромке Южного берега', 3500, 10);
--	INSERT INTO Tour ([Name], Price, MaxPersons) VALUES (N'ВОСХОЖДЕНИЕ НА ПИК ЛЕНИНА 7134 МЕТРА. 
--	ПАМИР – ВОСХИТИТЕЛЬНОЕ ПУТЕШЕСТВИЕ НА ВЕЛИЧЕСТВЕННУЮ ВЕРШИНУ', 17590, 15);
--	INSERT INTO Tour ([Name], Price, MaxPersons) VALUES (N'Плавание с китовыми акулами в Мексике', 68000, 16);
--	INSERT INTO Tour ([Name], Price, MaxPersons) VALUES (N'Шри-Ланка. Сноркелинг с китами и дельфинами', 95700, 10);
--	INSERT INTO Tour ([Name], Price, MaxPersons) VALUES (N'Филиппины: сафари в Национальном заповеднике Туббатаха', 100999, 9);
--	INSERT INTO Tour ([Name], Price, MaxPersons) VALUES (N'Регата Le Voiles de Saint-Tropez 2016 на яхте 
--	IMX-40 JukeboX (“Паруса Сен-Тропе”)', 42200, 8);
--	INSERT INTO Tour ([Name], Price, MaxPersons) VALUES (N'Rolex Middle Sea Race 2016 на яхте IMX-40 JukeboX (Средиземноморская регата)', 49960, 8);
--	INSERT INTO Tour ([Name], Price, MaxPersons) VALUES (N'Музыкальная регата MAYHOLIDAYS 2016', 39400, 10);
--	INSERT INTO Tour ([Name], Price, MaxPersons) VALUES (N'Осень в субтропиках. Активно-экскурсионный тур в Абхазию', 22900, 14);

----==================================================================--
--							/* Tour_Region */

--	INSERT INTO Tour_Region (TourID, RegionID) VALUES (1, 1);
--	INSERT INTO Tour_Region (TourID, RegionID) VALUES (2, 1);
--	INSERT INTO Tour_Region (TourID, RegionID) VALUES (3, 3);
--	INSERT INTO Tour_Region (TourID, RegionID) VALUES (4, 4);
--	INSERT INTO Tour_Region (TourID, RegionID) VALUES (5, 5);
--	INSERT INTO Tour_Region (TourID, RegionID) VALUES (6, 6);
--	INSERT INTO Tour_Region (TourID, RegionID) VALUES (7, 7);
--	INSERT INTO Tour_Region (TourID, RegionID) VALUES (8, 8);
--	INSERT INTO Tour_Region (TourID, RegionID) VALUES (8, 8);
--	INSERT INTO Tour_Region (TourID, RegionID) VALUES (8, 9);
--	INSERT INTO Tour_Region (TourID, RegionID) VALUES (9, 10);
--	INSERT INTO Tour_Region (TourID, RegionID) VALUES (10, 11);
--	INSERT INTO Tour_Region (TourID, RegionID) VALUES (10, 12);

----==================================================================--
--							/* Достопремичательности */

--	INSERT INTO Attraction ([Name]) VALUES (N'Сурб-Хач');
--	INSERT INTO Attraction ([Name]) VALUES (N'Кизил-Таш');
--	INSERT INTO Attraction ([Name]) VALUES (N'Эчки-Даг');
--	INSERT INTO Attraction ([Name]) VALUES (N'Лисья бухта');
--	INSERT INTO Attraction ([Name]) VALUES (N'бухта Чалка');
--	INSERT INTO Attraction ([Name]) VALUES (N'пос. Солнечная долина');

--	INSERT INTO Attraction ([Name]) VALUES (N'Большой Каньон Крыма');
--	INSERT INTO Attraction ([Name]) VALUES (N'водопад Серебряные струи');
--	INSERT INTO Attraction ([Name]) VALUES (N'г. Ай-Петри');
--	INSERT INTO Attraction ([Name]) VALUES (N'Айпетринская яйла');
--	INSERT INTO Attraction ([Name]) VALUES (N'г. Спирады');
--	INSERT INTO Attraction ([Name]) VALUES (N'пер.Шайтан-Мердвен');
--	INSERT INTO Attraction ([Name]) VALUES (N'Фороская церковь');
--	INSERT INTO Attraction ([Name]) VALUES (N'пер. Байдарские ворота');
--	INSERT INTO Attraction ([Name]) VALUES (N'г. Ильяс-Кая');
--	INSERT INTO Attraction ([Name]) VALUES (N'мыс Сарыч');

--	INSERT INTO Attraction ([Name]) VALUES (N'п.Сары-Могол');
--	INSERT INTO Attraction ([Name]) VALUES (N'БЛ «Луковая поляна»');
--	INSERT INTO Attraction ([Name]) VALUES (N'пик Ленина 7134 м');

--	INSERT INTO Attraction ([Name]) VALUES (N'полуостров Юкатан');
--	INSERT INTO Attraction ([Name]) VALUES (N'остров Холбош');
--	INSERT INTO Attraction ([Name]) VALUES (N'остров Женщин');

--	INSERT INTO Attraction ([Name]) VALUES (N'Пуэрто Принцесса');
--	INSERT INTO Attraction ([Name]) VALUES (N'рифы Туббатаха');

--	INSERT INTO Attraction ([Name]) VALUES (N'Средиземное море');

--	INSERT INTO Attraction ([Name]) VALUES (N'Сицилия');

--	INSERT INTO Attraction ([Name]) VALUES (N'Центральная Далмация');
--	INSERT INTO Attraction ([Name]) VALUES (N'Жупания Задар');
--	INSERT INTO Attraction ([Name]) VALUES (N'Средиземное море');
--	INSERT INTO Attraction ([Name]) VALUES (N'Адриатическое море');

--	INSERT INTO Attraction ([Name]) VALUES (N'Шакуранский водопад');
--	INSERT INTO Attraction ([Name]) VALUES (N'озеро Амткел');

----==================================================================--
--							/* Актуальные туры */

--INSERT INTO ActualTour(TourID, StartDate, EndDate) VALUES (1, GETDATE()+5, GETDATE()+9);
--INSERT INTO ActualTour(TourID, StartDate, EndDate) VALUES (1, GETDATE()+17, GETDATE()+21);
--INSERT INTO ActualTour(TourID, StartDate, EndDate) VALUES (1, GETDATE()+30, GETDATE()+34);
--INSERT INTO ActualTour(TourID, StartDate, EndDate) VALUES (2, GETDATE()+2, GETDATE()+8);
--INSERT INTO ActualTour(TourID, StartDate, EndDate) VALUES (2, GETDATE()+15, GETDATE()+21);
--INSERT INTO ActualTour(TourID, StartDate, EndDate) VALUES (3, GETDATE()+10, GETDATE()+26);
--INSERT INTO ActualTour(TourID, StartDate, EndDate) VALUES (4, GETDATE()+3, GETDATE()+4);
--INSERT INTO ActualTour(TourID, StartDate, EndDate) VALUES (5, GETDATE()+4, GETDATE()+12);
--INSERT INTO ActualTour(TourID, StartDate, EndDate) VALUES (6, GETDATE()+5, GETDATE()+12);
--INSERT INTO ActualTour(TourID, StartDate, EndDate) VALUES (7, GETDATE()+1, GETDATE()+10);
--INSERT INTO ActualTour(TourID, StartDate, EndDate) VALUES (7, GETDATE()+7, GETDATE()+16);
--INSERT INTO ActualTour(TourID, StartDate, EndDate) VALUES (7, GETDATE()+17, GETDATE()+26);
--INSERT INTO ActualTour(TourID, StartDate, EndDate) VALUES (8, GETDATE()+12, GETDATE()+25);
--INSERT INTO ActualTour(TourID, StartDate, EndDate) VALUES (8, GETDATE()+23, GETDATE()+36);
--INSERT INTO ActualTour(TourID, StartDate, EndDate) VALUES (9, GETDATE()+6, GETDATE()+12);
--INSERT INTO ActualTour(TourID, StartDate, EndDate) VALUES (10, GETDATE()+3, GETDATE()+8);
--INSERT INTO ActualTour(TourID, StartDate, EndDate) VALUES (10, GETDATE()+7, GETDATE()+12);

----==================================================================--
--							/* Изображения */
							
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image1');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image2');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image3');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image4');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image5');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image6');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image7');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image8');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image9');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image10');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image11');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image12');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image13');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image14');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image15');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image16');							
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image17');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image18');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image19');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image20');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image21');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image22');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image23');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image24');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image25');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image26');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image27');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image28');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image29');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image30');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image31');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image32');

--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image33');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image34');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image35');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image36');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image37');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image38');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image39');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image40');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image41');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image42');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image43');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image44');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image45');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image46');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image47');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image48');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image49');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image50');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image51');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image52');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image53');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image54');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image55');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image56');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image57');
--	INSERT INTO Image(ImageLink) VALUES ('www.image.ua/image58');

----==================================================================--
--							/* Люди */

--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Архип', N'Аксёнов', N'Альбертович', '1969-12-28', '0937315642', 'HADEMvSVKSC@gmail.com');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Кондратий', N'Юдин', N'Семенович', '1970-06-21', '0934251763', 'HKgxWoS@ukr.net');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Михаил', N'Буров', N'Геннадьевич', '1972-04-21', '0932531746', 'FuaASGTVD@mail.ru');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Авраам', N'Дементьев', N'Демьянович', '1972-05-03', '0937561432', 'jdEHfGncUqm@mail.ru');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Панкратий', N'Новиков', N'Митрофанович', '1974-02-01', '0933457612', 'fpfMpwOeSkPv@mail.ru');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Влас', N'Коновалов', N'Якунович', '1974-08-03', '0936415237', 'VBhCPfQZQ@gmail.com');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Мирослав', N'Самойлов', N'Оскарович', '1976-08-22', '0935162347', 'uFOlsmhIn@gmail.com');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Людвиг', N'Федотов', N'Семенович', '1976-09-25', '0937624531', 'FTSSNQQC@ukr.net');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Остап', N'Наумов', N'Робертович', '1977-05-08', '0936134752', 'JkDnztDp@gmail.com');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Ермолай', N'Кабанов', N'Давидович', '1980-01-21', '0936345712', 'WqDedMOF@ukr.net');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Тимофей', N'Фомин', N'Андреевич', '1980-05-01', '0674612375', 'SBsEcTpNh@gmail.com');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Николай', N'Григорьев', N'Онисимович', '1981-12-14', '0672176354', 'TlrgboXJ@mail.ru');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Нисон', N'Гаврилов', N'Ярославович', '1985-05-16', '0672713546', 'SkZADyOSNZ@gmail.com');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Максим', N'Игнатов', N'Валентинович', '1985-09-06', '0676734215', 'mTZiV@gmail.com');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Марк', N'Васильев', N'Петрович', '1987-08-09', '0676245371', 'CGZirVTmDFHG@ukr.net');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Евдоким', N'Ефимов', N'Денисович', '1987-11-17', '0671752346', 'ZdRkKKFnn@mail.ru');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Тарас', N'Алексеев', N'Вадимович', '1989-04-18', '0674167235', 'hWZccj@gmail.com');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Августин', N'Федосеев', N'Михайлович', '1990-04-02', '0671723456', 'unPRaHFZRVPit@gmail.com');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Зиновий', N'Ильин', N'Богданович', '1991-12-09', '0674235716', 'WcfGrapnlDq@ukr.net');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Родион', N'Агафонов', N'Фролович', '1992-04-02', '0671432567', 'SrzmENWq@gmail.com');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Полина', N'Щукина', N'Митрофановна', '1993-07-02', '0661754362', 'vSrNCAAseqN@gmail.com');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Хильда', N'Кулагина', N'Евсеевна', '1993-07-16', '0664572316', 'iSpTVqlyatbuFQ@gmail.com');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Дэнна', N'Ефремова', N'Юрьевна', '1995-11-16', '0664673512', 'uPEvGJhqsf@ukr.net');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Венера', N'Зыкова', N'Пётровна', '1996-10-19', '0661547623', 'kNAzntsNbjT@ukr.net');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Изольда', N'Дмитриева', N'Богуславовна', '1996-12-22', '0661745632', 'SdvRKlVAIChzZ@gmail.com');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Триана', N'Кабанова', N'Всеволодовна', '1971-01-15', '0664572316', 'sovIrSD@gmail.com');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Элизабет', N'Белоусова', N'Мэлоровна', '1971-06-08', '0664275361', 'rUmldtFr@mail.ru');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Ванесса', N'Уварова', N'Богуславовна', '1971-06-11', '0667654321', 'hEKzlXMyTrb@ukr.net');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Милиса', N'Рогова', N'Артемовна', '1973-06-15', '0665467132', 'XVDgZNVeAw@gmail.com');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Элизабет', N'Тихонова', N'Донатовна', '1973-12-31', '0664653271', 'aKWfWudDfZ@ukr.net');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Юлиан', N'Максимов', N'Эльдарович', '1976-11-26', '0636513274', 'FtDrUuoZ@gmail.com');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Мстислав', N'Крылов', N'Геннадиевич', '1978-05-13', '0632643571', 'WvmGC@gmail.com');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Артем', N'Туров', N'Александрович', '1983-05-01', '0637261453', 'QFQDGoecHrV@gmail.com');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Болеслав', N'Кондратьев', N'Агафонович', '1984-07-02', '0631643275', 'kqsvmGa@ukr.net');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Август', N'Михеев', N'Созонович', '1987-09-06', '0634635721', 'RZsSigpD@ukr.net');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Леонтий', N'Соколов', N'Яковович', '1990-07-13', '0636274315', 'oyOjiQN@ukr.net');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Трофим', N'Сорокин', N'Георгиевич', '1990-12-10', '0633125467', 'UHesUJAWarky@ukr.net');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Григорий', N'Медведев', N'Митрофанович', '1992-01-01', '0635743261', 'pVIDjwDsrgPru@mail.ru');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Назарий', N'Никифоров', N'Никитевич', '1992-04-27', '0636753142', 'yJAZbsFQUFT@mail.ru');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Исак', N'Фокин', N'Семёнович', '1995-11-08', '0633541672', 'NPbudhAxbwT@ukr.net');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Роман', N'Сафонов', N'Дмитрьевич', '1970-06-26', '0955134762', 'vDDSEPyXysGsbW@mail.ru');
--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Владлен', N'Белозёров', N'Фролович', '1973-05-29', '0955624713', 'qMUTtdlJ@mail.ru');

--INSERT INTO Person([Name], Surname, Patronymic, DOB, Phone, Email) VALUES(N'Архип', N'Аксёнов', N'Альбертович', '1969-12-28', '0937315642', 'HADEMvSVKSC@gmail.com');

----==================================================================--
--							/* Employee */

--INSERT INTO Employee(PersonID, PositionID, EmploymentDate) VALUES (1, 7, '1976-09-25');
--INSERT INTO Employee(PersonID, PositionID, EmploymentDate) VALUES (2, 7, '1971-06-11');
--INSERT INTO Employee(PersonID, PositionID, EmploymentDate) VALUES (3, 7, '1981-11-20');
--INSERT INTO Employee(PersonID, PositionID, EmploymentDate) VALUES (4, 7, '1991-05-21');
--INSERT INTO Employee(PersonID, PositionID, EmploymentDate) VALUES (5, 7, '1999-09-27');
--INSERT INTO Employee(PersonID, PositionID, EmploymentDate) VALUES (6, 7, '1971-06-11');
--INSERT INTO Employee(PersonID, PositionID, EmploymentDate) VALUES (7, 8, '1973-12-31');
--INSERT INTO Employee(PersonID, PositionID, EmploymentDate) VALUES (8, 6, '1983-05-01');
--INSERT INTO Employee(PersonID, PositionID, EmploymentDate) VALUES (9, 5, '1990-12-10');
--INSERT INTO Employee(PersonID, PositionID, EmploymentDate) VALUES (10, 1, '1995-11-08');
--INSERT INTO Employee(PersonID, PositionID, EmploymentDate) VALUES (11, 2, '1974-10-19');
--INSERT INTO Employee(PersonID, PositionID, EmploymentDate) VALUES (12, 3, '1972-05-03');
--INSERT INTO Employee(PersonID, PositionID, EmploymentDate) VALUES (13, 4, '1969-12-28');
--INSERT INTO Employee(PersonID, PositionID, EmploymentDate) VALUES (14, 6, '1985-05-16');
--INSERT INTO Employee(PersonID, PositionID, EmploymentDate) VALUES (15, 6, '1991-12-09');
--INSERT INTO Employee(PersonID, PositionID, EmploymentDate) VALUES (16, 6, '1987-11-17');
--INSERT INTO Employee(PersonID, PositionID, EmploymentDate) VALUES (17, 6, '1996-08-02');
--INSERT INTO Employee(PersonID, PositionID, EmploymentDate) VALUES (18, 6, '1977-05-08');

----==================================================================--
--							/* TravelWay */

--INSERT INTO TravelWay ([Name]) VALUES (N'Мотоцикл');
--INSERT INTO TravelWay ([Name]) VALUES (N'Автомобиль');
--INSERT INTO TravelWay ([Name]) VALUES (N'Внедорожник');
--INSERT INTO TravelWay ([Name]) VALUES (N'Автобус');
--INSERT INTO TravelWay ([Name]) VALUES (N'Поезд');
--INSERT INTO TravelWay ([Name]) VALUES (N'Самолет');
--INSERT INTO TravelWay ([Name]) VALUES (N'Велосипед');
--INSERT INTO TravelWay ([Name]) VALUES (N'Лошади');
--INSERT INTO TravelWay ([Name]) VALUES (N'Паром');
--INSERT INTO TravelWay ([Name]) VALUES (N'Вертолет');
--INSERT INTO TravelWay ([Name]) VALUES (N'Яхта');
--INSERT INTO TravelWay ([Name]) VALUES (N'Катер');

----==================================================================--
--							/* btw_Attraction_Image */

--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (1, 1);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (1, 2);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (2, 3);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (2, 4);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (3, 5);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (3, 6);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (4, 7);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (4, 8);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (5, 9);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (5, 10);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (6, 11);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (6, 12);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (7, 13);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (8, 14);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (9, 15);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (9, 16);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (10, 11);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (11, 12);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (12, 13);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (12, 4);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (13, 5);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (13, 16);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (14, 17);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (14, 18);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (15, 19);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (15, 20);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (16, 21);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (16, 22);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (17, 13);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (18, 24);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (19, 15);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (19, 26);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (20, 21);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (21, 22);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (22, 23);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (22, 24);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (23, 25);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (23, 16);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (24, 27);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (24, 28);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (25, 29);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (25, 20);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (26, 31);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (26, 12);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (27, 33);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (28, 24);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (29, 35);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (29, 16);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (30, 36);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (31, 13);
--INSERT INTO btw_Attraction_Image(AttractionID, ImageID) VALUES (32, 35);

----==================================================================--
--							/* ActualTour_Employee */

--INSERT INTO ActualTour_Employee(ActualTourID, EmployeeID) VALUES (1, 6);
--INSERT INTO ActualTour_Employee(ActualTourID, EmployeeID) VALUES (2, 4);
--INSERT INTO ActualTour_Employee(ActualTourID, EmployeeID) VALUES (3, 3);
--INSERT INTO ActualTour_Employee(ActualTourID, EmployeeID) VALUES (4, 2);
--INSERT INTO ActualTour_Employee(ActualTourID, EmployeeID) VALUES (5, 1);
--INSERT INTO ActualTour_Employee(ActualTourID, EmployeeID) VALUES (6, 5);
--INSERT INTO ActualTour_Employee(ActualTourID, EmployeeID) VALUES (7, 4);
--INSERT INTO ActualTour_Employee(ActualTourID, EmployeeID) VALUES (8, 2);
--INSERT INTO ActualTour_Employee(ActualTourID, EmployeeID) VALUES (9, 6);
--INSERT INTO ActualTour_Employee(ActualTourID, EmployeeID) VALUES (10, 5);
--INSERT INTO ActualTour_Employee(ActualTourID, EmployeeID) VALUES (11, 2);
--INSERT INTO ActualTour_Employee(ActualTourID, EmployeeID) VALUES (12, 1);
--INSERT INTO ActualTour_Employee(ActualTourID, EmployeeID) VALUES (13, 3);
--INSERT INTO ActualTour_Employee(ActualTourID, EmployeeID) VALUES (14, 5);
--INSERT INTO ActualTour_Employee(ActualTourID, EmployeeID) VALUES (15, 3);
--INSERT INTO ActualTour_Employee(ActualTourID, EmployeeID) VALUES (16, 2);
--INSERT INTO ActualTour_Employee(ActualTourID, EmployeeID) VALUES (17, 5);

----==================================================================--
--							/* Orders */

--INSERT INTO Orders (ActualTourID, PersonID) VALUES (7, 20);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (7, 23);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (7, 24);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (7, 25);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (7, 26);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (7, 27);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (7, 28);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (7, 29);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (7, 30);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (7, 7);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (7, 31);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (7, 32);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (8, 1);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (8, 2);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (8, 3);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (8, 4);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (8, 5);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (8, 6);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (8, 7);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (8, 8);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (8, 9);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (8, 10);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (10, 11);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (10, 12);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (10, 13);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (10, 14);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (10, 15);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (10, 16);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (10, 17);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (5, 18);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (5, 19);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (5, 20);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (5, 21);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (5, 22);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (5, 7);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (5, 23);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (5, 24);
--INSERT INTO Orders (ActualTourID, PersonID) VALUES (5, 25);

----==================================================================--
--							/* Order_PaidTourist */

--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (1, 68000);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (2, 68000);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (3, 68000);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (4, 60000);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (5, 68000);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (6, 38000);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (7, 68000);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (8, 15000);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (9, 48000);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (10, 30000);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (11, 68000);

--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (12, 95700);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (13, 48000);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (14, 95700);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (15, 23854);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (16, 95700);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (17, 90000);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (18, 95700);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (19, 45000);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (20, 75000);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (21, 95700);

--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (22, 42200);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (23, 25700);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (24, 42200);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (25, 35700);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (26, 22700);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (27, 42200);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (28, 10700);

--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (29, 3500);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (30, 3500);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (31, 3500);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (32, 3500);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (33, 3500);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (34, 3500);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (35, 1500);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (36, 3000);

--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (37, 68000);
--INSERT INTO Order_PaidTourist(OrderID, PaymentAmount) VALUES (38, 3500);

----==================================================================--
--							/*  */

----==================================================================--

----==================================================================--
--							/*  */

----==================================================================--

