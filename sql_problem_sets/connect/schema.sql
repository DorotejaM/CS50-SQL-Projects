CREATE TABLE users (
    id NUMBER,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    user_name TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE schools_universities (
    id NUMBER,
    name TEXT NOT NULL,
    type TEXT NOT NULL CHECK(type IN ("Elementary School", "Middle School", "High School", "Lower School", "Upper School", "College", "University")),
    schools_location TEXT NOT NULL,
    foundation_year INTEGER NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE companies (
    id NUMBER,
    name TEXT NOT NULL,
    companys_industry TEXT NOT NULL,
    companys_location TEXT NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE people_connections (
    person_A_id NUMBER,
    person_B_id NUMBER,
    FOREIGN KEY(person_A_id) REFERENCES users(id),
    FOREIGN KEY(person_B_id) REFERENCES users(id)
);

CREATE TABLE sch_uni_connections (
    user_id NUMBER,
    sc_un_id NUMBER,
    affiliation_date_start DATE NOT NULL,
    affiliation_date_end DATE NOT NULL,
    degree_type TEXT NOT NULL CHECK(degree_type IN ("Elementary School", "Middle School", "High School", "Lower School", "Upper School", "BA", "MA", "PhD")),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(sc_un_id) REFERENCES schools_universities(id)
);

CREATE TABLE company_connections (
    user_id NUMBER,
    company_id NUMBER,
    affiliation_date_start DATE NOT NULL,
    affiliation_date_end DATE,
    title TEXT NOT NULL,
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(company_id) REFERENCES school(id)
);
