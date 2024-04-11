SELECT first_name AS "Player First Name", last_name AS "Player Last Name", birth_year
FROM players
WHERE height >= 72
ORDER BY birth_year DESC;
