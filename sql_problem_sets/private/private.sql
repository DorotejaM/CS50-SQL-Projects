CREATE TABLE temp (
    id INTEGER,
    sentence TEXT
);

INSERT INTO temp (id, sentence)
    SELECT id, substr(sentence, 98, 4) Char
    FROM sentences
    WHERE id = 14;

INSERT INTO temp (id, sentence)
    SELECT id, substr(sentence, 3, 5) Char
    FROM sentences WHERE id = 114;

INSERT INTO temp (id, sentence)
    SELECT id, substr(sentence, 72, 9) Char
    FROM sentences WHERE id = 618;

INSERT INTO temp (id, sentence)
    SELECT id, substr(sentence, 7, 3) Char
    FROM sentences WHERE id = 630;


INSERT INTO temp (id, sentence)
    SELECT id, substr(sentence, 12, 5) Char
    FROM sentences WHERE id = 932;

INSERT INTO temp (id, sentence)
    SELECT id, substr(sentence, 50, 7) Char
    FROM sentences WHERE id = 2230;

INSERT INTO temp (id, sentence)
    SELECT id, substr(sentence, 44, 10) Char
    FROM sentences WHERE id = 2346;

INSERT INTO temp (id, sentence)
    SELECT id, substr(sentence, 14, 5) Char
    FROM sentences WHERE id = 3041;

CREATE VIEW message AS
    SELECT sentence 'phrase'
    FROM temp;
