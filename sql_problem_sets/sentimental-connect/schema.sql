CREATE TABLE users (
    id INT AUTO_INCREMENT,
    first_name VARCHAR(32) NOT NULL,
    last_name VARCHAR(32) NOT NULL,
    username VARCHAR(32) NOT NULL UNIQUE,
    password_hash VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE schools_and_universities (
    id INT AUTO_INCREMENT,
    name VARCHAR(32) NOT NULL,
    type ENUM('Primary','Secondary','Higher Education') NOT NULL,
    location VARCHAR(255) NOT NULL,
    year YEAR(4) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE companies (
    id INT AUTO_INCREMENT,
    name VARCHAR(32) NOT NULL,
    industry ENUM('Technology','Education', 'Business') NOT NULL,
    location VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE connections_people (
    id_person_A INT NOT NULL UNIQUE,
    id_person_B INT NOT NULL UNIQUE,
    connection BOOLEAN NOT NULL,
    PRIMARY KEY (id_person_A, id_person_B),
    FOREIGN KEY (id_person_A) REFERENCES users(id),
    FOREIGN KEY (id_person_B) REFERENCES users(id)
);

CREATE TABLE connections_schools (
    school_id INT NOT NULL UNIQUE,
    user_id INT NOT NULL UNIQUE,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    PRIMARY KEY (school_id, user_id),
    FOREIGN KEY (school_id) REFERENCES schools_and_universities(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE connections_companies (
    company_id INT NOT NULL UNIQUE,
    user_id INT NOT NULL UNIQUE,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    PRIMARY KEY (company_id, user_id),
    FOREIGN KEY (company_id) REFERENCES companies(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);
