CREATE TABLE [dbo].[Stations]
(
	[Id] INT NOT NULL identity, 
    [station_number] SMALLINT NULL, 
    [station_number_raw] VARCHAR(50) NOT NULL  PRIMARY KEY
)
