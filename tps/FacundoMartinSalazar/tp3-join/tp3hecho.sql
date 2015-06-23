SELECT usuario.nick, grupo.descripcion FROM usuario --Selecciona el nick de la tabla usuario y la descripcion de la tabla grupo
JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario --Ingresa los datos de la tabla usuario_grupo mientras que el id de usuario sea igual al id de usuario en la tabla usuario_grupo.
JOIN grupo ON usuario_grupo.id_grupo=grupo.id; --Se relacionan los id de grupo de las tablas grupo y usuario_grupo

SELECT usuario.ultima_conexion, grupo.descripcion FROM usuario --Selecciona el campo ultima_conexion de la tabla usuario y la descripcion (campo) de la tabla grupo
JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario --Ingresa los campos seleccionados de la tabla grupo mientras que los id de usuario de las tablas grupo y usuario sean iguales
JOIN grupo ON usuario_grupo.id_grupo=grupo.id --Relaciono los id de grupo de la tabla usuario y la tabla usuario_grupo
WHERE usuario.ultima_conexion=DATE(NOW());--Confirmo que la fecha de la última conexión sea igual a la fecha actual

SELECT  count(grupo.id) as Cantidad  FROM usuario --Marca la cantidad de id de grupo que hay de la tabla usuario
JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario --Relaciono los id de usuario  de la tabla usuario y la tabla usuario_grupo
JOIN grupo ON usuario_grupo.id_grupo=grupo.id --Relaciono el campo id de grupo  de las tablas usuario y usuario_grupo
WHERE usuario.tel='(09) 4864 1216'; --Compara el telefono elegido con el del usuario 

SELECT mensaje.mensaje, estado.descripcion  FROM mensaje --Selecciona el campo mensaje de la tabla mensaje y la descripcion (campo) de la tabla estado
JOIN estado ON mensaje.id_estado=estado.id; --Fuciona la tablas estado y mensaje, y el resultado se encuentra en el campo estado_id de la tabla mensaje

SELECT  usuario.nick , mensaje.mensaje FROM usuario --Selecciona los campos nick (de la tabla usuario) y  mensaje (de la tabla mensaje)
JOIN mensaje ON usuario.id=mensaje.id_usr_from --Combina los campos de las tablas usuario y mensaje, mientas el id de usuario sea igual al id del mensaje
WHERE mensaje.id_usr_from='72' and mensaje.id_usr_to='23';  --Solo muestra en pantalla cuando id_userfrom ses igual a 72 e id_userfrom es igual a 23 

SELECT  usuario.nick ,mensaje.mensaje , estado.descripcion FROM usuario --Selecciona los campos nick (de la tabla usuario) y mensaje (de la tabla mensaje)
JOIN mensaje ON usuario.id=id_usr_from --Relaciona el id de la tabla usuarios con el id de la tabla mensaje 
JOIN estado ON mensaje.id_estado=estado.id --Relaciona el id de la tabla estado con el id de la tabla mensaje 
 WHERE mensaje.id_usr_from='72' and mensaje.id_usr_to='23'; --Solo muestra en pantalla cuando id_userfrom es igual a 72 e id_userfrom es igual a 23

SELECT  usuario.nick, mensaje.mensaje FROM mensaje --Selecciona los campos nick (de la tabla usuario) y  mensaje (de la tabla mensaje) 
JOIN estado ON mensaje.id_estado=estado.id --Relaciona los campos id (de la tabla usuarios) con  id (de la tabla mensaje) 
JOIN usuario ON usuario.id=mensaje.id_usr_from --Conmbina los campos seleccionados la tabla usuario con la tabla seleccionada en el from, mientras el id del mensaje sea igual al id del estado 
WHERE usuario.ultima_conexion > mensaje.fecha_envio; --Verifica si la fecha es mayor a la fecha de envio 
