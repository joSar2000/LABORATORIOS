--Índices requeridos

/**
indice para nombre de los locales
**/
CREATE INDEX nomLocales_inx ON LOCALES (localNombre);

/**
indice para horario de atencion
**/
CREATE INDEX horarioAtencion_inx ON LOCALES(horarioAtencion);

/**
indice para saber el datalle de un producto
**/
CREATE INDEX detalleProducto_inx ON PRODUCTO (detalle);

/**
indice para saber detalles de un pedido
**/
CREATE INDEX detallePedido_inx ON PEDIDO (detalle);

/**
indice para saber el estado de la promocion
**/
CREATE INDEX estadoPromocion_inx ON PROMOCION (estadoPromocion);

/**
indice para saber el tipo de promocion
**/
CREATE INDEX tipoPromocion_inx ON PROMOCION (tipoPromocion);    