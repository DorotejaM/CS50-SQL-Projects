SELECT t.name, SUM(p.H) "Total Hits"
FROM teams t
JOIN performances p
    ON t.id = p.team_id
WHERE p.year = 2001
GROUP BY t.name
ORDER BY SUM(p.H) DESC
LIMIT 5;
