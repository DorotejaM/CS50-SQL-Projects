.import --csv meteorites.csv temp

UPDATE temp SET mass = NULL WHERE mass ='';
UPDATE temp SET year = NULL WHERE year ='';
UPDATE temp SET lat = NULL WHERE lat ='';
UPDATE temp SET long = NULL WHERE long ='';

DELETE FROM temp WHERE nametype = 'Relict';


CREATE TABLE meteorites (
    id INTEGER PRIMARY KEY,
    name TEXT,
    class TEXT,
    mass REAL,
    discovery TEXT,
    year INTEGER,
    lat REAL,
    long REAL
);

INSERT INTO meteorites ('name', 'class', 'mass', 'discovery', 'year', 'lat', 'long')
    SELECT DISTINCT
        name,
        class,
        CAST(mass AS INTEGER),
        discovery,
        CAST(year AS YEAR),
        CAST(lat AS REAL),
        CAST(long AS REAL)
    FROM temp
    ORDER BY year, name;

UPDATE meteorites SET mass = ROUND((mass),2);
UPDATE meteorites SET lat = ROUND((lat),2);
UPDATE meteorites SET long = ROUND((long),2);


SELECT *
FROM meteorites
LIMIT 10;

DROP TABLE temp;
