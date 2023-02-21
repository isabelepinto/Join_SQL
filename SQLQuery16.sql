/*
Usando FACTSTRATEGYPLAN
Calcule a SOMA TOTAL de AMOUNT referente � tabela FactStrategyPlan destinado aos
cen�rios: Actual e Budget.
Dica: A tabela DimScenario ser� importante para esse exerc�cio.*/SELECT	ScenarioName AS 'Cen�rio',	SUM(Amount) AS 'Total'FROM	FactStrategyPlanINNER JOIN DimScenario	ON FactStrategyPlan.ScenarioKey = DimScenario.ScenarioKeyWHERE ScenarioName IN ('Actual', 'Budget')GROUP BY ScenarioName