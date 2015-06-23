--1
SELECT usuario.nick, grupo.descripcion -- lista el nick de la tabla usuario y la descripcion del grupo
FROM usuario_grupo 
JOIN usuario ON Usuario.ID = usuario_grupo.id_usuario -- compara el id de la tabla usuario con el id de la tabla usuario_grupo 
JOIN grupo ON Grupo.ID = usuario_grupo.id_grupo;--compara el id de la tabla grupo con el id de la tabla usuario_grupo
-- si el id es igual nos devuelve el nick y la descripcion de grupo
-- 2
SELECT grupo.descripcion FROM usuario_grupo--lista ladescripcion del grupo
JOIN grupo ON usuario_grupo.id_grupo = grupo.id --comprueba que elcontenido sea elk mismo
JOIN usuario ON usuario_grupo.id_usuario = usuario.id--comprueba que elcontenido sea elk mismo
WHERE usuario.ultima_conexion = current_date;--añade la condicion de que la fecha sea actual

-- 3
SELECT COUNT(id_usuario)--cuenta los registros de id usuario
FROM 	usuario_grupo
JOIN usuario ON usuario_grupo.id_usuario = usuario.id--comprueba que elcontenido de los campos sea el mismmo
WHERE usuario.tel ='(04) 1125 6978'AND usuario_grupo.id_usuario = usuario.id;--verifica que el que el telefono sea igual al que se espoecifica y que los elcontenido de los campos sea el mismo


-- 4
SELECT mensaje.mensaje, estado.descripcion--lista los mensajes con su descripcion
FROM	mensaje
JOIN estado ON mensaje.id_estado = estado.id;--comprueba que elcontenido de los campos sea el mismmo

-- 5
SELECT mensaje.mensaje, usuario.nick--lista elmensaje y nick
FROM 	mensaje
JOIN usuario ON usuario.tel = '(04) 1125 6978'--comprueba que el telefono sea el mismo
WHERE mensaje.id_usr_from = usuario.id or mensaje.id_usr_to = usuario.id;--verifica los ids de los dos usuarios
		

-- 6
SELECT mensaje.mensaje, usuario.nick, estado.descripcion--lista el mensaje. nick,descripcion
FROM	mensaje
JOIN estado ON estado.id = mensaje.id--comprueba que elid sea el mismo
JOIN usuario ON usuario.tel = '(04) 1125 6978'--comprueba que eltelefono sea el mismo
AND mensaje.id_usr_from = usuario.id --verifica que  los ids sean iguales
AND mensaje.id_usr_to  = usuario.id;--verifica los ids de los dos usuarios
		

-- 7
SELECT mensaje.mensaje--lista mensajes
FROM 	mensaje
JOIN estado ON estado.descripcion = '(04) 1125 6978'--comprueba que el telefono sea el mismo
JOIN usuario ON mensaje.id_usr_from = usuario.id--comprueba que el id  sea el mismo
WHERE mensaje.id_estado = estado.id AND mensaje.fecha_envio < usuario.ultima_conexion;--comprueba los ids y si la fecha de envio es menor a la ultima conexion devuelve el mensaje
