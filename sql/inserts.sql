INSERT INTO "public.Genres" (name) VALUES
	('Комедия'),
	('Мультфильмы'),
	('Ужасы'),
	('Фантастика'),
	('Триллеры'),
	('Боевики'),
	('Мелодрамы'),
	('Детективы'),
	('Приключения'),
	('Фэнтези'),
	('Военные'),
	('Семейные'),
	('Аниме'),
	('Исторические'),
	('Драмы'),
	('Документальные'),
	('Детские'),
	('Криминал'),
	('Биографии'),
	('Вестерны'),
	('Фильмы-нуар'),
	('Спортивные'),
	('Реальное ТВ'),
	('Короткометражки'),
	('Музыкальные'),
	('Мюзиклы'),
	('Ток-шоу'),
	('Игры');

INSERT INTO "public.Movies" (name, release_date, duration, mpaa, rating, kp_id, description) VALUES
	('Зеленая миля','1999-11-18','3:09:00','R',9.1,'435',
		'Пол Эджкомб — начальник блока смертников в тюрьме «Холодная гора», каждый из узников которого однажды проходит «зеленую милю» по пути к месту казни. Пол повидал много заключённых и надзирателей за время работы. Однако гигант Джон Коффи, обвинённый в страшном преступлении, стал одним из самых необычных обитателей блока.'),
	('Побег из Шоушенка','1994-09-10','2:22:00','R',9.1,'326',
		'Бухгалтер Энди Дюфрейн обвинён в убийстве собственной жены и её любовника. Оказавшись в тюрьме под названием Шоушенк, он сталкивается с жестокостью и беззаконием, царящими по обе стороны решётки. Каждый, кто попадает в эти стены, становится их рабом до конца жизни. Но Энди, обладающий живым умом и доброй душой, находит подход как к заключённым, так и к охранникам, добиваясь их особого к себе расположения.'),
	('Форрест Гамп','1994-06-23','2:22:00','PG-13',8.9,'448',
		'Сидя на автобусной остановке, Форрест Гамп — не очень умный, но добрый и открытый парень — рассказывает случайным встречным историю своей необыкновенной жизни. С самого малолетства парень страдал от заболевания ног, соседские мальчишки дразнили его, но в один прекрасный день Форрест открыл в себе невероятные способности к бегу. Подруга детства Дженни всегда его поддерживала и защищала, но вскоре дороги их разошлись.'),
	('1+1','2011-09-23','1:52:00','R',8.8,'535341',
		'Пострадав в результате несчастного случая, богатый аристократ Филипп нанимает в помощники человека, который менее всего подходит для этой работы, – молодого жителя предместья Дрисса, только что освободившегося из тюрьмы. Несмотря на то, что Филипп прикован к инвалидному креслу, Дриссу удается привнести в размеренную жизнь аристократа дух приключений.'),
	('Список Шиндлера','1993-11-30','3:15:00','R',8.8,'329',
		'Фильм рассказывает реальную историю загадочного Оскара Шиндлера, члена нацистской партии, преуспевающего фабриканта, спасшего во время Второй мировой войны почти 1200 евреев.'),
	('Интерстеллар','2014-10-26','2:49:00','PG-13',8.6,'258687',
		'Когда засуха, пыльные бури и вымирание растений приводят человечество к продовольственному кризису, коллектив исследователей и учёных отправляется сквозь червоточину (которая предположительно соединяет области пространства-времени через большое расстояние) в путешествие, чтобы превзойти прежние ограничения для космических путешествий человека и найти планету с подходящими для человечества условиями.'),
	('Властелин колец: Возвращение короля','2003-05-25','3:21:00','PG-13',8.7,'3498',
		'Повелитель сил тьмы Саурон направляет свою бесчисленную армию под стены Минас-Тирита, крепости Последней Надежды. Он предвкушает близкую победу, но именно это мешает ему заметить две крохотные фигурки — хоббитов, приближающихся к Роковой Горе, где им предстоит уничтожить Кольцо Всевластья.'),
	('Бойцовский клуб','1999-09-10','2:19:00','R',8.7,'361',
		'Сотрудник страховой компании страдает хронической бессонницей и отчаянно пытается вырваться из мучительно скучной жизни. Однажды в очередной командировке он встречает некоего Тайлера Дёрдена — харизматического торговца мылом с извращенной философией. Тайлер уверен, что самосовершенствование — удел слабых, а единственное, ради чего стоит жить, — саморазрушение. Проходит немного времени, и вот уже новые друзья лупят друг друга почем зря на стоянке перед баром, и очищающий мордобой доставляет им высшее блаженство. Приобщая других мужчин к простым радостям физической жестокости, они основывают тайный Бойцовский клуб, который начинает пользоваться невероятной популярностью.'),
	('Унесённые призраками','2001-07-20','2:05:00','PG',8.5,'370',
		'Тихиро с мамой и папой переезжает в новый дом. Заблудившись по дороге, они оказываются в странном пустынном городе, где их ждет великолепный пир. Родители с жадностью набрасываются на еду и к ужасу девочки превращаются в свиней, став пленниками злой колдуньи Юбабы. Теперь, оказавшись одна среди волшебных существ и загадочных видений, Тихиро должна придумать, как избавить своих родителей от чар коварной старухи.'),
	('Тайна Коко','2017-10-20','1:45:00','PG',8.7,'679486',
		'12-летний Мигель живёт в мексиканской деревушке в семье сапожников и тайно мечтает стать музыкантом. Тайно, потому что в его семье музыка считается проклятием. Когда-то его прапрадед оставил жену, прапрабабку Мигеля, ради мечты, которая теперь не даёт спокойно жить и его праправнуку. С тех пор музыкальная тема в семье стала табу. Мигель обнаруживает, что между ним и его любимым певцом Эрнесто де ла Крусом, ныне покойным, существует некая связь. Паренёк отправляется к своему кумиру в Страну Мёртвых, где встречает души предков. Мигель знакомится там с духом-скелетом по имени Гектор, который становится его проводником. Вдвоём они отправляются на поиски де ла Круса.');



INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Зеленая миля' AND g.name = 'Драмы';

INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Зеленая миля' AND g.name = 'Фэнтези';

INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Зеленая миля' AND g.name = 'Криминал';

INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Побег из Шоушенка' AND g.name = 'Драмы';

INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Форрест Гамп' AND g.name = 'Драмы';

INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Форрест Гамп' AND g.name = 'Комедия';

INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Форрест Гамп' AND g.name = 'Мелодрамы';

INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Форрест Гамп' AND g.name = 'Исторические';

INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Форрест Гамп' AND g.name = 'Военные';

INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = '1+1' AND g.name = 'Драмы';
            
INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = '1+1' AND g.name = 'Комедия';
            
INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = '1+1' AND g.name = 'Мелодрамы';

INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Список Шиндлера' AND g.name = 'Драмы';
            
INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Список Шиндлера' AND g.name = 'Биографии';
            
INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Список Шиндлера' AND g.name = 'Исторические';
            
INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Список Шиндлера' AND g.name = 'Военные';

INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Интерстеллар' AND g.name = 'Фантастика';
            
INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Интерстеллар' AND g.name = 'Драмы';
            
INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Интерстеллар' AND g.name = 'Приключения';

INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Властелин колец: Возвращение короля' AND g.name = 'Фэнтези';
            
INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Властелин колец: Возвращение короля' AND g.name = 'Приключения';
            
INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Властелин колец: Возвращение короля' AND g.name = 'Драмы';
            
INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Властелин колец: Возвращение короля' AND g.name = 'Боевики';

INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Бойцовский клуб' AND g.name = 'Триллеры';
            
INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Бойцовский клуб' AND g.name = 'Драмы';
            
INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Бойцовский клуб' AND g.name = 'Криминал';

INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Унесённые призраками' AND g.name = 'Аниме';
            
INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Унесённые призраками' AND g.name = 'Мультфильмы';
            
INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Унесённые призраками' AND g.name = 'Драмы';
            
INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Унесённые призраками' AND g.name = 'Фэнтези';
            
INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Унесённые призраками' AND g.name = 'Приключения';
            
INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Унесённые призраками' AND g.name = 'Семейные';

INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Тайна Коко' AND g.name = 'Мультфильмы';
            
INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Тайна Коко' AND g.name = 'Фэнтези';
            
INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Тайна Коко' AND g.name = 'Комедия';
            
INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Тайна Коко' AND g.name = 'Приключения';
            
INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Тайна Коко' AND g.name = 'Семейные';
            
INSERT INTO "public.Movies_genres" (movie_id, genres_id)
SELECT m.id, g.id
FROM "public.Movies" m
JOIN "public.Genres" g ON m.name = 'Тайна Коко' AND g.name = 'Музыкальные';




DO $$
DECLARE id_movie INT;
BEGIN
	SELECT m.id INTO id_movie
	FROM "public.Movies" m
	WHERE m.name = 'Зеленая миля';

	INSERT INTO "public.Pictures_movie" (movie_id, "isMain", ref) VALUES
		(id_movie, True, 'https://www.kinopoisk.ru/picture/1153923/'),
		(id_movie, False, 'https://www.kinopoisk.ru/picture/3542725/');
END $$;

DO $$
DECLARE id_movie INT;
BEGIN
	SELECT m.id INTO id_movie
	FROM "public.Movies" m
	WHERE m.name = 'Побег из Шоушенка';

	INSERT INTO "public.Pictures_movie" (movie_id, "isMain", ref) VALUES
		(id_movie, True, 'https://www.kinopoisk.ru/picture/2808223/'),
		(id_movie, False, 'https://www.kinopoisk.ru/picture/1523744/');
END $$;

DO $$
DECLARE id_movie INT;
BEGIN
	SELECT m.id INTO id_movie
	FROM "public.Movies" m
	WHERE m.name = 'Форрест Гамп';

	INSERT INTO "public.Pictures_movie" (movie_id, "isMain", ref) VALUES
		(id_movie, True, 'https://www.kinopoisk.ru/picture/3779340/'),
		(id_movie, False, 'https://www.kinopoisk.ru/picture/3948225/');
END $$;

DO $$
DECLARE id_movie INT;
BEGIN
	SELECT m.id INTO id_movie
	FROM "public.Movies" m
	WHERE m.name = '1+1';

	INSERT INTO "public.Pictures_movie" (movie_id, "isMain", ref) VALUES
		(id_movie, True, 'https://www.kinopoisk.ru/picture/2261752/'),
		(id_movie, False, 'https://www.kinopoisk.ru/picture/1877733/');
END $$;

DO $$
DECLARE id_movie INT;
BEGIN
	SELECT m.id INTO id_movie
	FROM "public.Movies" m
	WHERE m.name = 'Список Шиндлера';

	INSERT INTO "public.Pictures_movie" (movie_id, "isMain", ref) VALUES
		(id_movie, True, 'https://www.kinopoisk.ru/picture/3252305/'),
		(id_movie, False, 'https://www.kinopoisk.ru/picture/3723118/');
END $$;

DO $$
DECLARE id_movie INT;
BEGIN
	SELECT m.id INTO id_movie
	FROM "public.Movies" m
	WHERE m.name = 'Интерстеллар';

	INSERT INTO "public.Pictures_movie" (movie_id, "isMain", ref) VALUES
		(id_movie, True, 'https://www.kinopoisk.ru/picture/2769180/'),
		(id_movie, False, 'https://www.kinopoisk.ru/picture/3335804/');
