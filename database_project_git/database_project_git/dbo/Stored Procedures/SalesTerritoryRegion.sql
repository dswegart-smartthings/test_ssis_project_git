create procedure dbo.SalesTerritoryRegion as
select distinct SalesTerritoryKey, SalesTerritoryRegion
from dbo.DimSalesTerritory
