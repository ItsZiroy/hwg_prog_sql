INSERT INTO benutzer (vorname, nachname, geburtsdatum, "Straße/Nr", plz, ort, offenegebueren)
VALUES ('Claudia', 'Klein', '1995-06-23', 'Wißmannstraße 34', 67065, 'Ludwigshafen', 5),
       ('Max', 'Mustermann', '190-03-12', 'Blumenstraße 19', 68199, 'Mannheim', 0),
       ('Nina', 'Schmidt', '1992-08-18', 'Mozartstraße 10', 67346, 'Speyer', 0),
       ('Jana', 'Tauber', '1987-01-05', 'Friedensring 6', 67227, 'Frankenthal', 7.5),
       ('Sabine', 'Weber', '1978-11-30', 'Taubenstraße 62', 67063, 'Ludwigshafen', 0);
INSERT INTO buecher (isbn, autor, title, verlag)
VALUES (9783423260527, 'Thomas Bürke', 'Einsteins Jahrhundertwerk', 'dtv'),
       (9783550080418, 'Guilia Enders', 'Darm mit Charme', 'Ullstein'),
       (9783871347108, 'Wolfgang Herrndorf', 'Tschick', 'Rohwolt'),
       (9783453435773, 'Stephen King', 'Es', 'Heyne'),
       (9783834817327, 'Edwin Schicker', 'Datenbanken und SQL', 'Springer Vieweg');
INSERT INTO exemplare (isbn)
VALUES (9783423260527),
       (9783550080418),
       (9783550080418),
       (9783871347108),
       (9783871347108),
       (9783453435773),
       (9783834817327);
INSERT INTO vormerkungen ("Benutzer-Nr", isbn)
VALUES ((SELECT "benutzernr" FROM benutzer WHERE nachname = 'Schmidt'), 9783871347108);
INSERT INTO ausleihen ("Benutzer-Nr", "Medien-Nr", entleihdatum, latest_return, actual_return)
VALUES ((SELECT "benutzernr" from benutzer where nachname = 'Klein'),
        (SELECT "Medien-Nr" FROM exemplare where isbn = 9783423260527 LIMIT 1),
        '2016-05-23', '2016-06-02', NULL),
       ((SELECT "benutzernr" from benutzer where nachname = 'Mustermann'),
        (SELECT "Medien-Nr"
         FROM exemplare
         WHERE isbn = 9783871347108
         LIMIT 1),
        '2016-05-05', '2016-06-02', NULL),
       ((SELECT "benutzernr" from benutzer where nachname = 'Schmidt'),
        (SELECT "Medien-Nr"
         FROM exemplare
         WHERE isbn = 9783871347108
         OFFSET 1 LIMIT 1),
        '2016-05-07', '2016-06-04', NULL),
       ((SELECT "benutzernr" from benutzer where nachname = 'Tauber'),
        (SELECT "Medien-Nr"
         FROM exemplare
         WHERE isbn = 9783550080418
         LIMIT 1),
        '2016-05-17', '2016-06-14', NULL),
       ((SELECT "benutzernr" from benutzer where nachname = 'Weber'),
        (SELECT "Medien-Nr"
         FROM exemplare
         WHERE isbn = 9783834817327
         LIMIT 1),
        '2016-06-05', NULL, '2016-05-18');