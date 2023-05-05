-- STORED PROCEDURE
-- Guardar
CREATE PROCEDURE SPGuardarCategoria
@Nombre varchar(50)
as
begin
INSERT INTO Categoria VALUES(@Nombre);
exec Mostrar;
end

-- Eliminar
CREATE PROCEDURE SPEliminarCategoria
@Id tinyint
as
begin
DELETE FROM Categoria WHERE Id = @Id;
end

-- Mostrar
CREATE PROCEDURE SPMostrarCategorias
as
begin
SELECT * FROM Categoria
end

--- ejecución de SP

exec SPMostrarCategorias