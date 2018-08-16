USE join_test_db;

-- DROP TABLE users;
-- DROP TABLE roles;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null),
('jack', 'jack@example.com', 2),
('joseph', 'joseph@example.com', null),
('robert', 'robert@example.com', null),
('david', 'david@example.com', null);


SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;


SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;


-- SELECT CONCAT(users.first_name, '', users.last_name, 'is a', roles.role_id)
-- FROM users
-- JOIN roles
--   ON roles.

-- SELECT users.user_name, COUNT(*) as role_count
-- FROM users
-- LEFT JOIN roles ON role.user_name = users.user_name
-- GROUP BY roles;


SELECT * FROM users;
SELECT * from roles;
