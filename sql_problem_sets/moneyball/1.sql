SELECT "year", ROUND(AVG(salary), 2) "Average Salary"
FROM salaries
GROUP BY "year"
ORDER BY "year" DESC;
