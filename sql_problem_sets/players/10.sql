SELECT first_name 'First Name', last_name, height
FROM players
WHERE "height" >
        (SELECT AVG("height") FROM players)
ORDER BY "height" DESC, first_name ASC, last_name ASC
;
