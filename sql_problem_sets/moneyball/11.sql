SELECT pl.first_name, pl.last_name, (s.salary/pf.H) 'Dollars per hit'
FROM players pl
JOIN salaries s
    ON pl.id = s.player_id
JOIN performances pf
    ON pl.id = pf.player_id AND s.year = pf.year
WHERE s.year = 2001 AND pf.H !=0
ORDER BY (s.salary/pf.H) ASC, pl.first_name, pl.last_name
LIMIT 10;
