/*
A tabela abaixo mostra a combina��o entre Marca e Canal de Venda, para as marcas Contoso,
Fabrikam e Litware. Crie um c�digo SQL para chegar no mesmo resultado.
*/

SELECT
	DISTINCT BrandName,
	ChannelName
FROM
	DimProduct CROSS JOIN DimChannel
WHERE BrandName IN ('Contoso', 'Fabrikam', 'Litware')