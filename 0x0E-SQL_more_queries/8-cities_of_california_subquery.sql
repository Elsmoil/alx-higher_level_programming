-- Lists all cities

SELECT c.id, c.name
FROM cities c
WHERE c.state_id = (
  SELECT s.id
  FROM states s
  WHERE s.name = 'California'
)
ORDER BY c.id ASC;
