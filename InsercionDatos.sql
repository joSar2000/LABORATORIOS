-- Para usuario = nickName, direccion
INSERT INTO USUARIO VALUES ('Jorge2000', 'Yahuracuna Arabiscos y Gobernacion de Mainas', '237-33');
INSERT INTO USUARIO VALUES ('CJ2001', 'Pradera', '111-11');
INSERT INTO USUARIO VALUES ('CJ2002', 'LA TEBAIDA', '111-12');
INSERT INTO USUARIO VALUES ('CJ2003', 'EL VALLE', '111-13');
INSERT INTO USUARIO VALUES ('CJ2004', '24 DE MAYO', '111-14');
-- Para Locales = id, nombre local, RUC, horario de atencion, tarifa de envio
INSERT INTO LOCALES VALUES (1, 'Supermaxi', '1103211668001', 'LUNES A VIERNES DE 9H00 AM A 19H00 PM', 9.50);
INSERT INTO LOCALES VALUES (2, 'Zerimar', '1107251998101', 'LUNES A VIERNES DE 8H00 AM A 19H00 PM', 9.00);
INSERT INTO LOCALES VALUES (3, 'Mercamax', '1102781240011', 'LUNES A VIERNES DE 9H00 AM A 19H00 PM', 8.50);
INSERT INTO LOCALES VALUES (4, 'Granaki', '1103109753821', 'LUNES A VIERNES DE 9H00 AM A 19H00 PM', 7.50);
INSERT INTO LOCALES VALUES (5, 'Ganga', '1103517450449', 'LUNES A VIERNES DE 9H00 AM A 19H00 PM', 7.00);
--Para Repartidor = id, nombre repartidor, estado
INSERT INTO REPARTIDOR VALUES (1, 'Juan Merino', 'Disponible');
INSERT INTO REPARTIDOR VALUES (2, 'George Luz', 'Ocupado');
INSERT INTO REPARTIDOR VALUES (3, 'Adrian Esparza', 'Disponible');
INSERT INTO REPARTIDOR VALUES (4, 'Luis Burneo', 'Disponible');
INSERT INTO REPARTIDOR VALUES (5, 'Bolivar Ramirez', 'Ocupado');
-- Para Promocion = id, idLocales, tipo de promocion, estado de promocion
INSERT INTO PROMOCION VALUES (4, 1, '2x1 en carnes y mariscos', 'activa');
INSERT INTO PROMOCION VALUES (5, 2, '2x1 en lacteos', 'activa');
INSERT INTO PROMOCION VALUES (2, 3, '20% descuento en embutidos', 'inactiva');
INSERT INTO PROMOCION VALUES (3, 4, '11% descuento en verduras', 'inactiva');
INSERT INTO PROMOCION VALUES (1, 5, '15% descuento en lavadoras', 'activa');
-- Para Producto = id, idLocal, detalle, precio promocion
INSERT INTO PRODUCTO VALUES (1, 1, 'Carne de res cortada', 7.50);
INSERT INTO PRODUCTO VALUES (2, 2, 'Mortadela cortada', 4.00);
INSERT INTO PRODUCTO VALUES (4, 1, 'Atun', 5.00);
INSERT INTO PRODUCTO VALUES (5, 1, 'SARDINA', 7.00);
--Para Rutas = id, idRepartidor, recorrido
INSERT INTO RUTAS VALUES (1, 1, '18 de Noviembre y Gonzanama');
INSERT INTO RUTAS VALUES (2, 2, 'Nicolas Garcia  Y Colon');
INSERT INTO RUTAS VALUES (3, 3, 'Av. Occidental y Epiclachima');
INSERT INTO RUTAS VALUES (4, 4, 'Epiclachima y 10 de Agosto');
INSERT INTO RUTAS VALUES (5, 5, 'Huoranis y Nicaragua');
INSERT INTO RUTAS VALUES (6, 1, 'Pradera');
--Para Pedido = id, idProducto, nickname, idRuta, detalle, prioridad
INSERT INTO PEDIDO VALUES (1, 1, 'Jorge2000', 1, 'Pedido realizado hoy', 'Alta');
INSERT INTO PEDIDO VALUES (2, 2, 'CJ2001', 2, 'Pedido realizado hoy', 'Media');
INSERT INTO PEDIDO VALUES (3, 3, 'CJ2002', 5, 'Pedido realizado hoy', 'Alta');
INSERT INTO PEDIDO VALUES (4, 4, 'CJ2003', 4, 'Pedido realizado hoy', 'Baja');
INSERT INTO PEDIDO VALUES (5, 5, 'CJ2004', 3, 'Pedido realizado hoy', 'Alta');
INSERT INTO PEDIDO VALUES (6, 1, 'Jorge2000', 1, 'Pedido realizado hoy', 'Media');
--Para Direccion = direccionNombre, idLocales, barrio, Nro Edificio
INSERT INTO DIRECCION VALUES ('18 de noviembre y Catacocha', 1, 'La Pradera', '237-33');
INSERT INTO DIRECCION VALUES ('24 de mayo', 2,  'La Pradera', '237-33');
INSERT INTO DIRECCION VALUES ('Epiclachima', 3, 'El Dorado', '562-38');
INSERT INTO DIRECCION VALUES ('10 de Agosto', 4, 'IV Centenario', '459-18');
INSERT INTO DIRECCION VALUES ('Huoranis', 5, 'Peñon del Oeste', '528-49');


DELETE FROM USUARIO;
DELETE FROM LOCALES;
DELETE FROM REPARTIDOR;
DELETE FROM PROMOCION;
DELETE FROM PRODUCTO;
DELETE FROM RUTAS;
DELETE FROM PEDIDO;
DELETE FROM DIRECCION;


