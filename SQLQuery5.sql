/*
A tabela FactStrategyPlan resume o planejamento estrat�gico da empresa. Cada linha
representa um montante destinado a uma determinada AccountKey.
 Fa�a um INNER JOIN para criar uma tabela contendo o AccountName para cada
AccountKey da tabela FactStrategyPlan. O seu SELECT final deve conter as colunas:
� StrategyPlanKey
� DateKey
� AccountName
� Amount
*/

SELECT 
	TOP(10)
	StrategyPlanKey,
	Datekey,
	AccountName,
	Amount
FROM 
	FactStrategyPlan
LEFT JOIN DimAccount
	ON FactStrategyPlan.AccountKey = DimAccount.AccountKey