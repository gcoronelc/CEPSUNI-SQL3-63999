
drop table Curso2;
GO

SELECT * INTO dbo.Curso3 
FROM dbo.Curso 
WHERE 1=2; 
GO

delete from Curso2;
GO

SELECT * FROM DBO.Curso2;
GO

alter table curso2
add constraint pk_curso2
primary key(idcurso);
go

select * from curso3;
go


