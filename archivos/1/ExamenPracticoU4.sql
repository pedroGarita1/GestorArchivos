#<-EQUIPO 1->
#<-NOMBRE DE LOS INTEGRANTES->
#<-Martínez Mata Leslie Ithadui->
#<-Sandoval Flores Rodrigo->
#<-Benitez Perez Fatima Andrea->
#<-Lima Lopez Angel->
#<-Jimenez Garita Pedro Octavio->

#Jefe RH
START TRANSACTION;
LOCK TABLES ingreso WRITE;
DELETE FROM ingreso  WHERE codigo_pac = 3456;
INSERT INTO ingreso(codigo_ingreso,codigo_pac, habitacion, fecha, codigo_medico) VALUES ("1987","3096", "993","2020-05-21", "12347");
UNLOCK TABLES;
COMMIT;

DESC ingreso;
SELECT * FROM medico;
SELECT * FROM ingreso;

#Jefe RH
START TRANSACTION;
LOCK TABLES medico WRITE;
INSERT INTO medico(codigo,nombre_medico,apellido_medico) VALUES (12352,'Angel','Miranda');
UNLOCK TABLES;
COMMIT;