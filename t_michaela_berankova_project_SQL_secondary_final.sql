CREATE TABLE t_michalea_berakova_project_SQL_secondary_final AS 
(SELECT c.country,
c.independence_date,
e.gdp
FROM countries c 
LEFT JOIN economies e 
	ON c.independence_date = e.YEAR)