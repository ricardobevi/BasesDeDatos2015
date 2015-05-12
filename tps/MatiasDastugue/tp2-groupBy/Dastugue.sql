 SELECT nombre_cliente ,SUM(precio*cantidad) AS Total FROM VENTA GROUP BY nombre_cliente;

 SELECT  fecha,SUM(precio*cantidad) AS total FROM VENTA GROUP BY fecha;

 SELECT SUM(precio*cantidad) AS total ,fecha,id_producto FROM VENTA GROUP BY fecha,id_producto; 

 SELECT SUM(cantidad) AS Cantidad_Comprada ,nombre_cliente, fecha FROM VENTA GROUP BY nombre_cliente,fecha; 

 SELECT SUM(cantidad) AS Cantidad_Total ,nombre_cliente FROM VENTA GROUP BY nombre_cliente;
