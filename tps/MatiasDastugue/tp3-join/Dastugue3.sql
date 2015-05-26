--1
-- En esta sentencia se seleccionan los nick de los usuarios con su descripcion haciendo un join de la tabla usuario_grupo si el usuario existe en la tabla usuario_grupo y tambien se hace un join de la tabla grupo para obtener la descripcion si el id de usuario_grupo existe en la tabla grupo .
SELECT usuario.nick, grupo.descripcion FROM usuario JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario JOIN grupo ON usuario_grupo.id_grupo=grupo.id; 
--2
-- En esta sentencia se seleccionan las ultimas conexiones de los usuarios y su descripcion haciendo un join de usuario_grupo si el usuario existe en la tabla usuario , ademas hace un join del grupo para obtener la descripcion del mismo.Seran seleccionados los registros donde la ultima conexion del usuario sea igual a la fecha actual.
SELECT usuario.ultima_conexion, grupo.descripcion FROM usuario JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario JOIN grupo ON usuario_grupo.id_grupo=grupo.id WHERE usuario.ultima_conexion=DATE(NOW());
--3
-- En esta sentencia se selecciona la cantidad de grupos bajo un alias (Cantidad) de la tabla usuario haciendo un join de la tabla usuario_grupo y grupo  para comparar los telefonos y se seleccionaran la cantidad de grupos que tengan el telefono '(01) 6149 7603'  
SELECT  count(grupo.id) as Cantidad  FROM usuario JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario JOIN grupo ON usuario_grupo.id_grupo=grupo.id WHERE usuario.tel='(01) 6149 7603';
--4
--En esta sentencia se seleccionan los mensajes con la descripcion del estado , haciendo un join de la tabla estado y la tabla mensaje siempre que se cumpla la clausula ON.
SELECT mensaje.mensaje,estado.descripcion  FROM mensaje JOIN estado ON mensaje.id_estado=estado.id;
--5
-- En esta sentencia se seleccionan los nick de los usuarios y los mensajes entre el usuario emisor(72) y el usuario receptor (23) haciendo un join de la tabla mensaje .
SELECT  usuario.nick , mensaje.mensaje FROM usuario JOIN mensaje ON usuario.id=mensaje.id_usr_from  WHERE mensaje.id_usr_from='72' and mensaje.id_usr_to='23';
--6
-- IDEM 5 con la diferencia que se agrega la descripcion del estado , haciendo un join de la respectiva tabla.
SELECT  usuario.nick ,mensaje.mensaje , estado.descripcion FROM usuario JOIN mensaje ON usuario.id=id_usr_from JOIN estado ON mensaje.id_estado=estado.id WHERE mensaje.id_usr_from='72' and mensaje.id_usr_to='23';
--7
--En esta sentencia se selecciona los nicks de los usuarios y los mensajes haciendo un JOIN de la tabla mensaje, la tabla estado y la tabla usuario donde la ultima conexion del usuario sea mayor a la fecha de envio del mensaje (TE CLAVO EL VISTO).
SELECT  usuario.nick, mensaje.mensaje FROM mensaje JOIN estado ON mensaje.id_estado=estado.id JOIN usuario ON usuario.id=mensaje.id_usr_from WHERE usuario.ultima_conexion > mensaje.fecha_envio; 
