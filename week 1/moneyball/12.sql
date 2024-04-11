SELECT players.first_name, players.last_name
FROM players
WHERE players.id IN (
    SELECT player_id FROM (
        SELECT players.id AS player_id, (salaries.salary / performances.H) AS "dollars per hit"
        FROM players
        JOIN salaries ON players.id = salaries.player_id
        JOIN performances ON players.id = performances.player_id AND salaries.year = performances.year
        WHERE performances.H > 0 AND salaries.year = 2001
        ORDER BY "dollars per hit" ASC
        LIMIT 10
    )
    INTERSECT
    SELECT player_id FROM (
        SELECT players.id AS player_id, (salaries.salary / performances.RBI) AS "dollars per RBI"
        FROM players
        JOIN salaries ON players.id = salaries.player_id
        JOIN performances ON players.id = performances.player_id AND salaries.year = performances.year
        WHERE performances.RBI > 0 AND salaries.year = 2001
        ORDER BY "dollars per RBI" ASC
        LIMIT 10
    )
)
ORDER BY players.id ASC;
