use employees;

-- SELECT DISTINCT title FROM titles;

-- SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC LIMIT 10;

-- SELECT * FROM employees where hire_date LIKE '199%' AND birth_date LIKE '%-12-25' ORDER BY birth_date ASC, hire_date DESC LIMIT 5;



--Try to think of your results as batches, sets, or pages. The first five results are your first page. The five after that would be your second page, etc. Update the query to find the tenth page of results. FIVE TIMES 10 PAGES = 50 MINUS 5 == 45 WILL BE OFFSET

SELECT * FROM employees where hire_date LIKE '199%' AND birth_date LIKE '%-12-25' ORDER BY birth_date ASC, hire_date DESC LIMIT 5 OFFSET 45;