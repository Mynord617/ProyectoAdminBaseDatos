CREATE DATABASE MercaditoOlimpia

USE MercaditoOlimpia

CREATE TABLE proveedores
(
	ID_Proveedor INT identity primary key not null,
	nombre_empresa varchar (50),
	nombre_proveedor varchar (50),
	direccion_proverdor varchar (70),
	telefono_proveedor varchar (25),
)

CREATE TABLE Productos
(
	ID_producto INT identity primary key not null,
	nombre_producto varchar (50),
	descripcion_producto varchar (70),
	precio_producto varchar (20),
	compra_producto varchar (20),
	cantidad_producto varchar (100),
)

CREATE TABLE Clientes
(
	ID_cliente INT identity primary key not null,
	nombre_cliente varchar (50),
	apellido_cliente varchar (50),
	cliente_direccion varchar (70),
	cliente_telefono varchar (20),
)

CREATE TABLE Ventas 
(
	numero_venta INT identity primary key not null,
	ID_cliente int,
	estado varchar(20),
	fechar datetime
)

CREATE TABLE Detalle_Venta
(
	numero_venta int,
	ID_producto int,
	cantidad_producto varchar,
	total int
)


CREATE TABLE Categoria
(
	ID_Categoria_ INt identity primary Key not null,
	descripcion_categoria varchar(50)
)

CREATE TABLE Gasto_Casa
(
	ID_gasto int identity primary key not null,
	gasto_total varchar(30)
)

CREATE TABLE Gasto_Casa_Detalle
(
	ID_gastoCasaDetalle INT identity primary key not null,
	ID_gasto int,
	ID_producto int,
	cantidad_gasto varchar,
	FOREIGN KEY (ID_gasto) REFERENCES Gasto_Casa (ID_gasto),
	FOREIGN KEY (ID_producto) REFERENCES Productos (ID_Producto)
)
insert into Productos values ('Mayonesa Helmans','Mayonesa pequeña de 500g','45','60','100')
insert into Productos values ('Desodorante OldSpice','desodorante en barra','50','90','200')
insert into Productos values ('Galletas Maria','galletas tipo vainilla','25','40','150')
insert into Productos values ('Cacahuates Juan','de 20g','15','25','50')
insert into Productos values ('Coca-cola','de litro 1/4','45','60','160')
insert into Productos values ('Pepsi','de tres litros','45','60','200')
insert into Productos values ('Jabon palmolive','palmolive rosa','30','45','60')
insert into Productos values ('Jabon lavatrastes','axion de 500g','35','40','100')
insert into Productos values ('Pollo','pollo en piezas','27','32','1000')
insert into Productos values ('Almendras','bolsa de almendras de 500g','45','60','80')
insert into Productos values ('Mostaza','Mostaza pequeña de 500g','55','60','100')
insert into Productos values ('Chicharron','chicharron libra','115','120','100')
insert into Productos values ('Jugos naturas','jugos naturas de 250ml','11','15','250')
insert into Productos values ('Churros Benny','churros de nachos','45','60','100')
insert into Productos values ('Candados','candado pequeño','95','160','30')
insert into Productos values ('Colas','Colas de dama','5','10','60')
insert into Productos values ('Crema Xtreme','crema para cabello de 500g','25','35','50')
insert into Productos values ('Pampers','pampers huggies de recien nacido','200','280','100')


select * from Productos

insert into Categoria values ( 'verduras' )
insert into Categoria values ( 'Limpieza' )
insert into Categoria values ( 'Bebes' )
insert into Categoria values ( 'Cocina' )
insert into Categoria values ( 'Carnes' )

select * from Categoria


insert into Clientes values ('Juan', 'Perez', 'San Pedro Sula', '96365755')
insert into Clientes values ('Carlos', 'Contreras', 'Omoa', '96364587')
insert into Clientes values ('Maria', 'Lagos', 'Santa Barbara', '96363525')
insert into Clientes values ('Karina', 'Pineda', 'Copan', '47745755')
insert into Clientes values ('Aracely', 'Meza', 'San Pedro Sula', '32585755')

select *from Clientes