END $$;

DO $$
DECLARE id_movie INT;
BEGIN
	SELECT m.id INTO id_movie
	FROM "public.Movies" m
	WHERE m.name = 'Властелин колец: Возвращение короля';

	INSERT INTO "public.Pictures_movie" (movie_id, "isMain", ref) VALUES
		(id_movie, True, 'https://www.kinopoisk.ru/picture/3637700/'),
		(id_movie, False, 'https://www.kinopoisk.ru/picture/1531319/');
END $$;

DO $$
DECLARE id_movie INT;
BEGIN
	SELECT m.id INTO id_movie
	FROM "public.Movies" m
	WHERE m.name = 'Бойцовский клуб';

	INSERT INTO "public.Pictures_movie" (movie_id, "isMain", ref) VALUES
		(id_movie, True, 'https://www.kinopoisk.ru/picture/3973040/'),
		(id_movie, False, 'https://www.kinopoisk.ru/picture/3723102/');
END $$;

DO $$
DECLARE id_movie INT;
BEGIN
	SELECT m.id INTO id_movie
	FROM "public.Movies" m
	WHERE m.name = 'Унесённые призраками';

	INSERT INTO "public.Pictures_movie" (movie_id, "isMain", ref) VALUES
		(id_movie, True, 'https://www.kinopoisk.ru/picture/3383066/'),
		(id_movie, False, 'https://www.kinopoisk.ru/picture/3683067/');
END $$;

DO $$
DECLARE id_movie INT;
BEGIN
	SELECT m.id INTO id_movie
	FROM "public.Movies" m
	WHERE m.name = 'Тайна Коко';

	INSERT INTO "public.Pictures_movie" (movie_id, "isMain", ref) VALUES
		(id_movie, True, 'https://www.kinopoisk.ru/picture/3094595/'),
		(id_movie, False, 'https://www.kinopoisk.ru/picture/3044382/');
END $$;



INSERT INTO "public.Film_crew_members" (name, birthday, birthplace, height) VALUES
	('Том Хэнкс', '1956-07-09', 'Конкорд, Калифорния, США', 183),
	('Тим Роббинс', '1958-10-16', 'Уэст-Ковина, Калифорния, США', 196),
	('Морган Фриман', '1937-06-01', 'Мемфис, Теннесси, США', 188),
	('Франсуа Клюзе', '1955-09-21', 'Париж, Франция', 174),
	('Омар Си', '1978-01-20', 'Трап, Ивелин, Франция', 190),
	('Лиам Нисон', '1952-06-07', 'Беллимен, Северная Ирландия, Великобритания', 192),
	('Мэттью МакКонахи', '1969-11-04', 'Увалд, Техас, США', 182),
	('Энн Хэтэуэй', '1982-11-12', 'Бруклин, Нью-Йорк, США', 173),
	('Элайджа Вуд', '1981-01-28', 'Сидар-Рапидс, Айова, США', 168),
	('Орландо Блум', '1977-01-13', 'Кентербери, Кент, Великобритания', 180),
	('Эдвард Нортон', '1969-08-18', 'Бостон, Массачусетс, США', 183),
	('Брэд Питт', '1963-12-18', 'Шоуни, Оклахома, США', 180),
	('Хелена Бонем Картер', '1966-05-26', 'Голдерс-Грин, Лондон, Англия, Великобритания', 157);



