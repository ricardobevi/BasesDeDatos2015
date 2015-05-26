--AbalosTP3
--1
SELECT usuario.nick, grupo.descripcion FROM usuario JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario JOIN grupo ON usuario_grupo.id_grupo=grupo.id; 
--2
SELECT usuario.ultima_conexion, grupo.descripcion
FROM usuario JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario JOIN grupo ON usuario_grupo.id_grupo=grupo.id WHERE usuario.ultima_conexion=DATE(NOW());
--3
SELECT  count(grupo.id) as Cantidad  FROM usuario JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario JOIN grupo ON usuario_grupo.id_grupo=grupo.id WHERE usuario.tel='(01) 6149 7603';
--4
SELECT mensaje.mensaje,estado.descripcion  FROM mensaje JOIN estado ON mensaje.id_estado=estado.id;
--5
SELECT  usuario.nick , mensaje.mensaje FROM usuario JOIN mensaje ON usuario.id=mensaje.id_usr_from  WHERE mensaje.id_usr_from='72' and mensaje.id_usr_to='23';
--6
SELECT  usuario.nick ,mensaje.mensaje , estado.descripcion FROM usuario JOIN mensaje ON usuario.id=id_usr_from JOIN estado ON mensaje.id_estado=estado.id WHERE mensaje.id_usr_from='72' and mensaje.id_usr_to='23';
--7
SELECT  usuario.nick, mensaje.mensaje FROM mensaje JOIN estado ON mensaje.id_estado=estado.id JOIN usuario ON usuario.id=mensaje.id_usr_from WHERE usuario.ultima_conexion > mensaje.fecha_envio; 
