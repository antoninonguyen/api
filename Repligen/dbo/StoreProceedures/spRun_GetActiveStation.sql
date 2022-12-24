CREATE PROCEDURE [dbo].[spRun_GetActiveStation]
AS
begin
	declare @StationNumber smallint
	select @StationNumber = station
	from dbo.[Run]
	where active_station = 1;

	select @StationNumber as [StationNumber];
end
