select * from dba_tablespaces;
--Creaci[on de tablespace
CREATE TABLESPACE Locales_Venta
DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\Locales_Venta.DBF'
size 15M;

CREATE TABLESPACE Locales_Promocion
DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\Locales_Promocion.DBF'
size 15M;

CREATE TABLESPACE Locales_Producto
DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\Locales_Producto.DBF'
size 15M;

CREATE TABLESPACE Producto_Pedido
DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\Producto_Pedido.DBF'
size 15M;

CREATE TABLESPACE Usuario_Pedido
DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\Usuario_Pedido.DBF'
size 15M;

CREATE TABLESPACE Rutas_Pedido
DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\Rutas_Pedido.DBF'
size 15M;

CREATE TABLESPACE Rutas_Repartidor
DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\Rutas_Repartidor.DBF'
size 15M;
 
CREATE USER User_Lab1 IDENTIFIED BY userlab DEFAULT TABLESPACE Locales_Venta;
--Podemos crear mas usuarios y asignarles un TableSpace diferente

GRANT CONNECT TO User_Lab1;

GRANT RESOURCE TO User_Lab1;

--Datafiles con espacio ilimitado
ALTER USER User_Lab1 QUOTA UNLIMITED ON Locales_Ventas;
ALTER USER User_Lab1 QUOTA UNLIMITED ON Locales_Promocion;
ALTER USER User_Lab1 QUOTA UNLIMITED ON Locales_Producto;
ALTER USER User_Lab1 QUOTA UNLIMITED ON Producto_Pedido;
ALTER USER User_Lab1 QUOTA UNLIMITED ON Usuario_Pedido;
ALTER USER User_Lab1 QUOTA UNLIMITED ON Rutas_Pedido;
ALTER USER User_Lab1 QUOTA UNLIMITED ON Rutas_Repartidor;