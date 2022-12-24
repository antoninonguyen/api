CREATE PROCEDURE [dbo].[spRun_Mobile_SetUserRawData]
	@UserRawData bigint
AS
begin
	update dbo.[Run]
	set user_raw = @UserRawData
	where active_station = 1;
end
