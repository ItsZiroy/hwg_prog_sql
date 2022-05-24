SELECT vorname, nachname, offenegebueren
FROM benutzer
WHERE offenegebueren = (SELECT MAX(offenegebueren) FROM benutzer);

SELECT *
from benutzer
WHERE ort = 'Ludwigshafen'
UNION
SELECT *
FROM benutzer
WHERE ort = 'Mannheim';

SELECT *
FROM benutzer
WHERE ort = 'Ludwigshafen'
INTERSECT
SELECT *
from benutzer
WHERE offenegebueren = 0;

SELECT *
from benutzer
EXCEPT
SELECT *
from benutzer
WHERE geburtsdatum > '1990-01-01';