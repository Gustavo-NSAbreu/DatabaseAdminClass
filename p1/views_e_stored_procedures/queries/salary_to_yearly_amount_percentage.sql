SELECT
	CONCAT(e.first_name, ' ', e.last_name) AS employee,
    s.emp_no AS id,
    d.dept_name AS departament,
    YEAR(s.from_date) AS reference_year,
    s.salary,
    CONCAT(s.salary*100/asy.yearly_amount, '%') AS percentage,
    asy.yearly_amount
FROM salaries s
INNER JOIN employees e ON s.emp_no = e.emp_no
INNER JOIN dept_emp de ON e.emp_no = de.emp_no
INNER JOIN departments d ON de.dept_no = d.dept_no
INNER JOIN amount_spent_yearly_per_departament asy ON asy.reference_year = YEAR(s.from_date)
	AND d.dept_name = asy.dept_name
GROUP BY employee
ORDER BY id