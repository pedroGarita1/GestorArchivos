#DATABASE
CREATE DATABASE IF NOT EXISTS ITMA2 DEFAULT CHARACTER SET utf8mb4;
USE ITMA2;

#Tablas
CREATE TABLE IF NOT EXISTS Alumnos(a_Nombre varchar(50) not null, a_Apellido varchar(50) not null,a_Fecha_Nac datetime default current_timestamp, NoControl int not null, Jefe_grupo varchar(50), primary key (NoControl))engine=InnoDB;
CREATE TABLE IF NOT EXISTS Profesores(p_Nombre varchar(50) not null, p_Direccion varchar(100) not null, p_Telefono int , DNI int not null, primary key (DNI))engine=InnoDB;
CREATE TABLE IF NOT EXISTS Materias(codigo int not null, m_Nombre varchar(50) not null, DNI_Profesor int(50), primary key (codigo))engine=InnoDB;
CREATE TABLE IF NOT EXISTS Materias_Alumnos(codigo_Materias int, NoControl_Alumno int)engine=InnoDB;

#Claves
ALTER TABLE Materias ADD FOREIGN KEY(DNI_Profesor) REFERENCES Profesores(DNI) ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE Materias_Alumnos ADD FOREIGN KEY(codigo_Materias) REFERENCES Materias(codigo) ON DELETE SET NULL ON UPDATE CASCADE, ADD FOREIGN KEY(NoControl_Alumno) REFERENCES Alumnos(NoControl) ON DELETE SET NULL ON UPDATE CASCADE;

#Insertar Datos
INSERT INTO Alumnos(a_Nombre,a_Apellido,NoControl) VALUES ('Pedro','Garita',2910), ('Mariana','Colin',3213), ('Christina','Galicia',3343), ('Alfredo','Lopez',5849), ('Alisson','Vigeras',3123), ('Miranda','Flores',9213),
														  ('Luis','Herrera',7483), ('Jaque','Salinas',3421), ('Andrea','Sanches',3901), ('Alex','Guzman',3241), ('Jacqueline','Perez',4835), ('Luis','Hernandez',5501), 
                                                          ('Jenny','Perez',8703), ('iris','Figther',5432),('Alexis','Arguello',3435),('Mariely','Lujan',0762),('Axa','Avila',4536), ('Evelyn','Givera',7435), 
                                                          ('Abigail','Salvera',3452), ('Andrea','Almazan',4535);
    
INSERT INTO Materias(codigo,m_Nombre) VALUES (101,'Diseño Grafico'), (102,'Dibujo Tecnico'), (103,'Matematicas Aplicadas'), (104,'Calculo Diferencial'), (105,'Electro Magnetismo');

INSERT INTO Profesores(p_Nombre,p_Direccion,p_Telefono,DNI) VALUES ('Adrian calvajal','Av Manuel avila',555748395748,23874),('Francisco Hernandez','Av. Guerrero',554358984356,4385), 
																   ('Mauricio Valencia','Calle Crisantemo',554375838197,1892),('Miguel Rojas','Av. Guadalupana',552901785493,4653), 
																   ('Claudio Castillo','Calle Palmitos',553849128495,1467);
drop database itma2;

# mataeria 1    																								materia 3
INSERT INTO Materias_Alumnos (codigo_Materias) SELECT codigo FROM Materias WHERE codigo=101;					INSERT INTO Materias_Alumnos (codigo_Materias) SELECT codigo FROM Materias WHERE codigo=103;
INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=2910;				INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=8703;	
INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=3213;				INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=5432;
INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=3343;				INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=3435;	
INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=5849;				INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=0762;	
INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=3123;				INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=4536;	
INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=9213;				INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=7435;	

# mataeria 2    																								Materia 4
INSERT INTO Materias_Alumnos (codigo_Materias) SELECT codigo FROM Materias WHERE codigo=102;					INSERT INTO Materias_Alumnos (codigo_Materias) SELECT codigo FROM Materias WHERE codigo=102;
INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=7483;				INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=3452;
INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=3421;				INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=4535;
INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=3901;				INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=3213;
INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=3241;				INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=5849;
INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=4835;				INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=0762;
INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=5501;				INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=8703;

#Materia 5
INSERT INTO Materias_Alumnos (codigo_Materias) SELECT codigo FROM Materias WHERE codigo=102;
INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=2910;
INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=3123;
INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=5432;
INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=4536;
INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=4835;
INSERT INTO Materias_Alumnos (NoControl_Alumno) SELECT NoControl FROM Alumnos WHERE NoControl=7483;
#Repetir este paso otras 5 veces cambiando  el codigo de materia y los nocontrol de alumnos(es valido repetir alumnos pero no materias) 

#Consultas

SELECT * FROM Alumnos;
SELECT * FROM Profesores;
SELECT * FROM materias_alumnos;

#Consulta STRING
SELECT concat_ws('-',a_Nombre,a_Apellido) FROM Alumnos;
SELECT find_in_set('Jacque',a_Nombre) FROM Alumnos;
SELECT length(a_Nombre) FROM Alumnos;

#Consultas Numericas
SELECT codigo/2 FROM Materias WHERE codigo=101;
SELECT codigo*3 AS 'resultado' FROM Materias WHERE codigo=102;
SELECT codigo+codigo FROM Materias WHERE codigo=105;

SELECT * FROM Alumnos;

#Consultas de fecha
#Agregar un dia mas
SELECT adddate(a_Fecha_Nac, '1 1:1:1') FROM Alumnos;
#eXTRARER SOLO LA FECHA SIN LA HORA
SELECT DATE(a_Fecha_Nac) FROM Alumnos;
#Retornar el nombre dia de la semana
SELECT dayname(a_Fecha_Nac)FROM Alumnos;

#Consultas con condiciones
#Condicional de fecha con between
SELECT * FROM Alumnos WHERE a_Fecha_Nac BETWEEN '1999-01-01' AND '2000-12-31';
#Consultas con like para encontrar parecidos o que tenga esos caracteres
SELECT * FROM Profesores WHERE p_Nombre LIKE "%er%";
#Rango de letras
SELECT * FROM Materias WHERE m_Nombre LIKE "%o%" AND m_Nombre LIKE "%s%";
#Seleccion
SELECT * FROM Materias WHERE codigo != 404 AND codigo !=108;
# Consulta para que datos empiezan con esa letra
SELECT * FROM Profesores WHERE p_Nombre LIKE "s%";


#SUBCONSULTAS
SELECT a_Nombre FROM Alumnos WHERE Jefe_grupo='SI' > ANY(SELECT a_Nombre WHERE NoControl BETWEEN 0000 AND 6000);
SELECT m_Nombre FROM Materias WHERE codigo < 900 > ANY (SELECT m_Nombre WHERE m_Nombre LIKE "%e%");

ALTER TABLE Alumnos ADD AlumnoMateria int(50);
alter table Materias ADD AlumnoMateria int(50);
Alter table Profesores ADD AlumnoMateria int(50);
SELECT * FROM Alumnos;
#Consultas combinadas (JOIN)
SELECT Alumnos.a_Nombre,  Materias.m_Nombre
FROM Alumnos INNER JOIN Materias 
ON Alumnos.AlumnoMateria=Materias.AlumnoMateria;


SELECT Alumnos.a_Nombre,  Profesores.p_Nombre
FROM Alumnos INNER JOIN Profesores 
ON Alumnos.AlumnoMateria=Profesores.AlumnoMateria;
SELECT Materias.m_Nombre,  Profesores.p_Nombre
FROM Materias INNER JOIN Profesores 
ON Materias.AlumnoMateria=Profesores.AlumnoMateria;