DO $$
DECLARE id_member_0 INT;
DECLARE id_movie_0 INT;
DECLARE id_member_1 INT;
DECLARE id_movie_1 INT;
DECLARE id_member_2 INT;
DECLARE id_movie_2 INT;
DECLARE id_member_3 INT;
DECLARE id_movie_3 INT;
DECLARE id_member_4 INT;
DECLARE id_movie_4 INT;
DECLARE id_member_5 INT;
DECLARE id_movie_5 INT;
DECLARE id_member_6 INT;
DECLARE id_movie_6 INT;
DECLARE id_member_7 INT;
DECLARE id_movie_7 INT;
DECLARE id_member_8 INT;
DECLARE id_movie_8 INT;
DECLARE id_member_9 INT;
DECLARE id_movie_9 INT;
DECLARE id_member_10 INT;
DECLARE id_movie_10 INT;
DECLARE id_member_11 INT;
DECLARE id_movie_11 INT;
DECLARE id_member_12 INT;
DECLARE id_movie_12 INT;
DECLARE id_member_13 INT;
DECLARE id_movie_13 INT;
BEGIN
	SELECT cm.id INTO id_member_0
	FROM "public.Film_crew_members" cm
	WHERE cm.name = 'Том Хэнкс';

	SELECT m.id INTO id_movie_0
	FROM "public.Movies" m
	WHERE m.name = 'Зеленая миля';
    
	id_member_1 = id_member_0;

	SELECT m.id INTO id_movie_1
	FROM "public.Movies" m
	WHERE m.name = 'Форрест Гамп';
    
	SELECT cm.id INTO id_member_2
	FROM "public.Film_crew_members" cm
	WHERE cm.name = 'Тим Роббинс';

	SELECT m.id INTO id_movie_2
	FROM "public.Movies" m
	WHERE m.name = 'Побег из Шоушенка';
    
	SELECT cm.id INTO id_member_3
	FROM "public.Film_crew_members" cm
	WHERE cm.name = 'Морган Фриман';

	id_movie_3 = id_movie_2;

	SELECT cm.id INTO id_member_4
	FROM "public.Film_crew_members" cm
	WHERE cm.name = 'Франсуа Клюзе';

	SELECT m.id INTO id_movie_4
	FROM "public.Movies" m
	WHERE m.name = '1+1';
    
	SELECT cm.id INTO id_member_5
	FROM "public.Film_crew_members" cm
	WHERE cm.name = 'Омар Си';

	id_movie_5 = id_movie_4;

	SELECT cm.id INTO id_member_6
	FROM "public.Film_crew_members" cm
	WHERE cm.name = 'Лиам Нисон';

	SELECT m.id INTO id_movie_6
	FROM "public.Movies" m
	WHERE m.name = 'Список Шиндлера';
    
	SELECT cm.id INTO id_member_7
	FROM "public.Film_crew_members" cm
	WHERE cm.name = 'Мэттью МакКонахи';

	SELECT m.id INTO id_movie_7
	FROM "public.Movies" m
	WHERE m.name = 'Интерстеллар';
    
	SELECT cm.id INTO id_member_8
	FROM "public.Film_crew_members" cm
	WHERE cm.name = 'Энн Хэтэуэй';

	id_movie_8 = id_movie_7;

	SELECT cm.id INTO id_member_9
	FROM "public.Film_crew_members" cm
	WHERE cm.name = 'Элайджа Вуд';

	SELECT m.id INTO id_movie_9
	FROM "public.Movies" m
	WHERE m.name = 'Властелин колец: Возвращение короля';
    
	SELECT cm.id INTO id_member_10
	FROM "public.Film_crew_members" cm
	WHERE cm.name = 'Орландо Блум';

	id_movie_10 = id_movie_9;

	SELECT cm.id INTO id_member_11
	FROM "public.Film_crew_members" cm
	WHERE cm.name = 'Эдвард Нортон';

	SELECT m.id INTO id_movie_11
	FROM "public.Movies" m
	WHERE m.name = 'Бойцовский клуб';
    
	SELECT cm.id INTO id_member_12
	FROM "public.Film_crew_members" cm
	WHERE cm.name = 'Брэд Питт';

	id_movie_12 = id_movie_11;

	SELECT cm.id INTO id_member_13
	FROM "public.Film_crew_members" cm
	WHERE cm.name = 'Хелена Бонем Картер';

	id_movie_13 = id_movie_11;

	INSERT INTO "public.Films_positions" (member_id, movie_id, name) VALUES
		(id_member_0, id_movie_0, 'Актер'),
		(id_member_1, id_movie_1, 'Актер'),
		(id_member_2, id_movie_2, 'Актер'),
		(id_member_3, id_movie_3, 'Актер'),
		(id_member_4, id_movie_4, 'Актер'),
		(id_member_5, id_movie_5, 'Актер'),
		(id_member_6, id_movie_6, 'Актер'),
		(id_member_7, id_movie_7, 'Актер'),
		(id_member_8, id_movie_8, 'Актер'),
		(id_member_9, id_movie_9, 'Актер'),
		(id_member_10, id_movie_10, 'Актер'),
		(id_member_11, id_movie_11, 'Актер'),
		(id_member_12, id_movie_12, 'Актер'),
		(id_member_13, id_movie_13, 'Актер');
