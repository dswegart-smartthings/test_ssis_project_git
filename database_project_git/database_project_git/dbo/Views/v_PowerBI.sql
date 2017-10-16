create view v_PowerBI as
select	dp.EnglishProductName as ProductName
		,dp.ProductLine 
		,dc.lastname +', ' + dc.FirstName as CustomerFullName
		,dc.EnglishOccupation as CustomerOccupation
		,dc.CommuteDistance 
		,dc.TotalChildren
		,dc.YearlyIncome
		,dd.CalendarYear as OrderYear
		,dd.EnglishMonthName as OrderMonth
		,dd.CalendarQuarter as OrderQuarter
		,dst.SalesTerritoryRegion
		,dst.SalesTerritoryCountry
		,dst.SalesTerritoryGroup
		,fis.DiscountAmount
		,fis.OrderQuantity
		,fis.SalesAmount

from	dbo.FactInternetSales FIS
		join dbo.DimProduct DP on FIS.ProductKey = DP.ProductKey
		join dbo.DimCustomer DC on FIS.CustomerKey = DC.CustomerKey
		join dbo.DimDate DD on fis.OrderDateKey = dd.DateKey
		join dbo.DimSalesTerritory dst on dst.SalesTerritoryKey = fis.SalesTerritoryKey