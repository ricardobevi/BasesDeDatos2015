--Azpeitia Diego y Gnecco Cristian

select * from luchador;

select nombre from luchador;

select p1+p2+p3+p4+p5 as puntaje_total from luchador;

select p1+p2+p3+p4+p5 as puntaje_p3_p2 from luchador where categoria=2 OR categoria=3  ;

select avg(peso)  as p_promedio_agr from luchador;

select sum(peso)/count(peso) as p_promedio_ari from luchador;

select avg(altura) as p_altura  ,avg(peso) as p_peso from luchador;

select peso/(altura*altura) as masa_corporal from luchador;

select avg(altura) as p_altura  ,avg(peso) as p_peso from luchador where sexo='m';

select avg(altura) as p_altura  ,avg(peso) as p_peso from luchador where sexo='f';
