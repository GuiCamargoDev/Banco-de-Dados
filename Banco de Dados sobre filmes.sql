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
select name, year_ceremony, winner, category from movies where category = "ACTRESS" and winner = "1";

7- Na coluna/campo Winner, altere todos os valores com "True" para 1 e todos os valores "False" para 0.
update movies set winner = 1 where winner = "TRUE";
update movies set winner = 0 where winner = "FALSE";

8- Em qual edição do Oscar "Crash" ganhou o prêmio principal?
select film, year_ceremony, winner from movies where film = "CRASH" and winner = "1";

9- Bom... dê um Oscar para um filme que merece muito, mas não ganhou.
update movies set winner = 1 where film = "In Old Arizona" and winner = "0";

10- O filme Central do Brasil aparece no Oscar?
select film from movies where film like "%Central do Brasil%"; Esse filme não aparece no Oscar

11- Inclua no banco 3 filmes que nunca nem foram nomeados ao Oscar, mas que na sua opinião, merecem. 
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2022', '2023', '94', 'FILM', 'Sam Worthing', 'Avatar 2', 'True');
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2005', '2023', '94', 'FILM', 'Daniel Radcliffe', 'Harry Potter e o Cálice de Fogo', 'True');
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2010', '2023', '94', 'FILM', 'Olivia Wilde', 'Tron - O Legado', 'True');

12- Crie uma nova categoria de premiação. Qualquer prêmio que você queira dar. Agora vamos dar esses prêmios aos filmes que você cadastrou na questão acima.
alter table `movies_data`.`movies` add column `good` varchar(11);


13- Qual foi o primeiro ano a ter um prêmio do Oscar?
select year_ceremony from movies; O Primeiro ano foi 1928

14 - Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?


15- Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras.  Vamos cadastrá-los no nosso banco, mas eles ainda não ganharam o Oscar. Só foram nomeados.


16- Agora vamos falar da sua vida. Me diga o nome de uma pessoa que você admira e o que ela fez na sua vida. Agora me diz: Quê prêmio essa pessoa merece? 

