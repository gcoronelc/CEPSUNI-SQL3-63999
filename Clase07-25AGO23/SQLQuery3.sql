
sp_configure 'show advanced options', 1; 
RECONFIGURE; 
go

sp_configure; 
GO 

sp_configure 'Ad Hoc Distributed Queries', 1; 
RECONFIGURE; 
GO

sp_configure; 
GO 

SELECT b.* FROM EDUTEC.dbo.curso AS b;
go

SELECT a.* 
FROM OPENROWSET('SQLNCLI', 'Server=localhost;Trusted_Connection=yes;', 'SELECT * FROM EDUTEC.dbo.curso') AS a;
go

SELECT 'Server 1' "SERVER", a.* 
FROM OPENROWSET('SQLNCLI', 'Server=localhost;Trusted_Connection=yes;', 'SELECT * FROM EDUTEC.dbo.curso') AS a
UNION ALL
SELECT 'Server 2', b.* FROM EDUTEC.dbo.curso AS b;
go


