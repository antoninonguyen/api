CREATE PROCEDURE [dbo].[spRun_Hmi_GetStationConfirmation]
	@Station smallint
AS
begin
	select *
	from dbo.Run
	where station = @Station and station_confirmed = 1
end
