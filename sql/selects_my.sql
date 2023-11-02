SELECT nom.id
FROM "public.Nominees" nom
JOIN "public.Film_crew_members" cm ON nom.film_crew_members_id = cm.id
JOIN "public.Movies" m ON nom.movie_id = m.id
WHERE cm.name = 'Том Хэнкс' AND m.name = 'Форрест Гамп';

SELECT nom.id, nom.film_crew_members_id, nom.movie_id
FROM "public.Nominees" nom
JOIN "public.Movies" m ON nom.movie_id = m.id
WHERE m.name = 'Форрест Гамп' AND nom.film_crew_members_id IS NULL;