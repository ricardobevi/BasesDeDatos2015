//1
SELECT usuario.nick, grupo.descripcion FROM usuario //selecciana el nick de la tabla usuario y el campo descripcion de la tabla  grupo
JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario //coloca los datos de la tabla usuario_grupo mientras usuario.id es igual usuario_grupo.id_usuario
JOIN grupo ON usuario_grupo.id_grupo=grupo.id; //relaciono el id de grupo  de la tabla usuario con  la de la tabla usuario_grupo

//2
SELECT usuario.ultima_conexion, grupo.descripcion FROM usuario //selecciona el campo ultimaconexion de la tabla usuario y el campo descripcion de la tabla grupo
JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario //coloca los campos seleccionados en el select de la tabla grupo mientras que usuario.id=usuario_grupo.id_usuario
JOIN grupo ON usuario_grupo.id_grupo=grupo.id //relaciono el id de grupo  de la tabla usuario con  la de la tabla usuario_grupo
WHERE usuario.ultima_conexion=DATE(NOW());//mientras usuario.ultimaconexion sea igual a la fecha actual

//3
SELECT  count(grupo.id) as Cantidad  FROM usuario //selecciona la cantidad de grupo.id que hay de la tabla usuario y lo muestra como cantidad
JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario //relaciono el id de usuario  de la tabla usuario con  la de la tabla usuario_grupo
JOIN grupo ON usuario_grupo.id_grupo=grupo.id //relaciono el campo id de grupo  de la tabla usuario con  la de la tabla usuario_grupo
WHERE usuario.tel='(01) 6149 7603'; //compara si el telefono del usuario que es igual al elejido 

//4
SELECT mensaje.mensaje, estado.descripcion  FROM mensaje //selecciona el campo mensaje de la tabla mensaje y el campo descripcion de la tabla estado
JOIN estado ON mensaje.id_estado=estado.id; //combina la tabla estado con mensaje y converjen ambas en el campo id con estado_id de la tabla mensaje

//5
SELECT  usuario.nick , mensaje.mensaje FROM usuario //selecciona el campo nick de la tabla usuario y el campo mensaje de la tabla mensaje
JOIN mensaje ON usuario.id=mensaje.id_usr_from //combina los campos seleccionados la tabla usuario y mensaje, mientas el usuario.id=mensaje.id_usr_from
WHERE mensaje.id_usr_from='72' and mensaje.id_usr_to='23';  //muestra solo cuando id_userfrom sea igual a 72 e id_userfrom sea igual a 23 

//6
SELECT  usuario.nick ,mensaje.mensaje , estado.descripcion FROM usuario //selecciona el campo nick de la tabla usuario y el campo mensaje de la tabla mensaje
JOIN mensaje ON usuario.id=id_usr_from //relaciona el id de la tabla usuarios con el id de la tabla mensaje 
JOIN estado ON mensaje.id_estado=estado.id //relaciona el id de la tabla estado con el id de la tabla mensaje 
 WHERE mensaje.id_usr_from='72' and mensaje.id_usr_to='23'; //muestra solo cuando id_userfrom sea igual a 72 e id_userfrom sea igual a 23
//7
SELECT  usuario.nick, mensaje.mensaje FROM mensaje //selecciona el campo nick de la tabla y el campo mensaje de la tabla mensaje 
JOIN estado ON mensaje.id_estado=estado.id //relaciona el campo id de la tabla usuarios con el id de la tabla mensaje 
JOIN usuario ON usuario.id=mensaje.id_usr_from //conmbina los campos seleccionados la tabla usuario con la tabla seleccionada en el from, mientras mensaje.id_estado=estado.id
WHERE usuario.ultima_conexion > mensaje.fecha_envio; //verifica si la fecha es mayor a la fecha de envio 
