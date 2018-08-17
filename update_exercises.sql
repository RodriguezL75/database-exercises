USE codeup_test_db;

-- -- <action> <output> <direction> <database> <statement><columnName> <comparator> <String>
-- -- artist, name, release_date, genre, sales
SELECT * FROM albums;

SELECT name from albums WHERE release_date < 1980;

SELECT name from albums WHERE artist = 'Michael Jackson';

