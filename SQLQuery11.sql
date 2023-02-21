/*
Voc� precisa fazer uma an�lise de vendas por produtos. O objetivo final � descobrir o valor
total vendido (SalesAmount) por produto.
a) Descubra qual � a cor de produto que mais � vendida (de acordo com SalesQuantity).
b) Quantas cores tiveram uma quantidade vendida acima de 3.000.000.
*/


--AN�LISE DE VENDAS POR PRODUTO
SELECT
	ProductName AS	'Nome do Produto',
	SUM(SalesAmount) AS 'Faturamento Total'
FROM
	FactSales
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
GROUP BY ProductName
ORDER BY SUM(SalesAmount) DESC

--LETRA A
SELECT
	TOP(1) ColorName AS	'Cor',
	SUM(SalesQuantity) AS 'Total de Vendas'
FROM
	FactSales
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
GROUP BY ColorName
ORDER BY SUM(SalesQuantity) DESC

--LETRA B
SELECT
	ColorName AS 'Cor',
	SUM(SalesQuantity) AS 'Total de Vendas'
FROM
	FactSales
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
GROUP BY ColorName
HAVING SUM(SalesQuantity) > 3000000
ORDER BY SUM(SalesQuantity) DESC
