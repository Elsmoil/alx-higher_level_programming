-- Import the dump

SELECT ts.title, tsg.genre_id
FROM tv_shows ts, tv_show_genres tsg
WHERE ts.id = tsg.show_id
ORDER BY ts.title ASC, tsg.genre_id ASC;
