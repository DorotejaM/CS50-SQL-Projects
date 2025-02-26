SELECT d.name, se.evaluated, g.graduated
FROM districts d
JOIN schools s
    ON d.id = s.district_id
JOIN graduation_rates g
    ON s.id = g.school_id
JOIN staff_evaluations se
    ON d.id = se.district_id
WHERE g.graduated > 90 AND se.evaluated > 90
ORDER BY se.evaluated DESC
;