END $$;



INSERT INTO "public.Primes" (name) VALUES
	('Оскар'),
	('Золотой глобус'),
	('Британская академия'),
	('Сезар'),
	('Премия Гильдии актеров'),
	('Сатурн'),
	('Гойя'),
	('Эмми'),
	('Азиатская киноакадемия'),
	('Европейская киноакадемия'),
	('Премия канала «MTV»'),
	('Золотая малина');



DO $$
DECLARE id_member_0 INT;
DECLARE id_movie_0 INT;
DECLARE id_member_1 INT;
DECLARE id_movie_1 INT;
DECLARE id_movie_2 INT;
DECLARE id_movie_3 INT;
BEGIN
	SELECT cm.id INTO id_member_0
	FROM "public.Film_crew_members" cm
	WHERE cm.name = 'Том Хэнкс';

	SELECT m.id INTO id_movie_0
	FROM "public.Movies" m
	WHERE m.name = 'Зеленая миля';
    
	id_member_1 = id_member_0;

	SELECT m.id INTO id_movie_1
	FROM "public.Movies" m
	WHERE m.name = 'Форрест Гамп';
    
	id_movie_2 = id_movie_0;

	id_movie_3 = id_movie_1;

	INSERT INTO "public.Nominees" (film_crew_members_id, movie_id) VALUES
		(id_member_0, id_movie_0),
		(id_member_1, id_movie_1),
		(null, id_movie_2),
		(null, id_movie_3);
END $$;



DO $$
DECLARE id_nominee_0 INT;
DECLARE id_prime_0 INT;
DECLARE id_nominee_1 INT;
DECLARE id_prime_1 INT;
DECLARE id_nominee_2 INT;
DECLARE id_prime_2 INT;
DECLARE id_nominee_3 INT;
DECLARE id_prime_3 INT;
DECLARE id_nominee_4 INT;
DECLARE id_prime_4 INT;
DECLARE id_nominee_5 INT;
DECLARE id_prime_5 INT;
DECLARE id_nominee_6 INT;
DECLARE id_prime_6 INT;
DECLARE id_nominee_7 INT;
DECLARE id_prime_7 INT;
DECLARE id_nominee_8 INT;
DECLARE id_prime_8 INT;
DECLARE id_nominee_9 INT;
DECLARE id_prime_9 INT;
DECLARE id_nominee_10 INT;
DECLARE id_prime_10 INT;
DECLARE id_nominee_11 INT;
DECLARE id_prime_11 INT;
DECLARE id_nominee_12 INT;
DECLARE id_prime_12 INT;
DECLARE id_nominee_13 INT;
DECLARE id_prime_13 INT;

