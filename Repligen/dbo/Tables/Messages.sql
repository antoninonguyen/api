CREATE TABLE [dbo].[Messages]
(
	[Id] INT NOT NULL PRIMARY KEY identity, 
    [device] VARCHAR(50) NULL, 
    [key] VARCHAR(50) NULL, 
    [message] VARCHAR(50) NULL
)
