
-- *** The Lost Letter ***
-- Find the ID of the package
-- 1. Find ID of the Address
SELECT id
FROM packages
WHERE "from_address_id" IN
        (SELECT id
        FROM addresses
        WHERE address = '900 Somerville Avenue')
;

/*-- 432
-- 2. Find ID of the package through ID
SELECT id
FROM packages
WHERE "from_address_id" = 432; */
-- As there is multiple packages sent from this address, we should match it with the ID from to_address_id
SELECT id
FROM addresses
WHERE "address" = '2 Finnegan Street, uptown';
-- No adresses under that name, try to find similar names
SELECT id, "address"
FROM addresses
WHERE "address" LIKE '2% F% Street%'
ORDER BY "address";

-- There was typo, it was Finnigan Street, ID 854

SELECT id
FROM packages
WHERE from_address_id =  "432" AND to_address_id = '854';

-- The package ID was 384

SELECT *
FROM packages
WHERE id = '384';

SELECT *
FROM addresses
WHERE id = '854';


SELECT *
FROM addresses a
FULL JOIN packages p
    ON a.id = p.from_address_id
WHERE a.address = '900 Somerville Avenue' AND p.to_address_id IN
        (SELECT id
            FROM addresses
            WHERE "address" LIKE '2% F% Street%')
;


SELECT *
FROM scans s
JOIN addresses a
    ON s.address_id = a.id
WHERE package_id = '384';
-- *** The Devious Delivery ***

SELECT *
FROM packages p
LEFT JOIN addresses a
    ON p.to_address_id = a.id
LEFT JOIN scans s
    ON p.id = s.package_id
WHERE "from_address_id" IS NULL;
-- when we found ID we can then search where did it end up
SELECT *
FROM addresses
WHERE id = '348';


-- *** The Forgotten Gift ***

SELECT *
FROM packages p
LEFT JOIN addresses a
    ON p.to_address_id = a.id
WHERE "from_address_id" IN
        (SELECT id
        FROM addresses
        WHERE "address" = '109 Tileston Street'
);

SELECT *
FROM scans s
LEFT JOIN drivers d
    ON s.driver_id = d.id
WHERE "package_id" = 9523;


