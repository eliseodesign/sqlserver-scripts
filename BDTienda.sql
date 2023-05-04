CREATE DATABASE BDTienda
GO 
USE BDTienda
GO
CREATE TABLE Categoria(
	--Atributo--TipoDato-AceptaciónDato--DefinicionLLave--AutoIncrement/Referencia
	Id Tinyint Not Null Primary Key Identity(1,1),
	Nombre Varchar(50) Not null
);
GO
CREATE TABLE Proveedor(
	Id Smallint Not Null Primary Key Identity(1,1),
	Nombre Varchar(50) Not Null,
	Apellido Varchar(50) Not Null,
	Cel Varchar(9) Not Null,
	NombreEmp Varchar(60) Not Null,
	Direccion Varchar(Max) Not Null
);
GO
CREATE TABLE Producto(
	Id Int Not Null Primary Key Identity(1,1),
	Nombre Varchar(50) Not Null,
	IdCategoria Tinyint Not Null Foreign Key References Categoria(Id),
	IdProveedor Smallint Not Null Foreign Key References Proveedor(Id),
	Fecha DateTime Not Null
);
---  insertar categorias
INSERT INTO Categoria(Nombre) VALUES('Bebidas')
INSERT INTO Categoria VALUES('Verduras')

--- insertar proveedor
INSERT INTO Proveedor(Nombre, Apellido, Cel, NombreEmp, Direccion) 
VALUES('Daniel','Rodrigez','123456789','Drinkit', 'Direccion Random');

INSERT INTO Proveedor(Nombre, Apellido, Cel, NombreEmp, Direccion)
VALUES ('Amilcar', 'Rodrigez', '987654321', 'Coca cola S.A de C.V', 'Un lugar por ahi');

-- insertar producto 
INSERT INTO Producto(Nombre, IdCategoria, IdProveedor, Fecha) 
VALUES ('CocaCola Light', 1, 2, GETDATE());

INSERT INTO Producto(Nombre, IdCategoria, IdProveedor, Fecha) 
VALUES ('Ensalada de verduras', 2, 1, GETDATE());

UPDATE Proveedor
SET Cel = '7621-2132'
WHERE Id = 1;


SELECT * FROM Categoria;
SELECT * FROM Proveedor;
SELECT * FROM Producto;

SELECT Categoria.Nombre as TIPO, Producto.Nombre as PRODUCT
FROM Categoria
INNER JOIN Producto ON Categoria.Id = Producto.IdCategoria
