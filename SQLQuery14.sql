/*
Fa�a um resumo mostrando o total de produtos comprados (Sales Quantity) de acordo com o
sexo dos clientes.*/SELECT 	Gender AS 'Sexo',	SUM(SalesQuantity) AS 'Total Vendas'FROM	FactOnlineSalesINNER JOIN DimCustomer	ON FactOnlineSales.CustomerKey = DimCustomer.CustomerKeyWHERE Gender IS NOT NULLGROUP BY Gender