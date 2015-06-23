-- Integrantes:
-- Matias de Leon
-- Alejo Galvez
-- Consignas:
-- 1) Listar todos los campos
-- 2) Listar solo los nombres de los jugadores
-- 3) Hallar el puntaje total de cada jugador
-- 4) Hallar el puntaje total de los jugadores de las categorias 2 y 3
-- 5) Calcular el peso promedio de los jugadores:
-- a) Usando funciones agregadas
-- b) Usando operaciones aritmeticas
-- 6) Calcular altura y peso promedio 
-- 7) Hallar el indice de masa corporal de cada jugador
-- 8) Calcular los promedios de peso y de altura por sexo (2 consultas)




-- 1 
SELECT * FROM LUCHADOR;
-- 2
SELECT NOMBRE FROM LUCHADOR;
-- 3
SELECT NOMBRE, P1+P2+P3+P4+P5 AS PUNTAJE FROM LUCHADOR;
-- 4
SELECT NOMBRE, P1+P2+P3+P4+P5 AS PUNTAJE FROM LUCHADOR WHERE CATEGORIA=2 OR CATEGORIA=3;
-- 5.a
SELECT AVG(PESO) AS PESO_PROMEDIO FROM LUCHADOR;
-- 5.b
SELECT SUM(PESO) / COUNT(PESO) AS PESO_PROMEDIO FROM LUCHADOR;
-- 6		
SELECT AVG(ALTURA) AS ALTURA_PROM, AVG(EDAD) AS EDAD_PROM FROM LUCHADOR;
-- 7
SELECT NOMBRE, PESO / (ALTURA * ALTURA) AS MASA_CORPORAL FROM LUCHADOR;
-- 8
SELECT AVG(PESO) AS PESO_PROM, AVG(ALTURA) AS ALTURA_PROM FROM LUCHADOR WHERE SEXO= 'M';
-- 8
SELECT AVG(PESO) AS PESO_PROM, AVG(ALTURA) AS ALTURA_PROM FROM LUCHADOR WHERE SEXO= 'F';
 
