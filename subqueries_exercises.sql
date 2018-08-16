USE employees;

DESCRIBE employees;

# Find all the employees with the same hire date as employee 101010 using a sub-query.
#
# 69 Rows

SELECT first_name, last_name
FROM employees
WHERE emp_no = 101010 IN (
  SELECT emp_no
  FROM employees
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


Find the first and last name of the employee with the highest salary

# +------------+-----------+
# | first_name | last_name |
# +------------+-----------+
# | Tokuyasu   | Pesch     |
# +------------+-----------+