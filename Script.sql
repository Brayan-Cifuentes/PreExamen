create database FM;
use FM;
-- Drop database FM;

create table Empleado(
	ID_Empleado varchar(5) primary key,
    Nombre varchar(10),
    Apellido varchar(10),
    Edad int,
    Direccion varchar(10)
)engine=InnoDB;