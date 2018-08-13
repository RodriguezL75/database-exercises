

USE codeup_test_db;

-- -- <action> <output> <direction> <database> <statement><columnName> <comparator> <String>
-- -- artist, name, release_date, genre, sales

SELECT name from albums WHERE artist like 'Pink%';
SELECT release_date from albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT genre from albums WHERE name = 'Nevermind';
SELECT name from albums WHERE release_date BETWEEN 1990 and 1999;
SELECT name from albums WHERE sales < 20;
SELECT name from albums WHERE genre like '% rock%';

