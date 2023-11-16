-- получить неоплаченные заказы и кто не оплатил
-- SELECT o.id, c.name
-- FROM "public.Orders" o
-- JOIN "public.Customers" c on c.id = o.customer_id
-- WHERE "isBooked" = FALSE;

-- получить неоплаченные заказы и тех, кто не оплатил
SELECT o.id, c.name
FROM "public.Orders" o
JOIN "public.Customers" c ON c.id = o.customer_id
JOIN "public.Payment" p ON o.id = p.order_id
WHERE p.payment_time IS NULL;

-- получить все сеансы на день в кинотеатре
SELECT m.name, m.duration, m.mpaa, s.time_start, h.type
FROM "public.Sessions" s
JOIN "public.Movies" m on m.id = s.movie_id
JOIN "public.Halls" h on s.hall_id = h.id
JOIN "public.Cinemas" c on h.cinema_id = c.id
WHERE s.time_start::date = '2023-11-05'
    AND c.name = 'Четвертый';

-- получить почты клиентов, родившихся в 90е (для какой-нибудь рассылки)
SELECT c.mail, c.birthday
FROM "public.Customers" c
WHERE c.mail IS NOT NULL
    AND c.birthday < '2000-01-01'
    AND c.birthday >= '1990-01-01';

-- получить фильмы, билеты которых есть стоимостью не выше 450
-- SELECT m.name, t.price, s.time_start
-- FROM "public.Tickets" t
-- JOIN "public.Sessions" s on t.session_id = s.id
-- JOIN "public.Movies" m on s.movie_id = m.id
-- WHERE t.price <= 450
-- ORDER BY t.price DESC;

-- получить фильмы, на которые есть билеты стоимостью не выше 450 (выводится минимальная цена)
SELECT m.name, MIN(t.price)
FROM "public.Tickets" t
JOIN "public.Sessions" s on t.session_id = s.id
JOIN "public.Movies" m on s.movie_id = m.id
WHERE t.price <= 450
GROUP BY m.name;

-- получить всех актеров какого-нибудь фильма, сортированных по убыванию возраста
SELECT fcm.id, fcm.name, fcm.birthday
FROM "public.Film_crew_members" fcm
JOIN "public.Films_positions" fp ON fcm.id = fp.member_id
JOIN "public.Movies" m ON fp.movie_id = m.id
WHERE m.name = 'Тип семейства'
    AND fp.name = 'Актер'
ORDER BY fcm.birthday;

-- получить фильмы, которые идут в этом кинотеатре в жанре Мультфильмы
SELECT m.name, m.duration, m.mpaa, s.time_start
FROM "public.Sessions" s
JOIN "public.Movies" m ON m.id = s.movie_id
JOIN "public.Movies_genres" mg ON m.id = mg.movie_id
JOIN "public.Genres" g ON mg.genres_id = g.id
JOIN "public.Halls" h ON s.hall_id = h.id
JOIN "public.Cinemas" c ON h.cinema_id = c.id
WHERE s.time_start::date = '2023-11-05'
    AND g.name = 'Мультфильмы'
    AND c.name = 'Одиннадцатый';


-- получить количество фильмов по жанрам
SELECT g.name, COUNT(m.id) AS movies_count
FROM "public.Movies" m
JOIN "public.Movies_genres" mg ON m.id = mg.movie_id
JOIN "public.Genres" g ON mg.genres_id = g.id
GROUP BY g.name
ORDER BY movies_count DESC;


-- получить количество занятых мест в зале на сеансе
-- SELECT COUNT(t.id)
-- FROM "public.Tickets" t
-- JOIN "public.Sessions" s ON t.session_id = s.id
-- JOIN "public.Movies" m ON m.id = s.movie_id
-- JOIN "public.Halls" h ON s.hall_id = h.id
-- JOIN "public.Cinemas" c on h.cinema_id = c.id
-- JOIN "public.Orders" o ON t.order_id = o.id
-- WHERE m.name = 'Отец смены станции'
--     AND s.time_start::date = '2023-11-05'
--     AND c.name = 'Двадцать второй'
--     AND h.type = 'Стандартный'
--     AND o."isBooked" = true;

-- получить количество занятых мест в зале на сеансе
SELECT COUNT(t.id)
FROM "public.Tickets" t
JOIN "public.Sessions" s ON t.session_id = s.id
JOIN "public.Movies" m ON m.id = s.movie_id
JOIN "public.Halls" h ON s.hall_id = h.id
JOIN "public.Cinemas" c on h.cinema_id = c.id
JOIN "public.Orders" o ON t.order_id = o.id
WHERE m.name = 'Мировая сумка-машина'
    AND s.time_start::date = '2023-11-05'
    AND c.name = 'Семьдесять девятый'
    AND h.type = 'VIP'
    AND o."isBooked" = True;

