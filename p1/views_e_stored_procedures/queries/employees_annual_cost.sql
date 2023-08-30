-- FIRST POSSIBBLE SOLUTION

SELECT
	   CONCAT(e.first_name, ' ', e.last_name) AS employee,
    s.emp_no AS id,
    s.salary,
    YEAR(s.from_date) AS reference_year
FROM salaries s
INNER JOIN employees e ON s.emp_no = e.emp_no;

-- SECOND POSSIBBLE SOLUTION

SELECT
	   CONCAT(e.first_name, ' ', e.last_name) AS employee,
    s.emp_no AS id,
    ROUND(AVG(s.salary)) AS salary_average,
    YEAR(s.from_date) AS reference_year
FROM salaries s
INNER JOIN employees e ON s.emp_no = e.emp_no
GROUP BY s.emp_no
ORDER BY s.emp_no;

-- THIRD POSSIBBLE SOLUTION

SELECT
	CONCAT(e.first_name, ' ', e.last_name) AS employee,
    s.emp_no AS id,
   	SUM(s.salary) AS salary_average
FROM salaries s
INNER JOIN employees e ON s.emp_no = e.emp_no
GROUP BY s.emp_no
ORDER BY s.emp_no;