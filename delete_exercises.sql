# Write SELECT statements for:
# # Albums released after 1991
# # Albums with the genre 'disco'
# # Albums by 'Whitney Houston' (...or maybe an artist of your choice)
# # Make sure to put appropriate captions before each SELECT.
# # Convert the SELECT statements to DELETE.
# # Use the MySQL command line client to make sure your records really were removed.

USE codeup_test_db;

-- -- <action> <output> <direction> <database> <statement><columnName> <comparator> <String>
-- -- artist, name, release_date, genre, sales

SELECT name from albums WHERE artist like 'Pink%';
SELECT release_date from albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT genre from albums WHERE name = 'Nevermind';
SELECT name from albums WHERE release_date BETWEEN 1990 and 1999;
SELECT name from albums WHERE sales < 20;
SELECT name from albums WHERE genre like '% rock%';


DESCRIBE albums;

SELECT name from albums WHERE release_date > 1991;
DELETE name from albums WHERE release_date > 1991;

SELECT name from albums WHERE genre = 'disco';
DELETE name from albums WHERE genre = 'disco';

SELECT name from albums WHERE artist like 'Shania%';
DELETE name from albums WHERE artist like 'Shania%';