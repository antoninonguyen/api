CREATE PROCEDURE [dbo].[spRun_Mobile_SetFilterRawData]
	@FilterRawData bigint
AS
begin
	update dbo.[Run]
	set filter_raw = @FilterRawData
	where active_station = 1;
end
