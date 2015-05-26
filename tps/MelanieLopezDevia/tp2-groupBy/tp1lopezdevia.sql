select * from luchadores;

select nombre from luchadores;

select p1 + p2 + p3 + p4 + p5 as punt_total from luchadores ; 

select p1 + p2 + p3 + p4 + p5  punt_total  from luchadores as
	where categoria in(2,3);


select avg(peso) from luchadores;

select sum(peso) / count (*) from luchadores;

select peso / (altura*altura) from luchadores;

select avg(altura), avg(edad) from luchadores;

select avg(peso), avg(altura) from luchadores
	where sexo = f;

select avg(peso), avg(altura) from luchadores
	where sexo = m;
