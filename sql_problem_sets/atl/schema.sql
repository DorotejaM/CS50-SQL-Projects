CREATE TABLE passangers(
    id NUMBER,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    age NUMBER NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE check_ins (
    passenger_id NUMBER NOT NULL UNIQUE,
    flight_id NUMBER NOT NULL UNIQUE,
    date_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(passenger_id) REFERENCES passangers (id),
    FOREIGN KEY(flight_id) REFERENCES flights (id)
);

CREATE TABLE airlines (
    id NUMBER,
    name TEXT NOT NULL,
    concourses TEXT NOT NULL CHECK(concourses IN ("A","B","C","D","E","F","T")),
    PRIMARY KEY (id)
);

CREATE TABLE flights (
    id NUMBER,
    flight_number NUMBER NOT NULL,
    airline_id NUMBER NOT NULL,
    departing_airport_code NUMBER NOT NULL,
    heading_airport_code NUMBER NOT NULL,
    departure_datetime DATETIME NOT NULL,
    arrival_datetime DATETIME NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY(airline_id) REFERENCES airlines (id)
);
