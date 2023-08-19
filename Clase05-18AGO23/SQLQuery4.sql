-- 01 Enviando un mensaje sencillo. 

EXEC msdb.dbo.sp_send_dbmail 
	@profile_name = 'PERFIL_63999', 
	@recipients = 'gcoronel@uni.edu.pe;luisfrancisco1242@hotmail.com', 
	@body = 'Enviando correo desde SQL Server.', 
	@subject = 'Prueba PERFIL_63999'; 
GO


-- 02 Se envía el resultado de una consulta 

EXEC msdb.dbo.sp_send_dbmail 
	@profile_name = 'PERFIL_63999', 
	@recipients = 'gcoronel@uni.edu.pe;dzuniga_sql3_63999_2023@outlook.com', 
	@body = 'Este es el listado solicitado.',
	@query = 'SELECT * FROM Northwind.dbo.Customers', 
	@subject = 'Listado Clientes', 
	@attach_query_result_as_file = 1; 
GO


-- Limpiar los mensajes del log 

DELETE FROM msdb.dbo.sysmail_event_log; 
GO

-- Prueba de la alerta

-- Activando la alerta 
raiserror('Prueba de alerta.',14,1) with log; 
go


-- Cambiar de usuario a alfa

select * from educa..curso;
go







