SELECT *
FROM exemplare
         natural inner join buecher b;

SELECT *
FROM exemplare
         join buecher as b on exemplare.isbn = b.isbn;

SELECT "Medien-Nr", autor, title
FROM exemplare
         natural inner join buecher b;