USE employees;
-- # DESCRIBE employees;
-- # SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
-- SELECT * FROM employees WHERE last_name like 'E%';
-- SELECT * FROM employees WHERE hire_date between '1990-01-01' and '1999-12-31'; -- shortened version below
-- SELECT * FROM employees where hire_date like '199%';
-- SELECT * FROM employees WHERE birth_date like '%-12-25';
-- SELECT * FROM employees where last_name like '%q%';


-- SELECT * FROM employees WHERE first_name ='Irena' OR first_name = 'Vidya' OR first_name = 'Maya';
-- if (firstname 'Irena') || (firstname 'Vidya'){
--
-- }
-- need to use () in order to group the ORs
-- SELECT * FROM employees WHERE (first_name ='Irena' OR first_name = 'Vidya' OR first_name = 'Maya') and gender = 'M';

-- SELECT * FROM employees WHERE last_name LIKE 'E%' OR '%E';
-- SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

-- -SELECT * FROM employees where hire_date LIKE '199%' AND birth_date LIKE '%-12-25';
--
-- SELECT * FROM employees WHERE last_name NOT LIKE '%qu%' AND WHERE last_name LIKE '%q%';