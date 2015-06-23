-- Trabajo práctico nº3: JOIN
-- Lautaro D'Ercole
-- 1 -Nick de usuario asociado a cada grupo. 
-- 2 -Descripción de grupos que tengan usuarios conectados el día de hoy. 
-- 3 -La cantidad de grupos a los que pertenece un usuario con un telefono dado. 
-- 4 -Listado de los mensajes con sus estados. 
-- 5 -Conversación entre 2 usuarios. 
-- 6 -Igual al punto 5, pero mostrando también los estados. 
-- 7 -Listar los mensajes ignorados por los usuarios.


-- 1
SELECT usuario.nick, grupo.descripcion 
FROM 
		usuario_grupo 
		JOIN usuario ON Usuario.ID = usuario_grupo.id_usuario 
		JOIN grupo ON Grupo.ID = usuario_grupo.id_grupo;

-- 2
SELECT grupo.descripcion FROM usuario_grupo
		JOIN grupo ON usuariogrupo.id_grupo = grupo.id
		JOIN usuario ON usuario_grupo.id_usuario = usuario.id
		WHERE usuario.ultima_conexion = current_date;

-- 3
SELECT COUNT(id_usuario)
FROM 	usuario_grupo
		JOIN usuario ON usuario_grupo.id_usuario = usuario.id
		WHERE usuario.tel = 'telefono'usuario_grupo.id_usuario = usuario.id;
		-- En 'telefono' iría el teléfono del usuario a buscar.

-- 4
SELECT mensaje.mensaje, estado.descripcion
FROM	mensaje
		JOIN estado ON mensaje.id_estado = estado.id;

-- 5
SELECT mensaje.mensaje, usuario.nick
FROM 	mensaje
		JOIN usuario ON usuario.tel = 'telefono'
		WHERE mensaje.id_usr_from = usuario.id or mensaje.id_usr_to = usuario.id;

-- 6
SELECT mensaje.mensaje, usuario.nick, estado.descripcion
FROM	mensaje
		JOIN usuario ON usuario.tel = 'telefono'
		JOIN estado ON estado.id = mensaje.id
		WHERE mensaje.id_usr_from = usuario.id or mensaje.id_usr_to = usuario.id;

-- 7
SELECT mensaje.mensaje
FROM 	mensaje
		JOIN estado ON estado.descripcion = 'Recibido'
		JOIN usuario ON mensaje.id_usr_from = usuario.id
		WHERE mensaje.id_estado = estado.id AND mensaje.fecha_envio < usuario.ultima_conexion;
