--- CONSULTAS MULTITABLAS
SELECT P.Nombre as Nombre_Producto, C.Nombre as Categoría, Pr.Nombre + ' ' + Pr.Apellido as Proveedor
FROM Producto as P, Categoria as C, Proveedor as Pr
WHERE P.IdCategoria = C.Id AND P.IdProveedor = Pr.Id

--- INNSER JOIN
SELECT P.Nombre as Nombre_Producto, C.Nombre as Categoría, Pr.Nombre + ' ' + Pr.Apellido as Proveedor
FROM Producto as P
JOIN Categoria as C 
ON P.IdCategoria = C.Id
JOIN Proveedor as Pr 
ON P.IdProveedor = Pr.Id
