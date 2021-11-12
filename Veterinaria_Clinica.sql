create database ClinicaVeterinaria;

use ClinicaVeterinaria;

--Tabla DueñoMascota
create table DueñoMascota(
dmId  int primary key identity (1,1) not null,
NumIdentidad int not null unique,
nombre varchar (50) not null,
apellido varchar (50) not null,
direccion int foreign key references direccion(dirId) not null,
telefono int
);
insert into DueñoMascota values(201,'Alexis','Figueroa',1,78451236)
insert into DueñoMascota values(202,'Nestor','Zamora',2,74523012)
insert into DueñoMascota values(203,'Marcos','Martinez',3,74558899)
insert into DueñoMascota values(204,'Mely','Murillo',4,66998855)


create table direccion(
dirId int primary key identity(1,1) not null,
direccion varchar (50) not null,
departamentoN int foreign key references departamento(depId) not null,
codigoPostal int not null
);


create table departamento(
depId int primary key identity(1,1) not null,
departamentoN varchar (50) not null unique, 
municipioN int foreign key references municipio(munId) not null,
);


create table municipio(
munId int primary key identity(1,1) not null,
municipioN varchar (50) not null unique
);


--Tabla Mascota
create table Mascota(
masId int primary key identity(1,1) not null,
niMascota varchar(5) not null,
nombre varchar(50) not null,
tipoMascota int foreign key references TipoMascota(tmId) not null,
raza  int foreign key references raza(razaId) not null,
Observacion varchar (225) not null
);



create table TipoMascota(
tmId int primary key identity(1,1) not null, 
tipoMacotaN varchar (50) not null,
);


create table raza(
razaId int primary key identity(1,1) not null, 
tipoMascotaN varchar (50) not null,
);


--Tabla Veterinario
create table Veterinario(
codigoVeterinarioId int primary key identity(1,1) not null,
nombre varchar(50) not null,
apellido varchar(50) not null,
cargo  int foreign key references Cargo(cId) not null,
);


create table Cargo(
cId int primary key identity(1,1) not null,
nombre varchar(50) not null,
);



--Tabla Ingresos

create table Ingresos(
inId int primary key identity(1,1) not null,
motivo varchar(100) not null,
fechaIngreso Date,
observaciones varchar(200) not null,
mascota int foreign key references Mascota(masId) not null,
veterinario  int foreign key references Veterinario(codigoVeterinarioId) not null,
);


--insert en tabla municipio
insert into municipio values ('Chalatenango');
insert into municipio values ('Ojos de Agua');
insert into municipio values ('Arcatao');
insert into municipio values ('El Paraiso');

--insert en tabla departamento
insert into departamento values('Chalatenango',1)
insert into departamento values('El salvador',2)

--insert en tabla direccion
insert into direccion values('calle 3',1,001)
insert into direccion values('calle 4',1,001)
insert into direccion values('calle 5',1,001)
insert into direccion values('calle 6',1,001)

--insert dueñomascota
insert into DueñoMascota values(201,'Alexis','Figueroa',1,78451236)
insert into DueñoMascota values(202,'Nestor','Zamora',2,74523012)
insert into DueñoMascota values(203,'Marcos','Martinez',3,74558899)
insert into DueñoMascota values(204,'Mely','Murillo',4,66998855)

--insert raza
insert into raza values('hogarmania')
insert into raza values('Bulldog')
insert into raza values('Poodle')
insert into raza values('Labrador')

--insert tipo
insert into TipoMascota values('Perro')

--insert mascota
insert into Mascota values(003,'Pancho',1,1,'Ninguna')
insert into Mascota values(04,'Mico',1,2,'Ninguna')
insert into Mascota values(05,'Silecio',1,3,'Ninguna')
insert into Mascota values(06,'Cachorro',1,4,'Ninguna')
insert into Mascota values(07,'Goma',1,1,'Ninguna')
insert into Mascota values(008,'Pancha',1,1,'Ninguna')
insert into Mascota values(09,'misa',1,2,'Ninguna')
insert into Mascota values(010,'hello',1,3,'Ninguna')
insert into Mascota values(011,'ander',1,4,'Ninguna')
insert into Mascota values(012,'berri',1,1,'Ninguna')

--insert cargo
insert into Cargo values('doctor')
insert into Cargo values('enfermero')

--insert veterinario
insert into Veterinario values('Alex','Molina',1)
insert into Veterinario values('Alfredo','Guardado',2)
insert into Veterinario values('Gaby','Grady',1)
insert into Veterinario values('Alejandro','Menjivar',2)

--insert ingresos
insert into Ingresos values ('Ninguno','2021-11-12','Ninguno',1,1)
insert into Ingresos values ('Alergico','2021-11-12','Ninguno',2,2)
insert into Ingresos values ('Ninguno','2021-11-12','Ninguno',3,1)
insert into Ingresos values ('Alergico','2021-11-12','Ninguno',4,2)
insert into Ingresos values ('Ninguno','2021-11-12','Ninguno',5,1)

insert into Ingresos values ('Ninguno','2021-11-12','golpeado',6,1)
insert into Ingresos values ('Alergico','2021-11-12','Ninguno',7,2)
insert into Ingresos values ('Ninguno','2021-11-12','golpeado',8,1)
insert into Ingresos values ('Alergico','2021-11-12','Ninguno',9,2)
insert into Ingresos values ('Ninguno','2021-11-12','golpeado',10,1)

insert into Ingresos values ('Alergico','2021-11-12','golpeado',1,1)
insert into Ingresos values ('Enfermo','2021-11-12','Ninguno',2,2)
insert into Ingresos values ('Ninguno','2021-11-12','golpeado',3,1)
insert into Ingresos values ('Alergico','2021-11-12','Ninguno',4,2)
insert into Ingresos values ('Ninguno','2021-11-12','golpeado',5,1)