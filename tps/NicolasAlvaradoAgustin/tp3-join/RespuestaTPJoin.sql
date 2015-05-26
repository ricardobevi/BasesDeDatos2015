--1 - Nick de usuario asociado a cada grupo
SELECT usuario.nick, grupo.descripcion 
FROM usuario 
JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario 
JOIN grupo ON usuario_grupo.id_grupo=grupo.id; 
--2 -Descripción de grupos que tengan usuarios conectados el día de hoy
SELECT usuario.ultima_conexion, grupo.descripcion
FROM usuario 
JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario 
JOIN grupo ON usuario_grupo.id_grupo=grupo.id 
WHERE usuario.ultima_conexion=DATE(NOW());
--3 - La cantidad de grupos a los que pertenece un usuario con un telefono dado
SELECT  count(grupo.id) as Cantidad  FROM usuario J
OIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario 
JOIN grupo ON usuario_grupo.id_grupo=grupo.id 
WHERE usuario.tel='(01) 6149 7603';
--4 - Listado de los mensajes con sus estados
SELECT mensaje.mensaje,estado.descripcion  
FROM mensaje 
JOIN estado ON mensaje.id_estado=estado.id;
-- 5 - Conversación entre 2 usuarios
SELECT  usuario.nick , mensaje.mensaje FROM usuario 
JOIN mensaje ON usuario.id=mensaje.id_usr_from  
WHERE mensaje.id_usr_from='72' and mensaje.id_usr_to='23';
--6 - Igual al punto 5, pero mostrando también los estados.
SELECT  usuario.nick ,mensaje.mensaje , estado.descripcion FROM usuario 
JOIN mensaje ON usuario.id=id_usr_from 
JOIN estado ON mensaje.id_estado=estado.id 
WHERE mensaje.id_usr_from='72' and mensaje.id_usr_to='23';
--7 - Listar los mensajes ignorados por los usuarios.
SELECT  usuario.nick, mensaje.mensaje FROM mensaje 
JOIN estado ON mensaje.id_estado=estado.id 
JOIN usuario ON usuario.id=mensaje.id_usr_from 
WHERE usuario.ultima_conexion > mensaje.fecha_envio; 
