INSERT INTO vormerkungen ("Benutzer-Nr", isbn)
VALUES ((SELECT "benutzernr" FROM benutzer WHERE nachname = 'Schmidt'), 9783871347108);