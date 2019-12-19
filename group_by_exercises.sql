USE employees;

SELECT DISTINCT title from titles;

# SELECT * FROM employees.employees WHERE last_name LIKE 'E%' AND last_name LIKE '%e';
# SELECT last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%e' group by last_name;
SELECT first_name,last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%e'
group by last_name,first_name;

SELECT last_name,count(*) FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
group by last_name ORDER BY count(*);

SELECT count(*),gender FROM employees.employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') group by gender;
