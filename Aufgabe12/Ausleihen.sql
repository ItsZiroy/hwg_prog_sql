DROP TABLE IF EXISTS Ausleihen;
CREATE TABLE IF NOT EXISTS Ausleihen
(
    "Ausleihen-ID" SERIAL PRIMARY KEY,
    "Benutzer-Nr"  INT REFERENCES benutzer (benutzernr),
    "Medien-Nr"    INT REFERENCES exemplare ("Medien-Nr"),
    Entleihdatum   date,
    Latest_return  date,
    Actual_return  date
)