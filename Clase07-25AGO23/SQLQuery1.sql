USE EduTec; 
go 

SELECT * INTO dbo.Curso4 
FROM dbo.Curso 
WHERE 1=2; 
go 

select * from dbo.Curso4; 
go

-- La carga de datos

bulk insert EduTec.dbo.Curso4 
from 'F:\bcp\Curso_A.dat' 
with (formatfile='F:\bcp\Curso.xml');
go








