CREATE procedure dbo.ReportDemoFinal @SalesTerritoryRegion int as

begin

SELECT  dp.EnglishProductName as ProductName
		,dc.LastName + ', ' + dc.FirstName as CustomerName
		,dd.EnglishMonthName as OrderMonth
		,dd.CalendarYear as OrderYear
		,dst.SalesTerritoryRegion
	    ,sum(fis.unitPrice) as SalesAmount
  FROM [dbo].[FactInternetSales] fis
	   join dbo.dimProduct dp on fis.productkey = dp.productkey
	   join dbo.DimCustomer dc on fis.customerKey= dc.customerkey
	   join dbo.dimdate dd on fis.OrderDateKey = dd.DateKey
	   join dbo.DimSalesTerritory dst on fis.SalesTerritoryKey = dst.SalesTerritoryKey

where dst.SalesTerritoryKey = @SalesTerritoryRegion

group by dp.EnglishProductName 
		,dc.LastName + ', ' + dc.FirstName 
		,dd.EnglishMonthName 
		,dd.CalendarYear 
		,dst.SalesTerritoryRegion

end