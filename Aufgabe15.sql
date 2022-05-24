SELECT *
FROM benutzer;

SELECT *
FROM benutzer
ORDER BY geburtsdatum DESC;

SELECT vorname, nachname, offenegebueren
FROM benutzer
WHERE offenegebueren > 0;

SELECT COUNT(offenegebueren)
FROM benutzer;

SELECT COUNT(offenegebueren), ort
FROM benutzer
GROUP BY ort;
