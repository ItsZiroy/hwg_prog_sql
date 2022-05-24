CREATE TABLE IF NOT EXISTS Benutzer
(
    BenutzerNr     SERIAL PRIMARY KEY,
    Vorname        VARCHAR(256),
    Nachname       VARCHAR(256),
    Geburtsdatum   varchar(256),
    "Straße/Nr"    varchar(256),
    PLZ            int4,
    Ort            varchar,
    offeneGebueren float4
);
CREATE TABLE IF NOT EXISTS Buecher
(
    ISBN   int8 PRIMARY KEY,
    Autor  varchar,
    Title  varchar,
    Verlag varchar
);
CREATE TABLE IF NOT EXISTS Exemplare
(
    "Medien-Nr" SERIAL PRIMARY KEY,
    ISBN        int8 REFERENCES buecher (isbn)
);
CREATE TABLE IF NOT EXISTS Vormerkungen
(
    "Benutzer-Nr" INT REFERENCES benutzer (benutzernr),
    ISBN          int8 REFERENCES buecher (isbn),
    PRIMARY KEY ("Benutzer-Nr", ISBN)
);
CREATE TABLE IF NOT EXISTS Ausleihen
(
    "Ausleihen-ID" SERIAL PRIMARY KEY,
    "Benutzer-Nr"  INT REFERENCES benutzer (benutzernr),
    "Medien-Nr"    INT REFERENCES exemplare ("Medien-Nr"),
    Entleihdatum   date,
    Latest_return  date,
    Actual_return  date
);