BEGIN
	SELECT nom.id INTO id_nominee_0
	FROM "public.Nominees" nom
	JOIN "public.Movies" m ON nom.movie_id = m.id
	JOIN "public.Film_crew_members" cm ON nom.film_crew_members_id = cm.id
	WHERE m.name = 'Зеленая миля' AND cm.name = 'Том Хэнкс';

	SELECT p.id INTO id_prime_0
	FROM "public.Primes" p
	WHERE p.name = 'Премия Гильдии актеров';
    
	SELECT nom.id INTO id_nominee_1
	FROM "public.Nominees" nom
	JOIN "public.Movies" m ON nom.movie_id = m.id
	JOIN "public.Film_crew_members" cm ON nom.film_crew_members_id = cm.id
	WHERE m.name = 'Форрест Гамп' AND cm.name = 'Том Хэнкс';

	SELECT p.id INTO id_prime_1
	FROM "public.Primes" p
	WHERE p.name = 'Оскар';
    
	id_nominee_2 = id_nominee_1;

	SELECT p.id INTO id_prime_2
	FROM "public.Primes" p
	WHERE p.name = 'Золотой глобус';
    
	id_nominee_3 = id_nominee_1;

	SELECT p.id INTO id_prime_3
	FROM "public.Primes" p
	WHERE p.name = 'Премия канала «MTV»';
    
	id_nominee_4 = id_nominee_1;

	SELECT p.id INTO id_prime_4
	FROM "public.Primes" p
	WHERE p.name = 'Британская академия';
    
	id_nominee_5 = id_nominee_1;

	SELECT p.id INTO id_prime_5
	FROM "public.Primes" p
	WHERE p.name = 'Сатурн';
    
	id_nominee_6 = id_nominee_1;

	id_prime_6 = id_prime_0;

	SELECT nom.id INTO id_nominee_7
	FROM "public.Nominees" nom
	JOIN "public.Movies" m ON nom.movie_id = m.id
	WHERE m.name = 'Зеленая миля' AND nom.film_crew_members_id IS NULL;

	id_prime_7 = id_prime_1;

	id_nominee_8 = id_nominee_7;

	id_prime_8 = id_prime_5;

	id_nominee_9 = id_nominee_7;

	id_prime_9 = id_prime_1;

	SELECT nom.id INTO id_nominee_10
	FROM "public.Nominees" nom
	JOIN "public.Movies" m ON nom.movie_id = m.id
	WHERE m.name = 'Форрест Гамп' AND nom.film_crew_members_id IS NULL;

	id_prime_10 = id_prime_1;

	id_nominee_11 = id_nominee_10;

	id_prime_11 = id_prime_2;

	id_nominee_12 = id_nominee_10;

	id_prime_12 = id_prime_3;

	id_nominee_13 = id_nominee_10;

	id_prime_13 = id_prime_4;

	INSERT INTO "public.Prime_nominations" (nominee_id, prime_id, nomination, year, "isWon") VALUES
		(id_nominee_0, id_prime_0, 'Лучший актерский состав', 2000, False),
		(id_nominee_1, id_prime_1, 'Лучшая мужская роль', 1995, True),
		(id_nominee_2, id_prime_2, 'Лучшая мужская роль (драма)', 1995, True),
		(id_nominee_3, id_prime_3, 'Лучшая мужская роль', 1995, False),
		(id_nominee_4, id_prime_4, 'Лучшая мужская роль', 1995, False),
		(id_nominee_5, id_prime_5, 'Лучшая мужская роль', 1995, False),
		(id_nominee_6, id_prime_6, 'Лучшая мужская роль', 1995, True),
		(id_nominee_7, id_prime_7, 'Лучший фильм', 2000, False),
		(id_nominee_8, id_prime_8, 'Лучший приключенческий фильм, боевик или триллер', 2000, False),
		(id_nominee_9, id_prime_9, 'Лучший фильм', 2000, True),
		(id_nominee_10, id_prime_10, 'Лучший фильм', 1995, True),
		(id_nominee_11, id_prime_11, 'Лучший фильм (драма)', 1995, True),
		(id_nominee_12, id_prime_12, 'Лучший фильм', 1995, False),
		(id_nominee_13, id_prime_13, 'Лучшие визуальные эффекты', 1995, True);
END $$;

INSERT INTO "public.Cinemas" (name) VALUES
	('Альфа'),
	('Бета'),
	('Гамма');

