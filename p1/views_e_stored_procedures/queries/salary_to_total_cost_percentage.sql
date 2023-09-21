-- QUESTION 5

SELECT
	s.employee,
    s.id,
    s.departament,
    s.reference_year,
    s.percentage
FROM salary_to_total_cost_percentage s
WHERE s.salary*10000/s.yearly_amount >= 1
	AND s.salary*10000/s.yearly_amount <= 10
GROUP BY s.employee
ORDER BY s.id;

-- QUESTION 6

SELECT
	s.employee,
    s.id,
    s.departament,
    s.reference_year,
    s.percentage
FROM salary_to_total_cost_percentage s
WHERE s.salary*10000/s.yearly_amount > 10
GROUP BY s.employee
ORDER BY s.id;