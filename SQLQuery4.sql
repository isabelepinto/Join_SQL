/*
Complemente a tabela DimProduct com a informação de ProductCategoryDescription. Utilize
o LEFT JOIN e retorne em seu SELECT apenas as 5 colunas que considerar mais relevantes.
*/

SELECT * FROM DimProductCategory

SELECT * FROM DimProductSubcategory

SELECT 
	TOP(10)*,
	ProductCategoryDescription
FROM DimProduct
LEFT JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
	LEFT JOIN DimProductCategory
		ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey