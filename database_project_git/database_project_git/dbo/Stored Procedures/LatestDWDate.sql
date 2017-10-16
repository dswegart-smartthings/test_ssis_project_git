		create procedure dbo.[LatestDWDate]
		as 
		begin
		select max(DWLoadDate) as LatestDWLoad
		from dbo.DWAudit
		end