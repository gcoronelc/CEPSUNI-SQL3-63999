USE [master]
GO

CREATE LOGIN [alfa] 
WITH 
	PASSWORD=N'sql', 
	DEFAULT_DATABASE=[master], 
	CHECK_EXPIRATION=OFF, 
	CHECK_POLICY=OFF
GO

USE [DBFLORES]
GO

CREATE USER [alfa] FOR LOGIN [alfa]
GO

USE DBFLORES;
GO

GRANT CONNECT TO GUEST 
GO
