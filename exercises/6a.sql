-- Create a list of all artist names
-- Include a count of how many albums they have released
-- Order your results by artist name in ascending order
-- (You should group the artists by id, not by name)

SELECT art.name, 
COUNT(alb.id) 
FROM artists art
INNER JOIN albums alb on alb.artist_id = art.id
GROUP BY art.id
ORDER BY art.name