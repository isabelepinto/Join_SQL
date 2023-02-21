/*
Usando DIMPRODUCT
 Fa�a um agrupamento de quantidade de produtos por ProductSubcategoryName. Leve em
considera��o em sua an�lise apenas a marca Contoso e a cor Silver.
*/

SELECT
	ProductSubcategoryName AS 'Subcategoria',
	COUNT(ProductKey) AS 'Qtd. Produtos'
FROM
	DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
WHERE BrandName = 'Contoso' AND ColorName = 'Silver'
GROUP BY ProductSubcategoryName
ORDER BY COUNT(ProductKey)DESC