CREATE OR REPLACE VIEW amount_spent_yearly_per_departament AS
SELECT
    d.dept_no,
    d.dept_name,
    YEAR(s.from_date) AS reference_year,
    SUM(s.salary) AS yearly_amount
FROM departments d
INNER JOIN dept_emp de ON d.dept_no = de.dept_no
INNER JOIN employees e ON de.emp_no = e.emp_no
INNER JOIN salaries s ON e.emp_no = s.emp_no
GROUP BY d.dept_no, d.dept_name, YEAR(s.from_date)
ORDER BY d.dept_no, reference_year;