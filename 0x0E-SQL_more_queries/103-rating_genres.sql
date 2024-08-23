-- List all gener

SELECT CONCAT(tv_genres.name, ' - ', SUM(tv_show_ratings.rate)) AS genre_rating
FROM tv_genres
JOIN tv_show_genres ON tv_genres.id = tv_show_genres.tv_genre_id
JOIN tv_show_ratings ON tv_show_genres.tv_show_id = tv_show_ratings.tv_show_id
GROUP BY tv_genres.name
ORDER BY SUM(tv_show_ratings.rate) DESC;
