/*
Algumas subcategorias não possuem nenhum exemplar de produto. Identifique que
subcategorias são essas.
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

