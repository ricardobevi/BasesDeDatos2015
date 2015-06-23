-- 1
SELECT usuario.nick, grupo.descripcion 
FROM 
		usuario_grupo 
		JOIN usuario ON Usuario.ID = usuario_grupo.id_usuario 
		JOIN grupo ON Grupo.ID = usuario_grupo.id_grupo;
		
--Con el comando select seleccionamos que datos vamos a sacar de la tabla usuario_grupo y con el JOIN relacionamos las claves foraneas usuario.id y grupo.id a la tabla usuario_grupo.
-- 2
SELECT grupo.descripcion FROM usuario_grupo
		JOIN grupo ON usuariogrupo.id_grupo = grupo.id
		JOIN usuario ON usuario_grupo.id_usuario = usuario.id
		WHERE usuario.ultima_conexion = current_date;
--Selecciona el campo descripcion de la tabla grupo, el JOIN toma la tabla la tabla grupo y la une con la tabla usuario_grupo donde el campo id_grupo de la tabla usuario_grupo sea igual al campo id de la tabla grupo. El otro JOIN hace lo mismo pero con el id de la tabla usuario y el de la tabla usuario_grupo. El WHERE pone la condicion de que solos e muestre los que tengan como ultima conexion la fecha actual
-- 3
SELECT COUNT(id_usuario)
FROM 	usuario_grupo
		JOIN usuario ON usuario_grupo.id_usuario = usuario.id
		WHERE usuario.tel = 'telefono'usuario_grupo.id_usuario = usuario.id;
		-- En 'telefono' va el teléfono del usuario a buscar.
		
--Con el COUNT cuenta la cantidad de registros (id_usuario) de la tabla usuario_grupo. El JOIN toma la tabla la tabla usuario y la une con la tabla usuario_grupo donde el campo id_usuario de la tabla usuario_grupo sea igual al campo id de la tabla usuario. El WHERE hace que solo muestre los usuario con el numero de telefono determinado.
-- 4
SELECT mensaje.mensaje, estado.descripcion
FROM	mensaje
		JOIN estado ON mensaje.id_estado = estado.id;
--Selecciona el campo mensaje de la tabla mensaje y el campo descripcion de la tabla estado. Esta vista proviene de la tabla mensaje. El JOIN toma la tabla estado y la une con la tabla mensaje donde el campo id_estado sea igual al campo id de la tabla estado.
-- 5
SELECT mensaje.mensaje, usuario.nick
FROM 	mensaje
		JOIN usuario ON  mensaje.id_usr_from = usuario.id or mensaje.id_usr_to = usuario.id
		WHERE usuario.tel = 'telefono';
		-- En 'telefono' va el teléfono del usuario a buscar.
--Seleciona el campo mensaje de la tabla mensaje y el campo nick de la tabla usuario. Esta vista proviene de la tabla mensaje. El JOIN une la tabla usuario y la une con tabla mensaje donde el campo id_usr_from sea igual al campo id de la tabla usuario O donde el campo id_usr_to sea igual al campo id de la tabla usuario.
-- 6
SELECT mensaje.mensaje, usuario.nick, estado.descripcion
FROM	mensaje
		JOIN usuario ON  mensaje.id_usr_from = usuario.id or mensaje.id_usr_to = usuario.id
		JOIN estado ON estado.id = mensaje.id 
		WHERE usuario.tel = 'telefono';
		-- En 'telefono' iría el teléfono del usuario a buscar.
		
-- Seleciona el campo mensaje de la tabla mensaje, el campo nick de la tabla usuario y el campo descripcion de la tabla estado. Esta vista proviene a raiz de la tabla mensaje. El JOIN toma la tabla usuario y la une con la tabla mensaje donde el campo id_usr_from sea igual al campo id de la tabla usuario O donde el campo id_usr_to sea igual al campo id de la tabla usuario. El otro JOIN une la tabla estado con la tabla mensaje donde el id de la tabla estado sea igual al id de la tabla mensaje. El WHERE hace que se realice sólo con el numero de telefono indicado.

-- 7
SELECT mensaje.mensaje
FROM 	mensaje
		JOIN estado ON mensaje.id_estado = estado.id
		JOIN usuario ON mensaje.id_usr_from = usuario.id
		WHERE estado.descripcion = 'Recibido' AND mensaje.fecha_envio < usuario.ultima_conexion;
-- Selecciona el campo mensaje de la tabla mensaje. Esta vista es a raiz de la tabla mensaje. El join une la tabla estado con la tabla mensaje donde el id de la tabla estado coincida con el id_estado de la tabla mensaje. El otro JOIN une la tabla usuario con la tabla mensaje donde el id de la tabla usuario coincida con el id_usr_from de la tabla mensaje. El WHERE hace que solo se muestren los mensajes con el estado.descripcion 'Recibido' Y la fecha de encio sea menor a la de la última conexion
