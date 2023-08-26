use edutec;
go

select NomProfesor, ApeProfesor 
into dbo.Profesor2 
from dbo.Profesor 
where 1=2;
go

select * from dbo.Profesor2;
go

bulk insert dbo.Profesor2 
from 'F:\bcp\Profesores.txt' 
with (fieldterminator='\t',rowterminator='\n'); 
go 

select * from dbo.Profesor2; 
go





