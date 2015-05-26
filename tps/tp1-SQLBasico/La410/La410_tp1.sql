--TP 1: Luchadores
--Alumnos: Imperatori, Ruscitto
--1
SELECT * 
FROM luchador;
--2
SELECT nombre 
FROM luchador;
--3
SELECT p1+p2+p3+p4+p5 AS total
FROM luchador;
--4
SELECT p1+p2+p3+p4+p5 AS total
FROM luchador
WHERE categoria = 2 OR categoria = 3;
--5
SELECT AVG(peso) AS PesoPromedio 
FROM luchador;

SELECT SUM(peso) / COUNT(peso) AS PesoPromedio	
FROM luchador;
--6
SELECT AVG(altura) As AlturaPromedio
FROM luchador;

SELECT AVG(Edad) AS EdadPromedio
FROM luchador;
--7
SELECT peso/altura*altura AS IndiceMasaCorporal
FROM luchador;
--8
SELECT AVG(peso) AS PesoPromedio, Avg(altura) AS AlturaPromedio 
FROM luchador
WHERE sexo = 'M';
SELECT AVG(peso) AS PesoPromedio, Avg(altura) AS AlturaPromedio 
FROM luchador
WHERE sexo = 'F';
