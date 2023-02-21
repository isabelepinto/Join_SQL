/*
Algumas subcategorias n�o possuem nenhum exemplar de produto. Identifique que
subcategorias s�o essas.
*/

SELECT
	DimProductSubcategory.ProductSubcategoryKey,
	ProductSubcategoryName,
	ProductName,
	ProductKey
FROM	
	DimProductSubcategory
LEFT JOIN DimProduct
	ON DimProductSubcategory.ProductSubcategoryKey = DimProduct.ProductSubcategoryKey
WHERE ProductName IS NULL

