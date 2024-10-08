-- List all 

SELECT CONCAT(tv_shows.title, ' - ', SUM(tv_show_ratings.rate)) AS title_rating
FROM tv_shows
JOIN tv_show_ratings ON tv_shows.id = tv_show_ratings.tv_show_id
GROUP BY tv_shows.title
ORDER BY SUM(tv_show_ratings.rate) DESC;
