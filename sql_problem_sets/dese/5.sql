SELECT city, COUNT (name)
FROM schools
WHERE type = 'Public School'
GROUP BY city
HAVING COUNT (name) <= 3.0
ORDER BY COUNT ("name") DESC, city
;
