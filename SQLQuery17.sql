/*
Usando FACTSTRATEGYPLAN
Fa�a uma tabela resumo mostrando o resultado do planejamento estrat�gico por ano.
*/

SELECT
	CalendarYear AS 'Ano',
	SUM(Amount) AS 'Total'
FROM
	FactStrategyPlan
INNER JOIN DimDate
	ON FactStrategyPlan.Datekey = DimDate.Datekey
GROUP BY CalendarYear