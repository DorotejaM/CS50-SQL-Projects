SELECT DISTINCT pl.first_name, pl.last_name
FROM players pl
JOIN salaries s
    ON pl.id = s.player_id
JOIN performances pf
    ON pl.id = pf.player_id AND s.year = pf.year
WHERE
    pf.RBI > 0 AND
    pf.H > 0 AND
    s.year = 2001 AND
        pl.id IN (
        SELECT s1.player_id
        FROM salaries s1
        JOIN performances pf1
             ON pf1.player_id = s1.player_id AND s1.year = pf1.year
        WHERE pf1.H > 0 AND s1.year = 2001
        ORDER BY (s1.salary/pf1.H) ASC
        LIMIT 10
    ) AND
    pl.id IN (
        SELECT s2.player_id
        FROM salaries s2
        JOIN performances pf2
            ON pf2.player_id = s2.player_id AND s2.year = pf2.year
        WHERE pf2.RBI > 0 AND s2.year = 2001
        ORDER BY (s2.salary/pf2.RBI) ASC
        LIMIT 10
    )
ORDER BY pl.last_name, pl.first_name;
