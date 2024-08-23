-- Import dump

SELECT tsg.genre_id AS genre, COUNT(ts.id) AS number_of_shows
FROM tv_show_genres tsg
JOIN tv_shows ts ON tsg.show_id = ts.id
GROUP BY tsg.genre_id
HAVING COUNT(ts.id) > 0
ORDER BY number_of_shows DESC;
