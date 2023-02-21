/*
Usando FACTSTRATEGYPLAN
Calcule a SOMA TOTAL de AMOUNT referente à tabela FactStrategyPlan destinado aos
cenários: Actual e Budget.
Dica: A tabela DimScenario será importante para esse exercício.*/SELECT	ScenarioName AS 'Cenário',	SUM(Amount) AS 'Total'FROM	FactStrategyPlanINNER JOIN DimScenario	ON FactStrategyPlan.ScenarioKey = DimScenario.ScenarioKeyWHERE ScenarioName IN ('Actual', 'Budget')GROUP BY ScenarioName