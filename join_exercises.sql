# USE join_test_db;
USE employees;
-- SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
-- FROM employees as e
-- JOIN dept_emp as de
--   ON de.emp_no = e.emp_no
-- JOIN departments as d
--   ON d.dept_no = de.dept_no
-- WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

# Problem 2
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as m
              ON m.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = m.dept_no
WHERE m.to_date = '9999-01-01'
# WHERE m.to_date > now()
ORDER BY d.dept_name;

# Problem 3
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as m
              ON m.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = m.dept_no
WHERE m.to_date = '9999-01-01'
  AND e.gender = 'F'
ORDER BY d.dept_name;

# Problem 4
SELECT t.title AS 'Titles', COUNT(*) AS 'Count'
FROM employees as e
         JOIN titles as t
              ON t.emp_no = e.emp_no
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE t.to_date = '9999-01-01'
  AND d.dept_name = 'Customer Service'
group by t.title
ORDER BY t.title;

# Problem 5
SELECT d.dept_name                            AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       s.salary                               AS 'Salary'
FROM employees as e
         JOIN dept_manager as m
              ON m.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = m.dept_no
         JOIN salaries as s
              ON e.emp_no = s.emp_no
WHERE m.to_date = '9999-01-01'
  AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;

# Bonus

