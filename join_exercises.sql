USE employees;

DESCRIBE employees;

-- Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.

--   Department Name    | Department Manager
--  --------------------+--------------------
--   Customer Service   | Yuchang Weedman
--   Development        | Leon DasSarma
--   Finance            | Isamu Legleitner
--   Human Resources    | Karsten Sigstam
--   Marketing          | Vishwani Minakawa
--   Production         | Oscar Ghazalie
--   Quality Management | Dung Pesch
--   Research           | Hilary Kambil
--   Sales              | Hauke Zhang

select d.dept_name AS 'Department Name', concat(e.first_name, ' ', e.last_name)
AS 'Department Manager'
 from departments d
  join dept_manager dm on dm.dept_no = d.dept_no
  join employees e on e.emp_no = dm.emp_no
  WHERE dm.to_date > now()
  order by d.dept_name;





-- Find the name of all departments currently managed by women.
-- Department Name | Manager Name
-- ----------------+-----------------
-- Development     | Leon DasSarma
-- Finance         | Isamu Legleitner
-- Human Resources | Karsetn Sigstam
-- Research        | Hilary Kambil

select d.dept_name AS 'Department Name', concat(e.first_name, ' ', e.last_name)
AS 'Department Manager'
 from departments d
  join dept_manager dm on dm.dept_no = d.dept_no
  join employees e on e.emp_no = dm.emp_no
  WHERE dm.to_date > now()
  and e.gender = 'F'
  order by d.dept_name;



-- Find the current titles of employees currently working in the Customer Service department.
-- Title              | Count
-- -------------------+------
-- Assistant Engineer |    68
-- Engineer           |   627
-- Manager            |     1
-- Senior Engineer    |  1790
-- Senior Staff       | 11268
-- Staff              |  3574
-- Technique Leader   |   241

DESCRIBE titles;

select t.title as 'Title',
count(t.title) AS 'Count'
from titles t
join dept_emp de on de.emp_no = t.emp_no
where de.dept_no = 'd009'
AND t.to_date > now()
and de.to_date > now()
group by t.title;



-- Find the current salary of all current managers.

select d.dept_name AS 'Department Name',
concat(e.first_name, '', e.last_name) AS 'Name',
s.salary AS 'Salary'
from employees e
join dept_manager manager on e.emp_no = manager
.emp_no
join departments d on manager.dept_no = d.dept_no
join salaries s on e.emp_no = s.emp_no
where manager.to_date > now()
and s.to_date > now()
order by d.dept_name;


SELECT
d.dept_name,
mortals.first_name,
mortals.last_name,
mgmt.first_name,
mgmt.last_name
FROM employees mortals
JOIN dept_emp de ON mortals.emp_no = de.emp_no
JOIN departments d


