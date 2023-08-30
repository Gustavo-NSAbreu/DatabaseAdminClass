WITH marketing AS (
	SELECT
    	YEAR(s.from_date) AS reference_year,
    	SUM(s.salary) AS yearly_amount
    FROM `departments` d
    INNER JOIN dept_emp de ON d.dept_no = de.dept_no
    INNER JOIN employees e ON de.emp_no = e.emp_no
    INNER JOIN salaries s ON e.emp_no = s.emp_no
    WHERE d.dept_no = "d001" 
    GROUP BY d.dept_no, YEAR(s.from_date)
    ORDER BY reference_year
),
finance AS (
	SELECT
    	YEAR(s.from_date) AS reference_year,
    	SUM(s.salary) AS yearly_amount
    FROM `departments` d
    INNER JOIN dept_emp de ON d.dept_no = de.dept_no
    INNER JOIN employees e ON de.emp_no = e.emp_no
    INNER JOIN salaries s ON e.emp_no = s.emp_no
    WHERE d.dept_no = "d002" 
    GROUP BY d.dept_no, YEAR(s.from_date)
    ORDER BY reference_year
), 
human_resources AS (
	SELECT
    	YEAR(s.from_date) AS reference_year,
    	SUM(s.salary) AS yearly_amount
    FROM `departments` d
    INNER JOIN dept_emp de ON d.dept_no = de.dept_no
    INNER JOIN employees e ON de.emp_no = e.emp_no
    INNER JOIN salaries s ON e.emp_no = s.emp_no
    WHERE d.dept_no = "d003" 
    GROUP BY d.dept_no, YEAR(s.from_date)
    ORDER BY reference_year
),
production AS (
	SELECT
    	YEAR(s.from_date) AS reference_year,
    	SUM(s.salary) AS yearly_amount
    FROM `departments` d
    INNER JOIN dept_emp de ON d.dept_no = de.dept_no
    INNER JOIN employees e ON de.emp_no = e.emp_no
    INNER JOIN salaries s ON e.emp_no = s.emp_no
    WHERE d.dept_no = "d004" 
    GROUP BY d.dept_no, YEAR(s.from_date)
    ORDER BY reference_year
),
development AS (
	SELECT
    	YEAR(s.from_date) AS reference_year,
    	SUM(s.salary) AS yearly_amount
    FROM `departments` d
    INNER JOIN dept_emp de ON d.dept_no = de.dept_no
    INNER JOIN employees e ON de.emp_no = e.emp_no
    INNER JOIN salaries s ON e.emp_no = s.emp_no
    WHERE d.dept_no = "d005" 
    GROUP BY d.dept_no, YEAR(s.from_date)
    ORDER BY reference_year
),
quality_management AS (
	SELECT
    	YEAR(s.from_date) AS reference_year,
    	SUM(s.salary) AS yearly_amount
    FROM `departments` d
    INNER JOIN dept_emp de ON d.dept_no = de.dept_no
    INNER JOIN employees e ON de.emp_no = e.emp_no
    INNER JOIN salaries s ON e.emp_no = s.emp_no
    WHERE d.dept_no = "d006" 
    GROUP BY d.dept_no, YEAR(s.from_date)
    ORDER BY reference_year
),
sales AS (
	SELECT
    	YEAR(s.from_date) AS reference_year,
    	SUM(s.salary) AS yearly_amount
    FROM `departments` d
    INNER JOIN dept_emp de ON d.dept_no = de.dept_no
    INNER JOIN employees e ON de.emp_no = e.emp_no
    INNER JOIN salaries s ON e.emp_no = s.emp_no
    WHERE d.dept_no = "d007" 
    GROUP BY d.dept_no, YEAR(s.from_date)
    ORDER BY reference_year
),
research AS (
	SELECT
    	YEAR(s.from_date) AS reference_year,
    	SUM(s.salary) AS yearly_amount
    FROM `departments` d
    INNER JOIN dept_emp de ON d.dept_no = de.dept_no
    INNER JOIN employees e ON de.emp_no = e.emp_no
    INNER JOIN salaries s ON e.emp_no = s.emp_no
    WHERE d.dept_no = "d008" 
    GROUP BY d.dept_no, YEAR(s.from_date)
    ORDER BY reference_year
),
custumer_service AS (
	SELECT
    	YEAR(s.from_date) AS reference_year,
    	SUM(s.salary) AS yearly_amount
    FROM `departments` d
    INNER JOIN dept_emp de ON d.dept_no = de.dept_no
    INNER JOIN employees e ON de.emp_no = e.emp_no
    INNER JOIN salaries s ON e.emp_no = s.emp_no
    WHERE d.dept_no = "d009" 
    GROUP BY d.dept_no, YEAR(s.from_date)
    ORDER BY reference_year
)

SELECT 
	YEAR(s.from_date) AS reference_year,
    COALESCE(m.yearly_amount, 0) AS marketing,
    COALESCE(f.yearly_amount, 0) AS finance,
    COALESCE(hr.yearly_amount, 0) AS human_resources,
    COALESCE(prd.yearly_amount, 0) AS production,
    COALESCE(dv.yearly_amount, 0) AS development,
    COALESCE(qm.yearly_amount, 0) AS quality_management,
    COALESCE(sl.yearly_amount, 0) AS sales,
    COALESCE(r.yearly_amount, 0) AS research,
    COALESCE(cs.yearly_amount, 0) AS custumer_service
FROM employees e
INNER JOIN salaries s ON e.emp_no = s.emp_no
INNER JOIN marketing m ON m.reference_year = YEAR(s.from_date)
INNER JOIN finance f ON f.reference_year = YEAR(s.from_date)
INNER JOIN human_resources hr ON hr.reference_year = YEAR(s.from_date)
INNER JOIN production prd ON prd.reference_year = YEAR(s.from_date)
INNER JOIN development dv ON dv.reference_year = YEAR(s.from_date)
INNER JOIN quality_management qm ON qm.reference_year = YEAR(s.from_date)
INNER JOIN sales sl ON sl.reference_year = YEAR(s.from_date)
INNER JOIN research r ON r.reference_year = YEAR(s.from_date)
INNER JOIN custumer_service cs ON cs.reference_year = YEAR(s.from_date)
GROUP BY YEAR(s.from_date)
ORDER BY YEAR(s.from_date);

-- SIMPLER VERSION

-- SELECT
--     d.dept_no,
--     d.dept_name,
--     YEAR(s.from_date) AS reference_year,
--     SUM(s.salary) AS total_salary_per_year
-- FROM departments d
-- INNER JOIN dept_emp de ON d.dept_no = de.dept_no
-- INNER JOIN employees e ON de.emp_no = e.emp_no
-- INNER JOIN salaries s ON e.emp_no = s.emp_no
-- GROUP BY d.dept_no, d.dept_name, YEAR(s.from_date)
-- ORDER BY d.dept_no, reference_year;