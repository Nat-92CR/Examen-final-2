create database practica
go
use practica
go

create table Usuarios(
	UsuarioId			int identity primary key,
	Nombre				varchar(50) not null,
	CorreoElectronico	varchar(50),
	Telefono			varchar(15) unique
)
go

create table Equipos(
	EquipoId		int identity primary key,
	TipoEquipo		varchar(50) not null,
	Modelo			varchar(50),
	UsuarioId		int, 
	constraint fkEquiposUsuario foreign key(UsuarioId) references Usuarios (UsuarioId)
)
go

create table Reparaciones(
	ReparacionesId		int identity primary key,
	EquipoId			int,
	FechaSolicitud		datetime,
	Estado				char,
	constraint fkReparacionesEquipo foreign key(EquipoId) references Equipos(EquipoId)
)
go

create table DetallesReparacion(
	DetalleId		int identity primary key,
	ReparacionId	int,
	Descripcion		varchar(50),
	FechaInicio		datetime,
	FechaFin		datetime,
	constraint fkDetalleReparacion foreign key(ReparacionId) references Reparaciones(ReparacionesId)
)
go

create table Tecnicos(
	TecnicoId		int identity primary key,
	Nombre			varchar(50),
	Especialidad	varchar(50),
)
go

create table Asignaciones(
	AsignacionId	int identity primary key,
	ReparacionId	int,
	TecnicoId		int,
	FechaAsignacion	datetime,
	constraint fkAsignacionReparacion foreign key(ReparacionId) references Reparaciones(ReparacionesId),
	constraint fkAsignacionTecnico foreign key(TecnicoId) references Tecnicos(TecnicoId),

)
go