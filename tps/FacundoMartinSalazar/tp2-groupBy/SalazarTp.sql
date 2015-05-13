SELECT nombrecli, SUM(precio) as Total FROM venta GROUP BY nombrecli; -- 1
SELECT fecha, SUM(precio) FROM venta GROUP BY fecha; -- 2  
SELECT fecha,prod_id, SUM(precio) FROM venta GROUP BY fecha, prod_id; -- 3
SELECT nombrecli, fecha, SUM(cantidad) FROM venta GROUP BY nombrecli, fecha; -- 4
SELECT nombrecli, SUM(cantidad) FROM venta GROUP BY nombrecli; -- 5
