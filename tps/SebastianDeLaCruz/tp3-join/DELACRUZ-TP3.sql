-- Trabajo práctico Nº3: JOIN
--
-- Integrantes:
-- Sebastian de la Cruz
--
-- Consignas:
--
-- 1 - Nick de usuario asociado a cada grupo. 
-- 2 - Descripción de grupos que tengan usuarios conectados el día de hoy. 
-- 3 - La cantidad de grupos a los que pertenece un usuario con un telefono dado. 
-- 4 - Listado de los mensajes con sus estados. 
-- 5 - Conversación entre 2 usuarios. 
-- 6 - Igual al punto 5, pero mostrando también los estados. 
-- 7 - Listar los mensajes ignorados por los usuarios.
--
--Ejercicio 1:
SELECT usuario.nick FROM usuario 
JOIN usuario_grupo ON usuario.id =  usuario_grupo.id_usuario;

--Ejercicio 2:
SELECT grupo.descripcion FROM grupo
JOIN usuario ON usuario.id = grupo.id_usuario
WHERE usuario.ultima_conexion = current_date;

--Ejercicio 3:
SELECT COUNT(id_usuario)
FROM 	usuario_grupo
JOIN usuario ON usuario.tel = '11256978'
WHERE usuario_grupo.id_usuario = usuario.id;
		
--Ejercicio 4:
SELECT mensaje.mensaje, estado.descripcion
FROM	mensaje
JOIN estado ON mensaje.id_estado = estado.id;

--Ejercicio 5:
SELECT mensaje.mensaje, usuario.nick
FROM 	mensaje
JOIN usuario ON usuario.tel = '11256978'
WHERE mensaje.id_usr_from = usuario.id or mensaje.id_usr_to = usuario.id;
		
--Ejercicio 6:
SELECT mensaje.mensaje, usuario.nick, estado.descripcion
FROM	mensaje
JOIN usuario ON usuario.tel = '11256978'
JOIN estado ON estado.id = mensaje.id
WHERE mensaje.id_usr_from = usuario.id or mensaje.id_usr_to = usuario.id;
		
--Ejercicio 7:
SELECT mensaje.mensaje
FROM 	mensaje
JOIN estado ON estado.descripcion = 'recibido'
JOIN usuario ON mensaje.id_usr_from = usuario.id
WHERE mensaje.id_estado = estado.id AND mensaje.fecha_envio < usuario.ultima_conexion;
