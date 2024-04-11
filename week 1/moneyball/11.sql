SELECT players.first_name, players.last_name, (salaries.salary / performances.H) AS "dollars per hit"
FROM players
JOIN salaries ON players.id = salaries.player_id
JOIN performances ON players.id = performances.player_id AND salaries.year = performances.year
WHERE performances.H > 0 AND salaries.year = 2001
ORDER BY "dollars per hit" ASC, players.first_name ASC, players.last_name ASC
LIMIT 10;
