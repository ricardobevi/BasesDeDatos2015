-- TP3 - Matias Portaluppi

-- 1 - Nick de usuario asociado a cada grupo
SELECT usuario.nick, grupo.descripcion -- Selecciono campo Nick de tabla usuario y el campo descripcion de la tabla grupo
FROM usuario -- La consulta parte de la tabla usuario
JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario -- Une la tabla usuario_grupo con la tabla usuario donde coincide campo id de tabla usuario con campo id_usuario de la tabla usuario_grupo 
JOIN grupo ON usuario_grupo.id_grupo=grupo.id; -- Une la tabla grupo con la tabla usuario donde coincide la tabla id_grupo de la tabla usuario_grupo con campo id de la tabla grupo 

--2 -Descripción de grupos que tengan usuarios conectados el día de hoy
SELECT usuario.ultima_conexion, grupo.descripcion -- Selecciono campo ultima_conexion de tabla usuario y campo descripcion de tabla grupo
FROM usuario -- La consulta parte de la tabla usuario
JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario -- Une la tabla usuario_grupo con la tabla usuario donde coincide campo id de tabla usuario con campo id_usuario de la tabla usuario_grupo 
JOIN grupo ON usuario_grupo.id_grupo=grupo.id -- Une la tabla grupo con la tabla usuario donde coincide la tabla id_grupo de la tabla usuario_grupo con campo id de la tabla grupo 
WHERE usuario.ultima_conexion=DATE(NOW()); -- Donde el campo ultima_conexion de la tabla usuario sea igual al horario actual

--3 - La cantidad de grupos a los que pertenece un usuario con un telefono dado
SELECT count(grupo.id) as Cant  -- Cuenta la cantidad de registros del campo id de la tabla grupo y lo muestra como campo Cant
FROM usuario -- La consulta parte de la tabla usuario
JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario -- Une la tabla usuario_grupo con la tabla usuario donde coincide campo id de tabla usuario con campo id_usuario de la tabla usuario_grupo
JOIN grupo ON usuario_grupo.id_grupo=grupo.id -- Une la tabla grupo con la tabla usuario donde coincide la tabla id_grupo de la tabla usuario_grupo con campo id de la tabla grupo 
WHERE usuario.tel='(01) 6149 7603'; -- Donde el campo tel de la tabla usuario sea igual a '(01) 6149 7603'

--4 - Listado de los mensajes con sus estados
SELECT mensaje.mensaje,estado.descripcion -- Selecciona el campo mensaje de la tabla mensaje y el campo descripcion de la tabla estado  
FROM mensaje -- La consulta parte de la tabla mensaje
JOIN estado ON mensaje.id_estado=estado.id; -- Une la tabla estado con la tabla mensaje donde coincide campo id_estado de tabla mensaje con campo id de la tabla estado

-- 5 - Conversación entre 2 usuarios
SELECT usuario.nick, mensaje.mensaje -- Selecciona el campo nick de tabla usuario y campo mensaje de la tabla mensaje  
FROM usuario -- La consulta parte de la tabla usuario
JOIN mensaje ON usuario.id=mensaje.id_usr_from -- Une tabla mensaje con tabla usuario donde coincide campo id de la tabla usuario con campo id_usr_from de la tabla mensaje
WHERE mensaje.id_usr_from='72' and mensaje.id_usr_to='23'; -- Donde campo id_usr_from de la tabla mensaje es '72' y campo id_usr_to de tabla mensaje es '23'

--6 - IDEM 5, pero mostrando también los estados.
SELECT usuario.nick, mensaje.mensaje, estado.descripcion -- Selecciona campo nick de tabla usuario, campo mensaje de tabla mensaje y campo descripcion de tabla estado 
FROM usuario -- La consulta parte de tabla usuario 
JOIN mensaje ON usuario.id=id_usr_from -- Une tabla mensaje con tabla usuario donde coincide campo id de tabla usuario con campo id_usr_from
JOIN estado ON mensaje.id_estado=estado.id -- Une tabla estado con tabla usuario donde coincide campo id_estado de tabla mensaje con campo id de tabla estado 
WHERE mensaje.id_usr_from='72' and mensaje.id_usr_to='23'; -- Donde campo id_usr_from de tabla mensaje es '72' y campo id_usr_to de tabla mensaje es '23'

--7 - Listar los mensajes ignorados por los usuarios.
SELECT usuario.nick, mensaje.mensaje -- Selecciona campo nick de tabla usuario y campo mensaje de tabla mensaje
FROM mensaje -- La consulta parte de la tabla mensaje
JOIN estado ON mensaje.id_estado=estado.id -- Une tabla estado con tabla mensaje donde coincide campo id_estado de tabla mensaje con campo id de tabla estado
JOIN usuario ON usuario.id=mensaje.id_usr_from -- Une tabla usuario con tabla mensaje donde coincide campo id de tabla usuario con campo id_usr_from de tabla mensaje
WHERE usuario.ultima_conexion > mensaje.fecha_envio; -- Donde campo ultima_conexion de tabla usuario es mayor campo fecha_envio de tabla mensaje
