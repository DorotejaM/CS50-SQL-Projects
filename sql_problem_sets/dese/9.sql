SELECT d.name
FROM districts d
RIGHT JOIN expenditures e
    ON  d.id=e.district_id
WHERE e.pupils = (
    SELECT MIN (pupils)
    FROM expenditures);
