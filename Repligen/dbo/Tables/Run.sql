CREATE TABLE [dbo].[Run]
(
	[Id] INT NOT NULL PRIMARY KEY identity, 
    [station] BIGINT NOT NULL, 
    [user] VARCHAR(50) NULL, 
    [filter] VARCHAR(50) NULL, 
    [user_raw] VARCHAR(50) NULL, 
    [filter_raw] VARCHAR(50) NULL, 
    [station_raw] VARCHAR(50) NULL, 
    [station_confirmed] BIT NOT NULL, 
    [active_station] BIT NOT NULL, 
    [hmi_mobile_communication] VARCHAR(50) NOT NULL, 
    [start_datetime] DATETIME NULL, 
    [end_time] DATETIME NULL
)
