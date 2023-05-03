1- Quantas vezes Natalie Portman foi indicada ao Oscar?
select name from movies WHERE name LIKE "%NAtalhie Portman%";

2- Quantos Oscars Natalie Portman ganhou?
select name, winner from movies WHERE name LIKE "%Natalie Portman%" and winner = 1;

3- Amy Adams já ganhou algum Oscar?
select name, winner from movies WHERE name LIKE "%Amy Adams%"

4- A série de filmes Toy Story ganhou um Oscar em quais anos?
select film, winner, year_ceremony from movies where film like "%Toy Story%";

5- Quem tem mais Oscars: a categoria "Melhor Ator" ou "Melhor Filme"?
SELECT film as category, count() as winner
FROM movies
WHERE category LIKE '%FILM%' and winner = 1
UNION
SELECT "actor" as category, count() as winner
FROM movies
WHERE category LIKE '%ACTOR%' and winner = 1;

6- O primeiro Oscar para melhor Atriz foi para quem? Em que ano?
