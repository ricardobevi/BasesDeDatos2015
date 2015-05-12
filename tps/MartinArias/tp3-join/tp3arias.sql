--tp3 arias
--1 nick de usuario asociado a cada grupo
SELECT usuario.nick, grupo.descripcion FROM usuario
JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario 
JOIN grupo ON usuario_grupo.id_grupo=grupo.id; 
--2 descripciones de grupos que tengan usuarios conectados
SELECT usuario.ultima_conexion, grupo.descripcion FROM usuario 
JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario 
JOIN grupo ON usuario_grupo.id_grupo=grupo.id 
WHERE usuario.ultima_conexion=DATE(NOW());
--3 la cant. de grupos a los que pertenece con sus estados
SELECT  count(grupo.id) as Cantidad  FROM usuario 
JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario 
JOIN grupo ON usuario_grupo.id_grupo=grupo.id 
WHERE usuario.tel='(01) 1122 3344';
--4 listado de los mensajes con sus estados
SELECT mensaje.mensaje,estado.descripcion  FROM mensaje 
JOIN estado ON mensaje.id_estado=estado.id;
--5 conversacion entre dos usuarios
SELECT  usuario.nick , mensaje.mensaje FROM usuario 
JOIN mensaje ON usuario.id=mensaje.id_usr_from  
WHERE mensaje.id_usr_from='11' and mensaje.id_usr_to='22';
--6 igual al punto 5 pero con sus estados
SELECT  usuario.nick ,mensaje.mensaje , estado.descripcion FROM usuario 
JOIN mensaje ON usuario.id=id_usr_from 
JOIN estado ON mensaje.id_estado=estado.id 
WHERE mensaje.id_usr_from='11' and mensaje.id_usr_to='22';
--7 listar los mensajes ignorados por los usuarios
SELECT  usuario.nick, mensaje.mensaje FROM mensaje 
JOIN estado ON mensaje.id_estado=estado.id 
JOIN usuario ON usuario.id=mensaje.id_usr_from 
WHERE usuario.ultima_conexion > mensaje.fecha_envio; 
