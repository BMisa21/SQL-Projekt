SELECT 
    payroll_year,
    food_category,
    AVG(price) AS avg_food_price,
    AVG(value) AS avg_wage
FROM t_michaela_berankova_project_sql_primary_final
WHERE payroll_code = 5958
    AND value IS NOT NULL
GROUP BY payroll_year, food_category
HAVING (AVG(price) / AVG(value)) > 1.1;