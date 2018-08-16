-- USE your employees database.
--
-- DESCRIBE each table and inspect the keys and see which columns have indexes and keys.
--
-- USE your codeup_test_db database.
--
-- Add an index to make sure all album names combined with the artist are unique. Try to add duplicates to test the constraint.

-- use employees;

-- SELECT first_name, last_name
-- FROM employees
-- ORDER BY last_name DESC, first_name ASC;
-- DESCRIBE employees;



DESCRIBE albums;

ALTER TABLE albums
ADD UNIQUE(artist, name);

--if you want to drop UNIQUE first show index then
--then you need to DROP INDEX name; name not unique.

SHOW INDEX FROM albums;

ALTER TABLE albums
DROP INDEX name;

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES
('Michael Jackson', 'Thriller', 1982, 'Pop, Rock, R&B', 47.3);




