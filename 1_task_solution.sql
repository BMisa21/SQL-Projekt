SELECT 
industry_branch,
 CASE
   WHEN MIN("value") < MAX("value") THEN 'rostou'
   WHEN MIN("value") > MAX(value) THEN 'klesají'
   ELSE 'stagnují'
   END AS payroll_changes
FROM t_michaela_berankova_project_sql_primary_final
WHERE industry_branch IS  NOT NULL 
GROUP BY industry_branch 