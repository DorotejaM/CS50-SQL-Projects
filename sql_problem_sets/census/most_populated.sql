CREATE VIEW most_populated AS
SELECT district, SUM(families) families, SUM(households) households, SUM(population) population, SUM(male) male, SUM(female) female
FROM census
GROUP BY district
ORDER BY SUM(population) DESC;
