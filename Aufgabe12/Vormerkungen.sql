DROP TABLE IF EXISTS Vormerkungen;
CREATE TABLE IF NOT EXISTS Vormerkungen
(
    "Benutzer-Nr" INT REFERENCES benutzer (benutzernr),
    ISBN          int8 REFERENCES buecher (isbn),
    PRIMARY KEY ("Benutzer-Nr", ISBN)
)