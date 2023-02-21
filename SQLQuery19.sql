/*
Usando DIMPRODUCT
Fa�a um agrupamento duplo de quantidade de produtos por BrandName e
ProductSubcategoryName. A tabela final dever� ser ordenada de acordo com a coluna
BrandName.
*/

SELECT 
	BrandName AS 'Marca',
	ProductSubcategoryName AS 'Subcategoria',
	COUNT(*) AS 'Qtd. Produtos'
FROM
	DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
GROUP BY BrandName, ProductSubcategoryName
ORDER BY BrandName