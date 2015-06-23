-- TP3 
-- ALUMNO: William Alvarez


-- 1 Nick de usuario asociado a cada grupo.
SELECT usuario.nick, grupo.descripcion FROM usuario 
JOIN usuario_grupo 
ON usuario.id=usuario_grupo.id_usuario 
JOIN grupo 
ON usuario_grupo.id_grupo=grupo.id; 

-- 2 Descripciones de grupos que tengan usuarios conectados el dia de hoy.
SELECT usuario.ultima_conexion, grupo.descripcion FROM usuario 
JOIN usuario_grupo 
ON usuario.id=usuario_grupo.id_usuario 
JOIN grupo 
ON usuario_grupo.id_grupo=grupo.id 
WHERE usuario.ultima_conexion=currentdate();

-- 3 La cantidad de grupos a los que pertenece un usuario con un telefono dado.
SELECT count(grupo.id) FROM usuario 
JOIN usuario_grupo 
ON usuario.id=usuario_grupo.id_usuario 
JOIN grupo 
ON usuario_grupo.id_grupo=grupo.id 
WHERE usuario.tel='numero';
    
-- 4 Listado de los mensajes con sus estados.
SELECT mensaje.mensaje,estado.descripcion FROM mensaje 
JOIN estado 
ON mensaje.id_estado=estado.id;

-- 5 Conversacion entre dos usuarios.
SELECT usuario.nick , mensaje.mensaje FROM usuario 
JOIN mensaje 
ON usuario.id=mensaje.id_usr_from  
WHERE mensaje.id_usr_from='8' and mensaje.id_usr_to='3';

-- 6 Conversacion entre dos usuarios con sus estados.
SELECT usuario.nick , mensaje.mensaje, estado.descripcion FROM usuario 
JOIN mensaje 
ON usuario.id=id_usr_from 
JOIN estado 
ON mensaje.id_estado=estado.id 
WHERE mensaje.id_usr_from='5' and mensaje.id_usr_to='2';

-- 7 Listar los mensajes ignorados por los usuarios.
SELECT usuario.nick, mensaje.mensaje FROM mensaje 
JOIN estado 
ON mensaje.id_estado=estado.id 
JOIN usuario 
ON usuario.id=mensaje.id_usr_from 
WHERE usuario.ultima_conexion > mensaje.fecha_envio; 
