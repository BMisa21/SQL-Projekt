SELECT 
main.price,
main.payroll_year ,
main.food_category,
main.food_price,
main.value,
tmbpssf.GDP 
FROM t_michaela_berankova_project_sql_primary_final main
JOIN t_michalea_berakova_project_sql_secondary_final tmbpssf 
	ON main.payroll_year = tmbpssf.independence_date  
WHERE (main.price - main.value) / main.value * 100 > 10 
	OR (main.value  - main.price) / main.price * 100 > 10;