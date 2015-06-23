SELECT usuario.nick, grupo.descripcion FROM usuario -- en esta linea quiero seleccionar el campo nick de usuarios y descripcion de la tabla grupo 
JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario -- relaciono el id de usuario  de la tabla usuario con  la de la tabla usuario_grupo
JOIN grupo ON usuario_grupo.id_grupo=grupo.id; -- relaciono el id de grupo  de la tabla usuario con  la de la tabla usuario_grupo

SELECT usuario.ultima_conexion, grupo.descripcion FROM usuario -- muestra los compos de ultima conexion de la tabla usuarios y campo descripcion de la tabla grupo
JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario-- relaciono el id de usuario  de la tabla usuario con  la de la tabla usuario_grupo
JOIN grupo ON usuario_grupo.id_grupo=grupo.id --relaciono el id de grupo  de la tabla usuario con  la de la tabla usuario_grupo
WHERE usuario.ultima_conexion=DATE(NOW());--compara la ultima conexion del tipo con el horario actual 

SELECT  count(grupo.id) as Cantidad  FROM usuario -- cuenta la cantidad de ids y muestra la cantidad 
JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario --relaciono el id de usuario  de la tabla usuario con  la de la tabla usuario_grupo
JOIN grupo ON usuario_grupo.id_grupo=grupo.id --relaciono el id de grupo  de la tabla usuario con  la de la tabla usuario_grupo
WHERE usuario.tel='(01) 6149 7603';-- saca el telefono del usuario que sea igual al mostrado 

SELECT mensaje.mensaje,estado.descripcion  FROM mensaje-- toma el campo mensaje de la tabla mensaje y toma el campo descripcion de la tabla  estado 
JOIN estado ON mensaje.id_estado=estado.id;--junta la tabla estado con mensaje y converjen ambas en el campo id con estado_id de la tabla mensaje

SELECT  usuario.nick , mensaje.mensaje FROM usuario-- toma el campo nick de la tala usuarioy toma el campo mensaje de la tabla mensaje 
JOIN mensaje ON usuario.id=mensaje.id_usr_from  --junta la tabla usuario y mensajes. relaciona eñ id de la tabla usuarios con el id de la tabla mensaje 
WHERE mensaje.id_usr_from='72' and mensaje.id_usr_to='23';-- muestra solo los de la id_userfrom = 72 y de la id_userfrom = 23 

SELECT  usuario.nick ,mensaje.mensaje , estado.descripcion FROM usuario-- toma el campo nick de la tabla usuario y toma el campoi mensaje de la tabla mensaje y toma el campo descripcion de la tabla estado
JOIN mensaje ON usuario.id=id_usr_from --relaciona eñ id de la tabla usuarios con el id de la tabla mensaje 
JOIN estado ON mensaje.id_estado=estado.id--relaciona el id de la tabla estado con el id de la tabla mensaje 
 WHERE mensaje.id_usr_from='72' and mensaje.id_usr_to='23';-- muestra solo los de la id_userfrom = 72 y de la id_userfrom = 23 


SELECT  usuario.nick, mensaje.mensaje FROM mensaje-- toma el campo nick de la tabla usuario y toma el campoi mensaje de la tabla mensaje 
JOIN estado ON mensaje.id_estado=estado.id --relaciona eñ id de la tabla usuarios con el id de la tabla mensaje 
JOIN usuario ON usuario.id=mensaje.id_usr_from-- junta la tabla usuario y mensajes. relaciona eñ id de la tabla usuarios con el id de la tabla mensaje
WHERE usuario.ultima_conexion > mensaje.fecha_envio;-- verifica si la fecha es mayor a la fecha de envio 
