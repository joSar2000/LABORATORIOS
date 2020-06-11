CREATE TABLE MATRICULAS (
    idMatri int not null,
    fecha date,
    periodoAcademico VARCHAR(20),
    costoCurso INT,
    tasaAdministrativa int,
    descuento int
);

--la solucion es crear una nueva variable que es el monto total, atributo en el cual entra el costo total de la matricula con los atributos que costoCurso, tasaAdministrativa
--costoCurso y el descuento que permite establecer un solo valor en la consulta.


--nueva tabla desnormalizada
CREATE TABLE MATRICULAS (
    idMatri int not null,
    fecha date,
    periodoAcademico VARCHAR(20),
    costoCurso INT,
    tasaAdministrativa int,
    descuento int,
    montoTotal double
    --montoTotal = ( costoCurso + tasaAdministrativa - descuento)  
);

--nueva consulta
Select idMatri, fecha, estudiante, periodoAcademico, montoTotal AS "importe"
from MATRICULAS