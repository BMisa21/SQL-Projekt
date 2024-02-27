CREATE TABLE t_michaela_berankova_project_SQL_primary_final AS 
(SELECT 
        pc.name AS food_category, 
        pc.price_value AS food_price, 
        cp.value AS price,
        cpib.name AS industry_branch, 
        cpay.value AS value, 
        cpay.payroll_year AS payroll_year, 
        cpvt.code AS payroll_code
    FROM czechia_price cp 
        LEFT JOIN czechia_price_category pc 
        	ON cp.category_code = pc.code 
        LEFT JOIN czechia_payroll cpay 
        	ON YEAR(cp.date_from) = cpay.payroll_year 
        LEFT JOIN czechia_payroll_value_type cpvt 
        	ON cpay.value_type_code = cpvt.code 
        LEFT JOIN czechia_payroll_unit cpu 
        	ON cpay.unit_code = cpu.code 
        LEFT JOIN czechia_payroll_calculation cpc 
        	ON cpay.calculation_code = cpc.code 
        LEFT JOIN czechia_payroll_industry_branch cpib 
        	ON cpay.industry_branch_code = cpib.code
);