CREATE PROCEDURE [dbo].[spRun_Mobile_GetTask]
	
AS
begin
	declare @Task varchar(50)
	select @Task = hmi_mobile_communication
	from dbo.[Run]
	where active_station = 1;
end
