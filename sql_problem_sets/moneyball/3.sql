SELECT pf.year, pf.HR
FROM performances pf
JOIN players pl
    ON pf.player_id = pl.id
WHERE
    pl.first_name = "Ken" AND
    pl.last_name = "Griffey" AND
    pl.birth_year = 1969
ORDER BY year DESC;
