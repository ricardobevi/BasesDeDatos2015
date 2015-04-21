-- Salazar_Medina
SELECT*FROM luchador;
SELECT nombre FROM luchador;
SELECT nombre, P1+P2+P3+P4+P5 as puntaje_total FROM luchador;
SELECT nombre categoria, P1+P2+P3+P4+P5 as puntaje_total FROM luchador where categoria=2 or categoria=3;
SELECT nombre, AVG(peso) as promedio_peso FROM luchador GROUP BY nombre;
SELECT nombre, (SUM(peso)/COUNT(peso)) as prom_peso from luchador GROUP BY nombre;
SELECT nombre, AVG(altura) as prom_alt, AVG(edad) as prom_edad  FROM luchador GROUP BY nombre;
SELECT nombre, peso/(altura*altura) as masa_corporal FROM luchador;
