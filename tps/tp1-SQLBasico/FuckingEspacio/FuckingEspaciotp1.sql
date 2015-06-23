-- Ejercicio 1 - Matias Portaluppi
Select * from Luchador;
Select nombre from Luchador;
select p1+p2+p3+p4+p5 as Total_puntos from Luchador;
select p1+p2+p3+p4+p5 as Tot_puntos from Luchador WHERE categoria = 2 or categoria = 3;
select SUM(peso) / count(id) as Prom_peso from Luchador;
select AVG(peso) as Prom_peso from Luchador;
select AVG(altura) as Prom_altura,AVG(edad) as Prom_edad from Luchador;
select peso/(altura*altura) as IMC from Luchador;
select AVG(peso) as Prom_peso,AVG(altura) as Prom_altura from Luchador WHERE sexo = 'M';
select AVG(peso) as Prom_peso, AVG(altura) as Prom_altura from Luchador WHERE sexo = 'F';
