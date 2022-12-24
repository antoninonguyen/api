CREATE PROCEDURE [dbo].[spRun_SetActiveStation]
	@Station bigint
AS
begin
	update dbo.[Run]
	set active_station = 1, start_datetime = GETDATE(), end_time = null
	where station = @Station;

	update dbo.[Run]
	set active_station = 0
	where station != @Station;
end
