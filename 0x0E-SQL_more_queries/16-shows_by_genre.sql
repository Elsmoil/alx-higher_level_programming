-- Import

SELECT ts.title, tg.name
FROM tv_shows ts
LEFT JOIN tv_show_genres tsg ON ts.id = tsg.tv_show_id
LEFT JOIN tv_genres tg ON tsg.tv_genre_id = tg.id
ORDER BY ts.title, tg.name ASC;
