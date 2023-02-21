/*
Usando FACTEXCHANGERATE
Fa�a uma tabela resumo mostrando a taxa de c�mbio m�dia de acordo com cada
CurrencyDescription. A tabela final deve conter apenas taxas entre 10 e 100
*/

SELECT 
	CurrencyDescription AS 'Moeda',
	AVG(AverageRate) AS 'M�dia Taxa de C�mbio'
FROM
	FactExchangeRate
INNER JOIN DimCurrency 
	ON FactExchangeRate.CurrencyKey = DimCurrency.CurrencyKey
GROUP BY CurrencyDescription
HAVING AVG(AverageRate) BETWEEN 10 AND 100