SELECT
    pl.first_name, pl.last_name, s.salary, pf.HR, pf.year
FROM players pl
JOIN salaries s
    ON pl.id = s.player_id
JOIN performances pf
    ON pl.id = pf.player_id AND pf.year = s.year
ORDER BY pl.id, pf.year DESC, pf.HR DESC, s.salary DESC;
