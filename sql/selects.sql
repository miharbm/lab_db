
SELECT Sessions.time, Movies.name, Movies.mpaa
FROM Sessions 
JOIN Movies ON Sessions.movie_id = Movies.id
JOIN Cinemas ON Cinemas.id = cinema_id
WHERE Cinemas.name = "" AND Sessions.time = ""

SELECT * FROM Movies