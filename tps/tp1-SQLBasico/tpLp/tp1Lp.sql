-- TP1: ARIAS, RAMIREZ 7C
-- 1
SELECT * FROM Luchador
-- 2
SELECT Nombre FROM Luchador
-- 3
SELECT Nombre, (p1 + p2 + p3 + p4 + p5) AS t_luchador FROM Luchador
-- 4
SELECT Nombre, (p1 + p2 + p3 + p4 + p5) AS t_cats2_3 FROM Luchador WHERE categoria=2 OR categoria = 3
-- 5a
SELECT AVG (peso) AS prom_peso FROM Luchador
-- 5b
SELECT SUM (peso) / COUNT (peso) AS prom_peso2 FROM Luchador
-- 6
SELECT AVG (altura) AS prom_alt , AVG (edad) AS prom_edad  FROM Luchador
-- 7
SELECT Nombre, (peso/(altura*altura)) AS imc FROM Luchador
-- 8a
SELECT AVG(altura) AS promalturam, AVG(peso) AS prompesom FROM luchador where sexo='M'
-- 8b
SELECT AVG(altura) AS promalturam, AVG(peso) AS prompesom FROM luchador where sexo='F'
