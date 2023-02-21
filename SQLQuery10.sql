/*
a) Faça um resumo da quantidade vendida (Sales Quantity) de acordo com o nome do canal
de vendas (ChannelName). Você deve ordenar a tabela final de acordo com SalesQuantity,
em ordem decrescente.
b) Faça um agrupamento mostrando a quantidade total vendida (Sales Quantity) e
quantidade total devolvida (Return Quantity) de acordo com o nome das lojas
(StoreName).
c) Faça um resumo do valor total vendido (Sales Amount) para cada mês
(CalendarMonthLabel) e ano (CalendarYear).*/-- visualizar as tabelasSELECT TOP(10) * FROM FactSalesSELECT TOP(10) * FROM DimChannelSELECT TOP(10) * FROM DimStoreSELECT TOP(10) * FROM DimDate-- LETRA A SELECT 	ChannelName AS 'Canal de Venda',	SUM(SalesQuantity) AS 'Total Vendido'FROM		FactSalesINNER JOIN DimChannel	ON FactSales.channelKey = DimChannel.ChannelKeyGROUP BY ChannelNameORDER BY SUM(SalesQuantity) DESC-- LETRA B SELECT 	StoreName AS 'Loja',	SUM(SalesQuantity) AS 'Total Vendido',	SUM(ReturnQuantity) AS 'Total Devolvido'FROM		FactSalesINNER JOIN DimStore	ON FactSales.StoreKey = DimStore.StoreKey GROUP BY StoreName-- LETRA C SELECT 	CalendarMonthLabel AS 'Mês',	CalendarYear AS 'Ano',	SUM(SalesQuantity) AS 'Faturamento'FROM		FactSalesINNER JOIN DimDate	ON FactSales.DateKey = DimDate.Datekey GROUP BY CalendarMonthLabel, CalendarYear, CalendarMonthORDER BY CalendarMonth