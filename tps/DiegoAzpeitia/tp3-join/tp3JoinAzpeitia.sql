--Azpeitia Diego TP3

 --1 - Nick de usuario asociado a cada grupo. 
 --2 - Descripción de grupos que tengan usuarios conectados el día de hoy. 
 --3 - La cantidad de grupos a los que pertenece un usuario con un telefono dado. 
 --4 - Listado de los mensajes con sus estados. 
 --5 - Conversación entre 2 usuarios. 
 --6 - Igual al punto 5, pero mostrando también los estados. 
 --7 - Listar los mensajes ignorados por los usuarios.

--1
SELECT U.nick as nick
FROM  usuario_grupo as UG
      JOIN Grupo as G on UG.id_grupo = G.id   
      JOIN  usuario as U on U.id = UG.id_usuario;

--2
SELECT G.descripcion 
FROM usuario_grupo as UG
     JOIN Grupo as G on  G.id = UG.id_grupo
     JOIN Usuario as U on UG.id_usuario = U.id
     where CURRENT_DATE < u.ultima_conexion;

--3
  SELECT count(UG.id_grupo),u.nick
 FROM usuario_grupo as UG 
      Join Grupo as G ON UG.id_grupo = G.id
      join usuario as U on u.id = UG.id_usuario
      group by u.nick;

--4
Select M.mensaje, E.descripcion
  FROM Mensaje as M
       JOIN Estado as E on M.id = E.id;      

--5       
Select M.mensaje, E.descripcion as estado, M.fecha_envio, U.nick as envia 
 FROM Mensaje as M
       JOIN Estado as E on M.id = E.id       
       JOIN usuario as U on U.id = M.id_usr_from;

--6       
SELECT mensaje.mensaje
FROM  mensaje
    JOIN estado ON estado.descripcion = 'Recibido'
    JOIN usuario ON mensaje.id_usr_from = usuario.id
    WHERE mensaje.id_estado = estado.io AND mensaje.fecha_envio < usuario.ultima_conexion;
