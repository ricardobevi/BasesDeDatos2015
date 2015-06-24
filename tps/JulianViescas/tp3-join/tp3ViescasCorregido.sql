--JulianViescas--
--1
Select usuario.nick, grupo.id --selecciono el nick de la tabla usuario y el id de la tabla grupo
from usuario_grupo join usuario on usuario.id = usuario_grupo.id_usuario --joineo el id de la tabla usuario con el id_usuario de la tabla usuario_grupo
                   join grupo on grupo.id = usuario_grupo.id_grupo; --lo mismo pero con grupo.id y usuario_grupo.id_grupo

--2
select grupo.descripcion --selecciono descripcion de grupo
from usuario_grupo join usuario on usuario.id = usuario_grupo.id_usuario --joineo el id de la tabla usuario con el id_usuario de la tabla usuario_grupo
                   join grupo on grupo.id = usuario_grupo.id_grupo --lo mismo pero con grupo.id y usuario_grupo.id_grupo
where ultima_conexion = current_date; -- Cuando la ultima conexion sea igual a la fecha actual

--3
Select usuario.tel, usuario.nick, COUNT(grupo.id)--selecciono tel y nick de la tabla usuario, y pongo un contador para que cuente los grupos 
from usuario_grupo join usuario on usuario.id = usuario_grupo.id_usuario --joineo el id de la tabla usuario con el id_usuario de la tabla usuario_grupo
                   join grupo on grupo.id = usuario_grupo.id_grupo --lo mismo pero con grupo.id y usuario_grupo.id_grupo
where usuario.tel = '(09) 6970 3098' -- Cuando el telefono sea (09) 6970 309
group by usuario.tel, usuario.nick; --ordenar la tabla por el telefono y el nick

--4
SELECT  mensaje.mensaje, estado.descripcion --selecciono mensaje de la tabla mensaje y descripcion de la tabla estado
from mensaje join estado on mensaje.id = estado.id; --joineo mensaje.id con estado.id

--5
select mensaje.mensaje, usuario.nick --selecciono mensaje de la tabla mensaje y nick de la tabla usuario
from mensaje join usuario on mensaje.id_usr_from = usuario.id --joineo mensaje.id_usr_from con usuario.id
where mensaje.id_usr_from = '72' or mensaje.id_usr_from = '79'; --cuando el id del usuario sea 72 o 79

--6
select mensaje.mensaje, usuario.nick, estado.descripcion --selecciono mensaje de la tabla mensaje, el nick de la tabla usuario y la descripcion de la tabla estado
from mensaje join usuario on mensaje.id_usr_from = usuario.id --joineo mensaje.id_usr_from con usuario.id
             join estado on mensaje.id = estado.id --joineo mensaje.id con estado.id
where mensaje.id_usr_from = '72' or mensaje.id_usr_from = '79'; --cuando el id del usuario sea 72 o 79

--7
select mensaje.mensaje, usuario.nick, estado.descripcion --selecciono mensaje de la tabla mensaje, el nick de la tabla usuario y la descripcion de la tabla estado
from mensaje join usuario on mensaje.id_usr_from = usuario.id --joineo mensaje.id_usr_from con usuario.id
             join estado on mensaje.id = estado.id --joineo mensaje.id con estado.id
where estado.descripcion = 'Enviado' or estado.descripcion = 'Recibido'; -- cuando el etado del mensaje sea enviado o recibido, no leido
