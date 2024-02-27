SELECT 
    MIN(payroll_year) AS min_date,
    price,
    food_category,
    value  AS avg_wage,
    (value / price) AS count_pieces
FROM t_michaela_berankova_project_sql_primary_final
WHERE food_category LIKE '%chléb%' AND payroll_code = 5958
GROUP BY food_category
UNION ALL
SELECT 
    MAX(payroll_year) AS max_date,
    price,
    food_category,
    value  AS avg_HM_zamcu,
    (value  / price) AS count_pieces
FROM t_michaela_berankova_project_sql_primary_final
WHERE food_category LIKE '%chléb%' AND payroll_code = 5958
GROUP BY food_category
UNION ALL
SELECT 
    MIN(payroll_year) AS min_date,
    price,
    food_category,
     value  AS avg_HM_zamcu,
    (value  / price) AS count_pieces
FROM t_michaela_berankova_project_sql_primary_final
WHERE food_category LIKE '%mléko%' AND payroll_code = 5958
GROUP BY food_category
UNION ALL
SELECT 
    MAX(payroll_year) AS max_date,
    price,
    food_category,
    value  AS avg_HM_zamcu,
    (value  / price) AS count_pieces
FROM t_michaela_berankova_project_sql_primary_final
WHERE food_category LIKE '%mléko%' AND payroll_code = 5958
GROUP BY food_category;
