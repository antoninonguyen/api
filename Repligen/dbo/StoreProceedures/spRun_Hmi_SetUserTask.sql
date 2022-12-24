CREATE PROCEDURE [dbo].[spRun_Hmi_SetUserTask]
	
AS
begin
	update dbo.[Run]
	--set hmi_mobile_communication = @Task
	where active_station = 1;
end
