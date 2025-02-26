CREATE VIEW total AS
SELECT SUM(families) families, SUM(households) households, SUM(population) population, SUM(male) male, SUM(female) female
FROM census;
