-- To find out what scores all of the countries have
SELECT c.country_name, ars.ai_readiness_scores
FROM countries c
JOIN ai_readiness_scores ars
    ON c.id = ars.country_id;

--Finding the most efficient country
SELECT are.efficiency_score, c.country_name, y.year
FROM ai_readiness_efficiency are
JOIN countries c
    ON c.id = are.country_id
JOIN years y
    ON y.id = are.year_id
WHERE y.year = 2023
ORDER BY are.efficiency_score DESC
LIMIT 1;

-- To find out which countries can be used as the benchmark for futher improvment
SELECT c.country_name, ars.ai_readiness_scores
FROM countries c
JOIN ai_readiness_scores ars
    ON c.id = ars.country_id
ORDER BY ars.ai_readiness_scores DESC
LIMIT 10;

-- To find out how the countries progressed over the years
SELECT y.year, c.country_name, ars.ai_readiness_scores
FROM countries c
JOIN ai_readiness_scores ars
    ON c.id = ars.country_id
JOIN years y
    ON ars.year_id = y.id;


--Researching amount of risk correlated to efficiency of each country
SELECT c.country_name, are.efficiency_score, arr.risk_level
FROM countries c
JOIN ai_readiness_efficiency are
    ON c.id = are.country_id
JOIN ai_readiness_risk arr
    ON c.id = arr.country_id AND arr.year_id = are.year_id
JOIN years y
    ON y.id = are.year_id
ORDER BY are.efficiency_score DESC;

--Adding new countries with all of the required data
INSERT INTO countries (country_name) VALUES("Unicorn Country");

INSERT INTO ai_readiness_scores(ai_readiness_scores, country_id, year_id)
VALUES(88,
        (SELECT id FROM countries WHERE country_name = 'Unicorn Country'),
        (SELECT id FROM years WHERE year = 2023));

INSERT INTO ai_readiness_efficiency(rank, efficiency_score, country_id, year_id)
VALUES(15, 0.9,
        (SELECT id FROM countries WHERE country_name = 'Unicorn Country'),
        (SELECT id FROM years WHERE year = 2023));

INSERT INTO ai_readiness_risk(risk_level, country_id, year_id)
VALUES(1.90,
        (SELECT id FROM countries WHERE country_name = 'Unicorn Country'),
        (SELECT id FROM years WHERE year = 2023));

--Finding the portfolio for the AI implementation improvment for each country per year
SELECT y.year, c.country_name, arp.dimension_percentage, d.dimension_name
FROM ai_readiness_portfolio arp
JOIN dimensions d
    ON arp.dimension_id = d.id
JOIN ai_readiness_risk arr
    ON arp.risk_level = arr.id
JOIN countries c
    ON arr.country_id = c.id
JOIN years y
    ON arr.year_id = y.id
WHERE c.country_name = 'United States of America' AND y.year = 2023;

--Average efficiency score grouped by risk level
SELECT arr.risk_level, AVG(are.efficiency_score) AS avg_efficiency_score
FROM ai_readiness_risk arr
JOIN ai_readiness_efficiency are
    ON arr.country_id = are.country_id AND arr.year_id = are.year_id
GROUP BY arr.risk_level;

--Countries consistently ranked in top 10 for efficiency over multiple years
SELECT c.country_name, COUNT(are.rank) AS top_rank_count
FROM ai_readiness_efficiency are
JOIN countries c ON are.country_id = c.id
WHERE are.rank <= 10
GROUP BY c.country_name
ORDER BY top_rank_count DESC;

--Identifying dimensions with the highest recommended portfolio percentage per risk level
SELECT d.dimension_name, arp.dimension_percentage, arr.risk_level
FROM ai_readiness_portfolio arp
JOIN dimensions d ON arp.dimension_id = d.id
JOIN ai_readiness_risk arr ON arp.risk_level = arr.id
WHERE arp.dimension_percentage = (
    SELECT MAX(dimension_percentage)
    FROM ai_readiness_portfolio
    WHERE risk_level = arp.risk_level)
ORDER BY arr.risk_level;
