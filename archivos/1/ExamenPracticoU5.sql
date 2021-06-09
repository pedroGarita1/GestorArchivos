#Equipo 1
#Nombre de los integrantes
#Jimenez Garita Pedro Octavio
#Martinez Mata Leslie Itadui
#Lima Lopez Angel
#Sandobal Flores Rodrigo
#Benitez Perez Fatima Andrea

use hospital;
#Insertar datos Medico
INSERT INTO medico(codigo, nombre_medico, apellido_medico) VALUES (1,"Pedro","Garita"),(2,"Leslie","Martinez"),(3,"Fatima","Benitez"),(4,"Angel","Lima"),(5,"Rodrigo","Sandobal"),(6,"Alex","Gonzales");
#Actualizar datos Medico
UPDATE medico SET nombre_medico = "Octavio" WHERE codigo = 1;

#Eliminar datos medico
DELETE FROM medico WHERE codigo =  6;
DELETE FROM ingreso WHERE habitacion = 750;