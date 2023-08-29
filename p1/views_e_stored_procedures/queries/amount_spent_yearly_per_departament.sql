WITH custumer_service AS (
    SELECT
    	d.dept_no,
    	YEAR(e.hire_date) AS hire_year,
    	SUM(s.salary) AS yearly_amount
    FROM `departments` d
    INNER JOIN dept_emp de ON d.dept_no = de.dept_no
    INNER JOIN employees e ON de.emp_no = e.emp_no
    INNER JOIN salaries s ON e.emp_no = s.emp_no
    WHERE d.dept_name = "Custumer Service"
    GROUP BY d.dept_no, YEAR(e.hire_date)
    ORDER BY d.dept_no, hire_year
),
development AS (
    SELECT *
    FROM `departments` d 
    WHERE d.dept_name = "Development"
), 
finance AS (
    SELECT *
    FROM `departments` d 
    WHERE d.dept_name = "Finance"
), human_resources AS (
    SELECT *
    FROM `departments` d 
    WHERE d.dept_name = "Human Resources"
), Marketing AS (
    SELECT *
    FROM `departments` d 
    WHERE d.dept_name = "Marketing"
), production AS (
    SELECT *
    FROM `departments` d 
    WHERE d.dept_name = "Production"
), quality_management AS (
    SELECT *
    FROM `departments` d 
    WHERE d.dept_name = "Quality Management"
), research AS (
    SELECT *
    FROM `departments` d 
    WHERE d.dept_name = "Research"
), sales AS (
    SELECT *
    FROM `departments` d 
    WHERE d.dept_name = "Sales"
)

SELECT 
	YEAR(e.hire_date) AS hire_year
FROM departments d
INNER JOIN dept_emp de ON d.dept_no = de.dept_no
INNER JOIN employees e ON e.emp_no = de.emp_no
