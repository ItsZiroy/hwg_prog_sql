DROP TABLE IF EXISTS Benutzer;
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