-- количество мест на сеансе
SELECT COUNT((s.row,s.place))
FROM "public.Seats" s
JOIN "public.Halls" h ON s.hall_id = h.id
JOIN "public.Cinemas" c ON h.cinema_id = c.id
WHERE c.name = 'Семьдесять девятый'
    AND h.name = 'VIP';

-- -- -- количество за месяц оплат наличными
-- SELECT COUNT(p.id)
-- FROM "public.Payment" p
-- WHERE p.type = 'Оплата наличными на месте'
--     AND p.payment_time IS NOT NULL;

-- количество за месяц оплат наличными
SELECT COUNT(p.id)
FROM "public.Payment" p
WHERE p.type = 'Оплата наличными на месте'
    AND EXTRACT(YEAR FROM p.payment_time) = 2023
    AND EXTRACT(MONTH FROM p.payment_time) = 11;

-- узнать суммую цен на забронированные, но не проданные билеты
SELECT SUM(t.price)
FROM "public.Tickets" t
JOIN "public.Orders" o ON t.order_id = o.id
JOIN "public.Payment" p ON o.id = p.order_id
WHERE o."isBooked" = True
    AND p.payment_time IS NULL;

-- Вывести фильмы в n-ом кинотеатре, где снимался оскароносный актёр
SELECT m.name, fcm.name
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
    AND fp.name = 'Актер'
    AND p.name = 'Оскар'
    AND pn."isWon" = True;

-- обновление пароля клиента по почте
UPDATE "public.Customers"
SET password = 'updatedpass'
WHERE mail = 'bobrovaraisa@example.org';

-- удаление всех сеансов с этим фильмом
DELETE FROM "public.Sessions" s
WHERE s.movie_id = (SELECT m.id FROM "public.Movies" m
                            WHERE m.name = 'Муж');


-- вывести фильмы в порядке убывания количества сеансов в определённый день
SELECT m.name, COUNT(s.id) AS session_count
FROM "public.Movies" m
JOIN "public.Sessions" s ON m.id = s.movie_id
WHERE s.time_start::date = '2023-11-05'
GROUP BY m.name
ORDER BY session_count DESC;


-- вывести фильмы в порядке убывания количества купленных билетов на определённый день
SELECT m.name, COUNT(t.id) AS tickets_count
FROM "public.Movies" m
JOIN "public.Sessions" s ON m.id = s.movie_id
JOIN "public.Tickets" t ON s.id = t.session_id
JOIN "public.Orders" o ON o.id = t.order_id
JOIN "public.Payment" p ON o.id = p.order_id
WHERE s.time_start::date = '2023-11-05'
    AND p.payment_time IS NOT NULL
GROUP BY m.name
ORDER BY tickets_count DESC;


-- -- Вывести людей, суммарно набравших заказы на 3000 и больше
-- SELECT c.name, SUM(o.total_price)
-- FROM "public.Customers" c
-- JOIN "public.Orders" o ON c.id = o.customer_id
-- GROUP BY c.name
-- HAVING SUM(o.total_price) >= 3000;


-- Вывести людей, суммарно заплативших за заказы 3000 и больше
SELECT c.name, SUM(o.total_price)
FROM "public.Customers" c
JOIN "public.Orders" o ON c.id = o.customer_id
JOIN "public.Payment" p ON o.id = p.order_id
WHERE p.payment_time IS NOT NULL
GROUP BY c.name
HAVING SUM(o.total_price) >= 3000;


-- Вывести людей, оплативших билеты не ранее, чем за час до начала сеанса
SELECT DISTINCT c.name, p.payment_time, s.time_start
FROM "public.Customers" c
JOIN "public.Orders" o ON c.id = o.customer_id
JOIN "public.Payment" p ON o.id = p.order_id
JOIN "public.Tickets" t ON o.id = t.order_id
JOIN "public.Sessions" s ON s.id = t.session_id
WHERE p.payment_time >= s.time_start - INTERVAL '1 hour';


-- всем людям, которые забронировали, но не оплатиил места, поставить на авы клоунов
UPDATE "public.Customers"
SET avatar_ref = 'https://icons.iconarchive.com/icons/google/noto-emoji-smileys/256/10094-clown-face-icon.png'
FROM "public.Orders" o
JOIN "public.Payment" p ON o.id = p.order_id
WHERE "public.Customers".id = o.customer_id
    AND o."isBooked" = True
    AND p.payment_time IS NULL;


-- вывести топ самых прибыльных фильмов за определённую дату
SELECT m.name, SUM(o.total_price) AS total_pay
FROM "public.Movies" m
JOIN "public.Sessions" s ON m.id = s.movie_id
JOIN "public.Tickets" t ON s.id = t.session_id
JOIN "public.Orders" o ON o.id = t.order_id
JOIN "public.Payment" p ON o.id = p.order_id
WHERE s.time_start::date = '2023-11-05'
    AND p.payment_time IS NOT NULL
GROUP BY m.name
ORDER BY total_pay DESC
LIMIT 5;
