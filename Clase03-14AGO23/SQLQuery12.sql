
begin tran;
go

select * from venta;
go

delete from DETALLE_VENTA;
go

delete from venta;
go

delete from producto;
go

delete from cliente;
go

select @@TRANCOUNT;
go






