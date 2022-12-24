CREATE PROCEDURE [dbo].[spRun_Mobile_SetStationConfirmed]
	@StationRawData bigint
AS
begin
	
	declare @station_confirmed bit, @station_scanned smallint, @station_actual smallint
	
	select @station_scanned = station_number
	from dbo.[Stations]
	where station_number_raw = @StationRawData

	select @station_actual = station
	from dbo.[Run]
	where active_station = 1

	if (@station_actual = @station_scanned) begin
		set @station_confirmed = 1
	end
	else begin
		set @station_confirmed = 0
	end

	update dbo.[Run]
	set station_raw = @StationRawData, station_confirmed = @station_confirmed
	where active_station = 1 and station = @station_scanned
end
