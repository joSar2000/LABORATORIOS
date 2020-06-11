/**
Consultar el nombre, recorrido y el estado de aquello repartidores cuya entrega haya sido entregada a un usuario en especifico, ademas mostrar el pedido en los cuales los prodcutos comprados sean "Atun" o 
"Sardinas" que se hayan pedido en ese mismo dia y el precio unitario debe ser mayor o igual a $2.50
----ALIAS----
REPARTIDOR r
RUTAS ru
PEDIDO p
PRODUCTO pr
USUARIO u
**/

CREATE VIEW repartidor_rutas AS
SELECT
    r.nombrerapartidor,
    r.estado,
    rut.recorrido,
    p.detallepe,
    pr.detalle,
    pr.preciounitario,
    u.nickName
FROM REPARTIDOR r
INNER JOIN RUTAS rut ON r.idrepar = rut.idrepar
INNER JOIN PEDIDO p ON rut.idruta = p.idruta
INNER JOIN USUARIO u ON u.nickname = p.nickname
INNER JOIN PRODUCTO pr ON pr.idproducto = p.idproducto  
INNER JOIN LOCALES l ON l.idlocales = pr.idlocales
WHERE
u.nickname = 'Jorge2000' AND
(pr.detalle = 'Atun' OR pr.detalle = 'Sardina') 
AND
pr.preciounitario >= 2.50
ORDER BY pr.preciounitario DESC
;

DROP VIEW repartidor_rutas;
select * from repartidor_rutas;

/**
Consultar el nombre de los locales cuyo estado de promocion de productos sea activo, su tarifa, el precio promocion del producto se encuentre entre $1 y $8, la prioridad del pedido en la que se encuentra sea 
Media y mostrar el nick de la persona que realizo el pedido conjuntamente con la direccion de este ultimo.
-------Alias-------
LOCALES l
PROMOCION p
DIRECCION d
PRODUCTO pr
PEDIDO pe
USUARIO u
**/

CREATE VIEW Locales_Ofertas AS 
SELECT 
    l.localNombre,
    l.tarifaenvio,
    p.estadoPromocion, 
    p.tipoPromocion, 
    d.direccionnombre,
    pr.detalle, 
    pr.preciopromocion,
    pe.prioridad,
    u.nickname,
    u.direcciones
FROM LOCALES l
INNER JOIN PROMOCION p ON l.idLocales = p.idLocales
INNER JOIN DIRECCION d ON l.idLocales = d.idLocales
INNER JOIN PRODUCTO pr ON l.idLocales = pr.idLocales
INNER JOIN PEDIDO pe ON pr.idproducto = pe.idproducto
INNER JOIN USUARIO u ON pe.nickname = u.nickname
WHERE p.estadoPromocion = 'activa' AND
pr.preciopromocion BETWEEN 1 AND 8 AND
pe.prioridad = 'Media'
ORDER BY pr.preciopromocion ASC
;
DROP VIEW Locales_Ofertas;
select * from Locales_Ofertas;

/**
Nombrar el nombre de los locales que esten ubicados dentro del barrio "Pradera" con su respectiva direccion ,listar el precio unitario de aquellos productos que no tengan un precio de promocion establecido
con su respectivo detalle y nombrar aquellos usuario cuyas direcciones sean especificadas por un usuario.
-----ALIAS----
LOCALES l
DIRECCION d
PRODUCTO pr
PEDIDO p
USUARIO u
**/

CREATE VIEW Locales_Barrio AS
SELECT
    l.localNombre,
    d.barrio,
    d.direccionNombre,
    pr.precioUnitario,
    u.nickName,
    u.direcciones
FROM LOCALES l
INNER JOIN PRODUCTO pr ON l.idlocales = pr.idlocales
INNER JOIN DIRECCION d ON l.idlocales = d.idlocales
INNER JOIN PEDIDO p ON pr.idproducto = p.idproducto
INNER JOIN USUARIO u ON u.nickname = p.nickname
WHERE 
d.barrio = 'La Pradera' AND
pr.preciopromocion = 0 AND
u.direcciones = 'EL VALLE'
ORDER BY u.direcciones
;

DROP VIEW Locales_Barrio;
select * from Locales_Barrio;