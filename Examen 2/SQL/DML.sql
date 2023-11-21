--DML--

--Insert--
insert into Usuarios(Nombre,CorreoElectronico,Telefono)
values('Natalia','nataliatobal3@gmail.com','61270600'),
('miguel','mi3@gmail.com','61270601')
go

insert into Equipos(TipoEquipo,Modelo, UsuarioId)
values('Computadora','Asus', 2),
('Bateria','Panasonic',3)
go

insert into Reparaciones(EquipoId,FechaSolicitud,Estado)
values(7,'2023-11-16','1'),
(8,'2023-12-16','0')
go

insert into DetallesReparacion(ReparacionId, Descripcion, FechaInicio, FechaFin)
values(3,'Cpu quemado','2023-11-16', '2023-12-15'),
(4,'Cable roto','2023-11-16','2023-11-16')
go

insert into Tecnicos(Nombre, Especialidad)
values('Oscar','Electronico'),
('Maria','Informatica')
go

insert into Asignaciones(ReparacionId,TecnicoId, FechaAsignacion)
values(3,1,'2023-10-16'),
(4,2, '2023-11-17')
go

--Fin Insert--

--Consultas--
select *from Usuarios
select *from Usuarios where UsuarioId=3

select *from Equipos
select *from Equipos where TipoEquipo='computadora'

select *from Reparaciones
select *from Reparaciones where Estado= '1'

select *from DetallesReparacion
select *from DetallesReparacion where DetalleId= '1'

select *from Tecnicos
select *from Tecnicos where Especialidad='Informatica'

select *from Asignaciones
select *from Asignaciones where TecnicoId='1'

--Fin Consultas--
