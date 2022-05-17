DROP TABLE IF EXISTS Buecher;
CREATE TABLE IF NOT EXISTS Buecher
(
    ISBN   int8 PRIMARY KEY,
    Autor  varchar,
    Title  varchar,
    Verlag varchar
)