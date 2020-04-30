create database FM;
use FM;
-- Drop database FM;

create table Empleado(
	ID_Empleado varchar(5) primary key,
    Nombre varchar(50),
    Apellido varchar(50),
    Edad int,
    Direccion varchar(80)
)engine=InnoDB;

create table Cliente(
	ID_Cliente varchar(5) primary key,
    Nit varchar(10),
    Nombre varchar(50),
    Apellido varchar(50)
)engine=InnoDB;

create table Producto(
	ID_Producto varchar(5) primary key,
    Nombre varchar(50),
    Precio float,
    Stock int
)engine=InnoDB;

create table Factura(
	ID_Factura varchar(10) primary key,
    -- foranea 
    ID_Cliente varchar(5),
    
    Fecha date,
    Total float,
    
    foreign key (ID_Cliente) references Cliente(ID_Cliente)
)engine=InnoDB;

create table Detalle_Factura(
	ID_Detalle varchar(10) primary key,
    -- foranea 
    ID_Factura varchar(10),
    ID_Producto varchar(5),
    
    Cantidad int,
    Precio float,
    Subtotal float,
    
    foreign key (ID_Factura) references Factura(ID_Factura),
    foreign key (ID_Producto) references Producto (ID_Producto)
)engine=InnoDB;