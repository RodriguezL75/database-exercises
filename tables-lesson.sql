
SELECT user, host FROM mysql.user;

SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS tables_lesson_db;

CREATE TABLE flights(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
destination CHAR(3) NOT NULL,
departs_from CHAR(3) NOT NULL,
price DOUBLE NOT NULL,
desccription TEXT
departs_at DATETIME NOT NULL,--'2018-08-10 14:05:55'
arrives_at DATETIME NOT NULL
PRIMARY KEY (id)--need a primary key at all times
);


