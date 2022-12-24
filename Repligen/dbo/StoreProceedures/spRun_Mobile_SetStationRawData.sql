CREATE PROCEDURE [dbo].[spRun_Mobile_SetStationRawData]
		@StationRawData bigint
AS
begin
	update dbo.[Run]
	set station_raw = @StationRawData
	where active_station = 1;
end
