-- Represents all of the countries available for research
CREATE TABLE countries (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    country_name TEXT NOT NULL
);

--Represents years from which data is gathered
CREATE TABLE  years (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    year INTEGER NOT NULL UNIQUE
);

--Represents all of the dimensions used in the creation of AI readiness index
CREATE TABLE  dimensions(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    dimension_name TEXT NOT NULL UNIQUE
);

--Represents AI readiness scores that countries received
CREATE TABLE  ai_readiness_scores(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ai_readiness_scores REAL NOT NULL,
    country_id INTEGER NOT NULL,
    year_id  INTEGER NOT NULL,
    FOREIGN KEY (country_id) REFERENCES countries(id),
    FOREIGN KEY (year_id) REFERENCES years(id)
);

-- Represents efficiency with which countries use their resources in AI implementation
CREATE TABLE  ai_readiness_efficiency(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    rank INTEGER NOT NULL,
    efficiency_score REAL NOT NULL,
    country_id INTEGER NOT NULL,
    year_id INTEGER NOT NULL,
    FOREIGN KEY (country_id) REFERENCES countries(id),
    FOREIGN KEY (year_id) REFERENCES years(id)
);

--Represents risk that countries have in their current state
CREATE TABLE  ai_readiness_risk(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    risk_level REAL CHECK(risk_level IN (1.811, 1.90, 2.00, 2.433)) NOT NULL,
    country_id INTEGER NOT NULL,
    year_id INTEGER NOT NULL,
    UNIQUE(country_id, year_id),
    FOREIGN KEY (country_id) REFERENCES countries(id),
    FOREIGN KEY (year_id) REFERENCES years(id)
);

--Represents portfolio, percentage of each dimension, that countries can use in improving their AI readiness score
CREATE TABLE  ai_readiness_portfolio(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    dimension_percentage REAL NOT NULL,
    dimension_id INTEGER NOT NULL,
    risk_level INTEGER,
    FOREIGN KEY (risk_level) REFERENCES ai_readiness_risk(id),
    FOREIGN KEY (dimension_id) REFERENCES dimensions(id)
);


--Common indexes to speed searches
CREATE INDEX ai_readiness_index ON ai_readiness_scores(country_id, year_id);
CREATE INDEX ai_risk_index ON ai_readiness_risk(country_id, year_id);
CREATE INDEX ai_efficiency_index ON ai_readiness_efficiency(country_id, year_id);
CREATE INDEX ai_portfolio_index ON ai_readiness_portfolio(risk_level, dimension_id);

