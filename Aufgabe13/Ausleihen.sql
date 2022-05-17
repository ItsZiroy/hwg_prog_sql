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