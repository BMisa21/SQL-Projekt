SELECT 
    mbp.food_category,
    mbp.price,
    YEAR(mbp.payroll_year) AS payroll_year,
    ROUND(((mbp.price - prev.prev_year_price) / prev.prev_year_price * 100), 2) 
    	AS annual_increase_percent
FROM t_michaela_berankova_project_sql_primary_final AS mbp
JOIN (
    SELECT 
        food_category,
        MAX(CASE WHEN YEAR(payroll_year) = YEAR(CURRENT_DATE) - 1 
        THEN price END) AS prev_year_price
    FROM t_michaela_berankova_project_sql_primary_final
    GROUP BY food_category
) AS prev ON mbp.food_category = prev.food_category;
ORDER BY annual_increase_percent