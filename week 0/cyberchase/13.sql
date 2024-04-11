SELECT title
FROM episodes
WHERE (air_date BETWEEN '2002-01-01' AND '2002-12-31' OR air_date BETWEEN '2003-01-01' AND '2003-12-31')
AND topic LIKE '%fractions%';
