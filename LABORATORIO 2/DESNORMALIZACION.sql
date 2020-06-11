
--Listar el nombre, horario de atencion y tarifa de envío (tiene que ser menor o igual a 10) el barrio (tiene que ser "La Pradera" en el que se encentra un local
/**
----ALIAS----
LOCALES l
DIRECCION d
**/

SELECT 
    l.localNombre,
    l.horarioatencion,
    l.tarifaEnvio, 
    d.barrio
FROM
    DIRECCION d INNER JOIN LOCALES l ON d.idLocales = l.idLocales
WHERE
    d.barrio = 'La Pradera' AND
    l.tarifaenvio <= 10
;


--Listar el nombre, horario de atención y tarifa de envío (tiene que ser menor o igual a 10) el barrio (tiene que ser "La Pradera" en el que se encentra un local
/**
----ALIAS----
DIRECCION d
**/
SELECT 
    d.localNombre,
    d.horarioAtencion,
    d.tarifaEnvio,
    d.barrio
FROM
    DIRECCION d
    WHERE
        d.barrio = 'La Pradera' AND
        d.tarifaEnvio <=10
;