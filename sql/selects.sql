-- получить неоплаченные заказы и кто не оплатил
SELECT (o.id, c.name)
FROM "public.Orders" o
JOIN "public.Customers" c on c.id = o.customer_id
WHERE "isBooked" = FALSE;

-- получить все сеансы на день в кинотеатре
SELECT (m.name, m.description, m.duration, m.mpaa, s.time_start, h.type)
FROM "public.Sessions" s
JOIN "public.Movies" m on m.id = s.movie_id
JOIN "public.Halls" h on s.hall_id = s.id
JOIN "public.Cinemas" c on h.cinema_id = c.id
WHERE s.time_start::date = '2023-11-05' AND c.name = 'Четвертый';

-- получить клиентов с почтой для рассылки родившихся в 90е
SELECT (c.mail)
FROM "public.Customers" c
WHERE c.mail IS NOT NULL
  AND c.birthday < '2000-01-01' AND c.birthday > '1990-01-01';

-- получить фильмы, билеты которых есть стоимостью не выше 450
SELECT (m.name, t.price, s.time_start)
FROM "public.Tickets" t
JOIN "public.Sessions" s on t.session_id = s.id
JOIN "public.Movies" m on s.movie_id = m.id
WHERE t.price <= 450
ORDER BY t.price DESC;

-- получить всех актеров какого-нибудь фильма сортированных по возрастанию возраста
SELECT (fcm.id, fcm.name, fcm.birthday)
FROM "public.Film_crew_members" fcm
JOIN "public.Films_positions" fp ON fcm.id = fp.member_id
JOIN "public.Movies" m ON fp.movie_id = m.id
WHERE m.name = 'Тип семейства'
ORDER BY fcm.birthday;

-- получить фильмы которые идут в этом кинотеатре в жанре Мультфильмы
SELECT (m.name, m.description, m.duration, m.mpaa, s.time_start)
FROM "public.Sessions" s
JOIN "public.Movies" m ON m.id = s.movie_id
JOIN "public.Movies_genres" mg ON m.id = mg.movie_id
JOIN "public.Genres" g ON mg.genres_id = g.id
JOIN "public.Halls" h ON s.hall_id = h.id
JOIN "public.Cinemas" c ON h.cinema_id = c.id
WHERE g.name = 'Мультфильмы'
    AND c.name = 'Девятый';


-- получить количество фильмов по жанрам
SELECT DISTINCT (g.name, count(m.id))
FROM "public.Movies" m
JOIN "public.Movies_genres" mg ON m.id = mg.movie_id
JOIN "public.Genres" g ON mg.genres_id = g.id
GROUP BY g.name;


-- получить количество занятых мест в зале на сеансе
SELECT COUNT(t.id)
FROM "public.Tickets" t
JOIN "public.Sessions" s ON t.session_id = s.id
JOIN "public.Movies" m ON m.id = s.movie_id
JOIN "public.Halls" h ON s.hall_id = h.id
JOIN "public.Cinemas" c on h.cinema_id = c.id
JOIN "public.Orders" o ON t.order_id = o.id
WHERE m.name = 'Отец смены станции'
    AND s.time_start::date = '2023-11-05'
    AND c.name = 'Двадцать второй'
    AND h.type = 'Стандартный'
    AND o."isBooked" = true;

-- количество мест на сеансе
SELECT COUNT((s.row,s.place))
FROM "public.Seats" s
JOIN "public.Halls" h ON s.hall_id = h.id
JOIN "public.Cinemas" c ON h.cinema_id = c.id
WHERE c.name = 'Первый' AND h.name = 'Стандартный';

-- количество за месяц оплат наличными
SELECT COUNT(p.id)
FROM "public.Payment" p
WHERE p.type = 'Оплата наличными на месте';

-- узнать сумму упущенной выгоды по непроданным билетам
SELECT SUM(t.price)
FROM "public.Tickets" t
JOIN "public.Orders" o ON t.order_id = o.id
JOIN "public.Payment" p ON o.id = p.order_id
WHERE p.payment_time IS NULL;

-- Вывести фильмы в n-ом кинотеатре, где снимался оскароносный актёр
SELECT DISTINCT (m.name)
FROM "public.Sessions" s
JOIN "public.Movies" m ON m.id = s.movie_id
JOIN "public.Halls" h ON s.hall_id = h.id
JOIN "public.Cinemas" c ON h.cinema_id = c.id
JOIN "public.Films_positions" fp On m.id = fp.movie_id
JOIN "public.Film_crew_members" fcm ON fp.member_id = fcm.id
JOIN "public.Nominees" n ON fcm.id = n.film_crew_members_id
JOIN "public.Prime_nominations" pn ON n.id = pn.nominee_id
JOIN "public.Primes" p ON pn.prime_id = p.id
WHERE c.name = 'Пятый'
    AND p.name = 'Оскар';

-- обновление пароля клиента по почте
UPDATE "public.Customers"
SET password = 'updatedpass'
WHERE mail = 'bobrovaraisa@example.org';

-- удаление всех сеансов с этим фильмом
DELETE FROM "public.Sessions"
WHERE movie_id = (SELECT id FROM "public.Movies"
                            WHERE name = 'Брат часть средняя');
