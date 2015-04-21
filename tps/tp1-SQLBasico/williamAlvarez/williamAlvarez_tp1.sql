-- ALUMNO: William Alvarez
-- 1) Listar todos los campos.
-- 2) Listar solo los nombres de los jugadores.
-- 3) Hallar el puntaje total de cada jugador.
-- 4) Hallar el puntaje total de los jugadores de categoria 2 y 3.
-- 5) Calcular el peso promedio de los jugadores: A) Usando funciones agregadas. B) Usando operaciones aritmeticas.
-- 6) Calcular altura y edad promedio.
-- 7) Hallar el indice de masa corporal de cada jugador.
-- 8) Calcular los promedios de peso y altura por sexo (2 consultas).

--1
SELECT * FROM LUCHADOR;

--2
SELECT NOMBRE FROM LUCHADOR;

--3
SELECT NOMBRE, P1+P2+P3+P4+P5 AS PUNTAJE_TOTAL FROM LUCHADOR;

--4
SELECT NOMBRE, P1+P2+P3+P4+P5 AS PUNTAJE_TOTAL FROM LUCHADOR WHERE CATEGORIA = 3 OR CATEGORIA = 2;

--5
--A
SELECT SUM(PESO)/COUNT(PESO) AS PESO_PROMEDIO FROM LUCHADOR;
--B
SELECT AVG(PESO) AS PESO_PROMEDIO FROM LUCHADOR;

--6
SELECT AVG(ALTURA) AS ALTURA_PROMEDIO, AVG(EDAD) AS EDAD_PROMEDIO FROM LUCHADOR;

--7
SELECT NOMBRE, PESO/(ALTURA*ALTURA) AS IMC FROM LUCHADOR;

--8
SELECT AVG(PESO) AS PESO_PROMEDIO, AVG(ALTURA) AS ALTURA_PROMEDIO FROM LUCHADOR WHERE SEXO = 'M';
SELECT AVG(PESO) AS PESO_PROMEDIO, AVG(ALTURA) AS ALTURA_PROMEDIO FROM LUCHADOR WHERE SEXO = 'F';
