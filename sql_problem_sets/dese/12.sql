SELECT d.name, e.per_pupil_expenditure, s.exemplary
FROM districts d
JOIN expenditures e
    ON d.id = e.district_id
JOIN staff_evaluations s
    ON d.id = s.district_id
WHERE
    d.state = 'MA' AND
    d.type = 'Public School District' AND
    s.exemplary > (SELECT AVG(exemplary) FROM staff_evaluations) AND
    e.per_pupil_expenditure > ( SELECT AVG(per_pupil_expenditure) FROM expenditures)
ORDER BY s.exemplary DESC, e.per_pupil_expenditure DESC;
