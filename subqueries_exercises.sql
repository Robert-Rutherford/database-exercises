USE employees;
# Problem 1
SELECT CONCAT(first_name,' ',last_name) AS 'Full Name' FROM employees
WHERE hire_date IN (
    SELECT hire_date FROM employees
    WHERE emp_no = '101010'
    );

# problem 2
# all
SELECT title AS 'Titles' FROM titles
WHERE emp_no IN (
    SELECT emp_no FROM employees
    WHERE first_name = 'Aamod'
    );
# Unique
SELECT title AS 'Titles' FROM titles
WHERE emp_no IN (
    SELECT emp_no FROM employees
    WHERE first_name = 'Aamod'
    )
group by title;

# Problem 3
SELECT first_name,last_name FROM employees
WHERE emp_no IN (
    SELECT emp_no FROM dept_manager
    WHERE to_date > now()
    ) AND gender = 'F';


