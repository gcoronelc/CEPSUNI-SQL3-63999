CREATE DATABASE [ABC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ABC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ABC.mdf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ABC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ABC_log.ldf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
GO


CREATE TABLE MODEL..AMIGOS(
NOMBRE VARCHAR(150),
CELULAR VARCHAR(20),
CORREO VARCHAR(100)
);
GO

INSERT INTO MODEL..AMIGOS
VALUES('ROCIO BERNABE','9875678324','rocio@gmail.com');
go
commit;

create database alfa;
go



