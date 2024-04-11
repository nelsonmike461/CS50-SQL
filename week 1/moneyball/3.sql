SELECT year, HR FROM performances
JOIN players ON performances.player_id = players.id
WHERE player_id = (
    SELECT id
    FROM players
    WHERE first_name = 'Ken' AND last_name = 'Griffey' AND birth_year = 1969
)
ORDER BY performances.year DESC;
