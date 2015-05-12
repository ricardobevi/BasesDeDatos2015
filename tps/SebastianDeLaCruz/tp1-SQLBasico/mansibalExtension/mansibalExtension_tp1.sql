--Trabajo Practico Nº 1
--Integrantes:
-- de la Cruz, Sebastian
-- Iovine, Teo
--Ejercicios:
--1º Listar todoslos campos 
--2º Listar solo los nombres de los luchadores
--3º Hallar el puntaje total de cada luchador
--4º Hallar el puntaje total de los luchadores de las categorias 2 y 3
--5º Calcular el peso promedio de los luchadores
--   A:Usando funciones agregadas
--   B:Usando funciones aritmeticas
--6º Calcular altura y edad promedio
--7º Hallar el indice de masa muscular de cada luchador
--8º Calcular el promedio de peso y altura por sexo (2 cosultas)
--Ejercicio 1
SELECT * FROM LUCHADOR;
--Ejercicio 2
SELECT nombre FROM LUCHADOR;
--Ejercicio 3
SELECT nombre, P1+P2+P3+P4+P5 AS PUNTAJE_TOTAL FROM LUCHADOR;
--Ejercicio 4
SELECT nombre, P1+P2+P3+P4+P5 AS PUNTAJETOTAL FROM LUCHADOR WHERE categoria = 2 OR categoria = 3;
--Ejercicio 5
SELECT avg(peso) AS PROMEDIOPESO FROM LUCHADOR;
SELECT sum(peso) / count (peso) AS PROMEDIOPESO FROM LUCHADOR;
--Ejercicio 6
SELECT avg(altura) as Altura_Promedio, avg(edad) as Edad_Promedio FROM LUCHADOR;
--Ejercicio 7
SELECT nombre as nombre, (peso / (altura * altura)) as Indice_MasaM FROM LUCHADOR;
--Ejercicio 8
SELECT avg(peso) as peso_promedio, avg(altura) as Altura_Promedio FROM LUCHADOR WHERE sexo = 'M';
SELECT avg(peso) as peso_promedio, avg(altura) as Altura_Promedio FROM LUCHADOR WHERE sexo = 'F';
