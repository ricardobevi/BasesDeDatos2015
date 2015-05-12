Javier Gimenez



SELECT usuario.nick, grupo.descripcion 
FROM 
		usuario_grupo 
		JOIN usuario ON Usuario.ID = usuario_grupo.id_usuario 
		JOIN grupo ON Grupo.ID = usuario_grupo.id_grupo;


sELECT grupo.descripcion FROM grupo
		JOIN usuario ON usuario.ultima_conexion = current_date;


SELECT COUNT(id_usuario)
FROM 	usuario_grupo
		JOIN usuario ON usuario.tel = 'telefono'
		WHERE usuario_grupo.id_usuario = usuario.id;
		


SELECT mensaje.mensaje, estado.descripcion
FROM	mensaje
		JOIN estado ON mensaje.id_estado = estado.id;


SELECT mensaje.mensaje, usuario.nick
FROM 	mensaje
		JOIN usuario ON usuario.tel = 'telefono'
		WHERE mensaje.id_usr_from = usuario.id or mensaje.id_usr_to = usuario.id;
		


SELECT mensaje.mensaje, usuario.nick, estado.descripcion
FROM	mensaje
		JOIN usuario ON usuario.tel = 'telefono'
		JOIN estado ON estado.id = mensaje.id
		WHERE mensaje.id_usr_from = usuario.id or mensaje.id_usr_to = usuario.id;
		

SELECT mensaje.mensaje
FROM 	mensaje
		JOIN estado ON estado.descripcion = 'Recibido'
		JOIN usuario ON mensaje.id_usr_from = usuario.id
		WHERE mensaje.id_estado = estado.id AND mensaje.fecha_envio < usuario.ultima_conexion;
