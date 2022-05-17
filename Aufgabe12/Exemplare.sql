DROP TABLE IF EXISTS Exemplare;
CREATE TABLE IF NOT EXISTS Exemplare
(
    "Medien-Nr" SERIAL PRIMARY KEY,
    ISBN        int8 REFERENCES buecher (isbn)
)