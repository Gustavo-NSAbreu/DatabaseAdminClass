DELIMITER $
CREATE OR REPLACE PROCEDURE departament_info(
	IN departament_number CHAR(6),
    IN reference_year INT,
    OUT employees_amount INT,
    OUT yearly_expenses DECIMAL,
    OUT most_expensive_employee CHAR(50)
)
BEGIN
    WITH total_employees_per_departament AS (
        SELECT
            COUNT(DISTINCT e.emp_no) AS total_amount,
            de.dept_no AS departament_id
        FROM employees e
        INNER JOIN dept_emp de ON e.emp_no = de.emp_no
        WHERE de.dept_no = departament_number AND CAST(YEAR(de.from_date) AS INT) = reference_year
    ),
    highest_paid_employee AS (
        SELECT
            s.employee AS employee,
            s.departament_id AS departament_id
        FROM salary_to_total_cost_percentage s
        WHERE s.departament_id = departament_number AND s.reference_year = reference_year
        ORDER BY s.salary DESC
        LIMIT 1
    )
    SELECT
        tepd.total_amount,
        s.yearly_amount,
        hpe.employee
        INTO employees_amount,
        	yearly_expenses,
            most_expensive_employee
    FROM salary_to_total_cost_percentage s
    INNER JOIN total_employees_per_departament tepd ON tepd.departament_id = s.departament_id
    INNER JOIN highest_paid_employee hpe ON hpe.departament_id = s.departament_id
    WHERE s.departament_id = departament_number AND s.reference_year = reference_year
    LIMIT 1;
END$
DELIMITER ;

-- CALL AND SELECT

SET @departament_id = "d002";
SET @reference_year = 1999;

CALL departament_info(@departament_id, @reference_year, @employees_amount, @yearly_expenses, @most_expensive_employee);

SELECT @departament_id, @reference_year, @employees_amount, @yearly_expenses, @most_expensive_employee;