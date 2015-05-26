--Imperatori Alejandro
/*
1 - Nick de usuario asociado a cada grupo. 
2 - Descripción de grupos que tengan usuarios conectados el día de hoy.
3 - La cantidad de grupos a los que pertenece un usuario con un telefono dado. 
4 - Listado de los mensajes con sus estados.
5 - Conversación entre 2 usuarios. 
6 - Igual al punto 5, pero mostrando también los estados. 
7 - Listar los mensajes ignorados por los usuarios.
*/

--1
SELECT usuario.nick, grupo.descripcion --selecciono los campos nick de la tabla usuario y descripcion de la tabla grupo, que al estar en tabla no relacionadas entre si necesito hacer un doble join
FROM usuario JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario JOIN grupo ON usuario_grupo.id_grupo=grupo.id;--selecciono de la tabla usuario el nick, hago el join con la tabla usuario_grupo, comparo los campos id de la tabla usuario e id_usuario de usuario_grupo para poder conectar la tabla usuario con la tabla grupo y luego comparo los campos id_grupo de usuario_grupo con el campo id de la tabla grupo
--2
SELECT usuario.ultima_conexion, grupo.descripcion --selecciono los campos ultima conexion(tabla usuario) y descripcion(tabla grupo), que al estar en tabla no relacionadas entre si necesito hacer un doble join
FROM usuario JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario JOIN grupo ON usuario_grupo.id_grupo=grupo.id WHERE usuario.ultima_conexion=DATE(NOW()); --selecciono de la tabla usuario el campo ultima conexion hago el join con el campo id_usuario de la tabla usuario_grupo, relaciono los campos id de la tabla usuario y id_usuario de usuario_grupo y luego hago otro join para relacionar los campos id_grupo y id de grupo para poder mostrar la descripcion del grupo, y agrego un where para comparar la fecha de ultima conexion con la fecha actual
--3
SELECT  count(grupo.id) as Cantidad, usuario.id  FROM usuario JOIN usuario_grupo ON usuario.id=usuario_grupo.id_usuario JOIN grupo ON usuario_grupo.id_grupo=grupo.id WHERE usuario.tel='(01) 6149 7603';--muestro la cantidad de grupos a los que pertenece el telefono dado estaticamente, para esto debo hacer un join de la tabla usuario(campo id) con la tabla usuario_grupo(id_usuario) y luego otro join de esta tabla(campo id_grupo) con la tabla grupo(campo id) y mediante el where busco el telefono 
--4
SELECT mensaje.mensaje,estado.descripcion  FROM mensaje JOIN estado ON mensaje.id_estado=estado.id;--muestro el listado de los mensajes con los estados de estos, para esto debo hacer un join de la tabla mensaje con la tabla estado
--5
SELECT  usuario.nick , mensaje.mensaje FROM usuario JOIN mensaje ON usuario.id=mensaje.id_usr_from  WHERE mensaje.id_usr_from='72' and mensaje.id_usr_to='23';--muestro la conversacion entre 2 usuarios seleccionando los campos id de usuario y mensaje de la tabla mensaje, debo hacer un join para poder seleccionar datos de dos tablas distintas
--6
SELECT  usuario.nick ,mensaje.mensaje , estado.descripcion FROM usuario JOIN mensaje ON usuario.id=id_usr_from JOIN estado ON mensaje.id_estado=estado.id WHERE mensaje.id_usr_from='72' and mensaje.id_usr_to='23';--muestro las conversacion entre 2 usuarios pasados estaticamente ademas mostrando los estados de los mensajes de la conversacioin
--7
SELECT  usuario.nick, mensaje.mensaje FROM mensaje JOIN estado ON mensaje.id_estado=estado.id JOIN usuario ON usuario.id=mensaje.id_usr_from WHERE usuario.ultima_conexion > mensaje.fecha_envio; --selecciono el campo nick de la tabla usuario y mensaje de mensaje, para esto debo hacer un join entre estas tablas con el campo id de usuario y id_usr_from de mensaje, y hago otro join con la tabla estado para seleccinar cuales de estos fueron ignorados para esto comparo el campo ultima_conexion de usuario y hora envio de la tabla mensaje
