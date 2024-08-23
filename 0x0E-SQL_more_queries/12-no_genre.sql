-- Import the dump

SELECT ts.title, NULL AS genre_id
FROM tv_shows ts
LEFT JOIN tv_show_genres tsg ON ts.id = tsg.show_id
WHERE tsg.show_id IS NULL
ORDER BY ts.title ASC;
