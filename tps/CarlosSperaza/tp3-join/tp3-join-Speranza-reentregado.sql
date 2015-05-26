--TP n3 group by, alumno: Carlos Speranza
--1
SELECT U.nick, G.descripcion 
FROM 
	usuario_grupo as UG JOIN usuario as U ON UG.id_usuario=U.id
	                 JOIN grupo as G ON G.id=UG.id_grupo ;
--2
SELECT grupo.descripcion 
FROM
	usuario_grupo JOIN usuario ON usuario_grupo.id_usuario = usuario.id
		      JOIN grupo ON usuario_grupo.id_grupo = grupo.id
WHERE usuario.ultima_conexion = current_date; 

--3
SELECT usuario.tel,usuario.nick, COUNT(grupo.id) AS cant_de_grupos
FROM 	
	usuario_grupo JOIN usuario ON usuario_grupo.id_usuario = usuario.id
		      JOIN grupo ON grupo.id=usuario_grupo.id_grupo
	GROUP BY usuario.tel, usuario.nick;
--4
SELECT mensaje.id_usr_from AS de, mensaje.id_usr_to AS para, mensaje.mensaje, estado.descripcion
FROM 
	mensaje JOIN estado ON mensaje.id_estado=estado.id;
--5
SELECT mensaje.mensaje, usuario.nick
FROM 	
	mensaje	JOIN usuario ON usuario.tel = '(03) 3659 6909'
		WHERE mensaje.id_usr_from = usuario.id or mensaje.id_usr_to = usuario.id;
--6
SELECT mensaje.mensaje, usuario.nick, estado.descripcion AS estado
FROM 	
	mensaje	JOIN usuario ON usuario.tel = '(03) 3659 6909'
		JOIN estado ON mensaje.id_usr_from = usuario.id or mensaje.id_usr_to = usuario.id
		WHERE estado.id = mensaje.id_estado;
--7
SELECT mensaje.mensaje, usuario.nick,mensaje.fecha_envio AS fecha_de_envio
FROM
	usuario JOIN mensaje ON usuario.id = mensaje.id_usr_to
	WHERE
	mensaje.fecha_envio <usuario.ultima_conexion;
		
