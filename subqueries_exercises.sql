USE employees;

DESCRIBE employees;

# Find all the employees with the same hire date as employee 101010 using a sub-query.
#
# 69 Rows

SELECT *
FROM employees
  WHERE hire_date IN(
    select hire_date
    FROM employees
WHERE emp_no = 101010
  );



# 101010	1957-08-11	Demos	Christ	F	1990-10-22

# Find all the titles held by all employees with the first name Aamod.
#
# 314 total titles, 6 unique titles

SELECT COUNT(*)
FROM titles
WHERE emp_no IN(
  SELECT emp_no
  from employees
  WHERE first_name = 'Aamod'
);

SELECT title as 'unique Titles'
FROM titles
WHERE emp_no IN(
  SELECT emp_no
  from employees
  WHERE first_name = 'Aamod'
)
GROUP BY title;

# Find all the current department managers
# that are female.

# +------------+------------+
# | first_name | last_name  |
# +------------+------------+
# | Isamu      | Legleitner |
# | Karsten    | Sigstam    |
# | Leon       | DasSarma   |
# | Hilary     | Kambil     |
# +------------+------------+

SELECT first_name, last_name
FROM employees
WHERE gender = 'F'
      AND emp_no IN (
  SELECT emp_no
  from dept_manager
  WHERE to_date >= NOW()
);



























































SELECT first_name, last_name
FROM employees
WHERE hire_date = (
  SELECT hire_date
  FROM  employees
  WHERE emp_no = 101010
);

# Find all the titles held by all employees with the first name Aamod.
#
# 314 total titles, 6 unique titles

SELECT title
FROM employees e
  JOIN titles t
    ON t.emp_no = e.emp_no

WHERE first_name IN(
  SELECT first_name
  FROM employees
  WHERE first_name = 'Aamod'
);

# Find all the current department managers that are female.
#
#
# +------------+------------+
# | first_name | last_name  |
# +------------+------------+
# | Isamu      | Legleitner |
# | Karsten    | Sigstam    |
# | Leon       | DasSarma   |
# | Hilary     | Kambil     |
# +------------+------------+

SELECT first_name, last_name
FROM employees e
JOIN dept_manager dm
ON e.emp_no = dm.emp_no
WHERE e.gender = 'F' and dm.to_date>curdate();


# Find all the department names that currently have female managers.
#
#
# +-----------------+
# | dept_name       |
# +-----------------+
# | Development     |
# | Finance         |
# | Human Resources |
# | Research        |
# +-----------------+


SELECT dept_name
FROM departments d
  JOIN dept_manager dm
    ON d.dept_no = dm.dept_no
  JOIN employees e
    ON e.emp_no = dm.emp_no
WHERE e.gender = 'F' and dm.to_date>curdate();


# Find the first and last name of the employee with the highest salary

# +------------+-----------+
# | first_name | last_name |
# +------------+-----------+
# | Tokuyasu   | Pesch     |
# +------------+-----------+