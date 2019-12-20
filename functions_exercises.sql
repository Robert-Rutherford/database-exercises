USE employees;

SELECT *
FROM employees.employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC, first_name DESC;
SELECT *
FROM employees.employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';
SELECT *
FROM employees.employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  AND gender = 'M';
SELECT *
FROM employees.employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;
SELECT *
FROM employees.employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%e';
SELECT CONCAT(first_name, ' ', last_name)
FROM employees.employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e';
SELECT *
FROM employees.employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';
SELECT DATEDIFF(CURDATE(), hire_date)
FROM employees.employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;
SELECT *
FROM employees.employees
WHERE birth_date LIKE '%-12-25';
SELECT *
FROM employees.employees
WHERE last_name LIKE '%q%';
SELECT *
FROM employees.employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';
