SELECT artist, COUNT(*) AS "Number of Prints", AVG(brightness) AS "Average Brightness"
FROM views
GROUP BY artist
HAVING AVG(brightness) > 0.5
ORDER BY COUNT(*) DESC
LIMIT 5;