INSERT INTO "public.Cinemas_positions" (position) VALUES
	('Директор'),
	('Кассир'),
	('Бармен'),
	('Сисадмин'),
	('Менеджер'),
	('Киномеханик');

DO $$
DECLARE id_position INT;
DECLARE id_cinema INT;

BEGIN
	SELECT cp.id INTO id_position
	FROM "public.Cinemas_positions" cp
	WHERE cp.position = 'Директор';

	SELECT c.id INTO id_cinema
	FROM "public.Cinemas" c
	WHERE c.name = 'Альфа';

	INSERT INTO "public.Staff" (cinema_id, position, login, password, birthday, email, name) VALUES
		(id_cinema, id_position, "login_1", "password_1", 02-02-1985, "email1@mail.com", "Нагорнов Олег Викторович");
END $$;

DO $$Ы
DECLARE id_position INT;
DECLARE id_cinema INT;

BEGIN
	SELECT cp.id INTO id_position
	FROM "public.Cinemas_positions" cp
	WHERE cp.position = 'Кассир';

	SELECT c.id INTO id_cinema
	FROM "public.Cinemas" c
	WHERE c.name = 'Альфа';

	INSERT INTO "public.Staff" (cinema_id, position, login, password, birthday, email, name) VALUES
		(id_cinema, id_position, "login_2", "password_2", 01-01-1986, "email2@mail.com", "Волков Владимир Евгеньевич");
END $$;

DO $$
DECLARE id_position INT;
DECLARE id_cinema INT;

BEGIN
	SELECT cp.id INTO id_position
	FROM "public.Cinemas_positions" cp
	WHERE cp.position = 'Бармен';

	SELECT c.id INTO id_cinema
	FROM "public.Cinemas" c
	WHERE c.name = 'Альфа';

	INSERT INTO "public.Staff" (cinema_id, position, login, password, birthday, email, name) VALUES
		(id_cinema, id_position, "login_3", "password_3", 12-12-1987, "email3@mail.com", "Гани Вахид Абдулович");
END $$;

DO $$
DECLARE id_position INT;
DECLARE id_cinema INT;

BEGIN
	SELECT cp.id INTO id_position
	FROM "public.Cinemas_positions" cp
	WHERE cp.position = 'Сисадмин';

	SELECT c.id INTO id_cinema
	FROM "public.Cinemas" c
	WHERE c.name = 'Альфа';

	INSERT INTO "public.Staff" (cinema_id, position, login, password, birthday, email, name) VALUES
		(id_cinema, id_position, "login_4", "password_4", 12-12-1987, "email4@mail.com", "Костин Андрей Борисович");
END $$;

DO $$
DECLARE id_position INT;
DECLARE id_cinema INT;

BEGIN
	SELECT cp.id INTO id_position
	FROM "public.Cinemas_positions" cp
	WHERE cp.position = 'Менеджер';

	SELECT c.id INTO id_cinema
	FROM "public.Cinemas" c
	WHERE c.name = 'Альфа';

	INSERT INTO "public.Staff" (cinema_id, position, login, password, birthday, email, name) VALUES
		(id_cinema, id_position, "login_5", "password_5", 11-11-1980, "email5@mail.com", "Чечкина Татьяна Петровна");
END $$;

DO $$
DECLARE id_position INT;
DECLARE id_cinema INT;

BEGIN
	SELECT cp.id INTO id_position
	FROM "public.Cinemas_positions" cp
	WHERE cp.position = 'Киномеханик';

	SELECT c.id INTO id_cinema
	FROM "public.Cinemas" c
	WHERE c.name = 'Альфа';

	INSERT INTO "public.Staff" (cinema_id, position, login, password, birthday, email, name) VALUES
		(id_cinema, id_position, "login_6", "password_6", 11-11-1980, "email6@mail.com", "Тюфлин Сергей Александрович");
END $$;