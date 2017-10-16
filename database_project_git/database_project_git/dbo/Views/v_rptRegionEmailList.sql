/****** Script for SelectTopNRows command from SSMS  ******/
CREATE view dbo.v_rptRegionEmailList as
SELECT distinct
		a.SalesTerritoryKey
		,dst.SalesTerritoryRegion
		,a.EmployeeKey
		,b.EmailAddress
		,b.LastName + ', ' + b.FirstName as EmployeeFullName
  FROM [dbo].[FactResellerSales] a
	   join dbo.DimEmployee b on a.EmployeeKey = b.EmployeeKey
	   join dbo.DimSalesTerritory dst on a.SalesTerritoryKey = dst.SalesTerritoryKey