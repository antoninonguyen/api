CREATE PROCEDURE [dbo].[spRun_Hmi_SetTask]
	@Task varchar(50)
AS
begin
	update dbo.[Run]
	set hmi_mobile_communication = @Task
	where active_station = 1;
end
