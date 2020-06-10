/**
Consultar el nombre y el estado de aquello repartidores cuyo recorrido sea "18 de noviembre y Gonzanama" y "Pradera", ademas mostrar el pedido que lleva, con sus respectivos productos y el 
destinatario que realizo dicho pedido
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
    u.nickName
FROM REPARTIDOR r
INNER JOIN RUTAS rut ON r.idrepar = rut.idrepar
INNER JOIN PEDIDO p ON rut.idruta = p.idruta
INNER JOIN USUARIO u ON u.nickname = p.nickname
INNER JOIN PRODUCTO pr ON pr.idproducto = p.idproducto  
INNER JOIN LOCALES l ON l.idlocales = pr.idlocales

WHERE
rut.idruta = 2
;

DROP VIEW repartidor_rutas;
select * from repartidor_rutas;

/**
Consultar el nombre de los locales cuyo estado de promocion de productos sea activo, el precio promocion del producto se encuentre entre $1 y $8, la prioridad del pedido en la que se encuentra sea 
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