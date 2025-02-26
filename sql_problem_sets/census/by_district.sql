CREATE VIEW by_district AS
SELECT district, SUM(families) families, SUM(households) households, SUM(population) population, SUM(male) male, SUM(female) female
FROM census
GROUP BY district;
