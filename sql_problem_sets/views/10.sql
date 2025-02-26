SELECT english_title 'English Titile', artist 'Artist'
FROM views
WHERE brightness BETWEEN 0.5 AND 0.65
ORDER BY contrast
LIMIT 10;
