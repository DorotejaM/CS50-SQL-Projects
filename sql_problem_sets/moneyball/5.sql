SELECT t.name
FROM teams t
JOIN performances p
    ON t.id = p.team_id
JOIN players pl
    ON p.player_id = pl.id
WHERE pl.first_name = 'Satchel' AND pl.last_name = 'Paige';


/*SELECT name
FROM teams
WHERE id IN (
    SELECT team_id
    FROM performances
    WHERE player_id IN (
        SELECT id
        FROM players
        WHERE first_name = 'Satchel' AND last_name = 'Paige'
    )
);*/
