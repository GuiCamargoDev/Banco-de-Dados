<h1>Oscar</h1>

<h4>Olá, neste repositório se encontra a minha atividade de banco de dados, usei comandos básicos para puxar algumas informações.</h4>
<h5>Acima estão os arquivos de banco que usei para fazer essa atividade</h5>

<h6>1- Quantas vezes Natalie Portman foi indicada ao Oscar?</h6>
select name from movies WHERE name LIKE "%NAtalhie Portman%";

2- Quantos Oscars Natalie Portman ganhou?
select name, winner from movies WHERE name LIKE "%Natalie Portman%" and winner = 1;

3- Amy Adams já ganhou algum Oscar?
select name, winner from movies WHERE name LIKE "%Amy Adams%"

4- A série de filmes Toy Story ganhou um Oscar em quais anos?
select film, winner, year_ceremony from movies WHERE film LIKE "%Toy Story%";

5- Quem tem mais Oscars: a categoria "Melhor Ator" ou "Melhor Filme"?
SELECT "Best Film" as category, count(*) as winner
FROM movies
WHERE category LIKE '%FILM%' and winner = 1
UNION
SELECT "Best Actor" as category, count(*) as winner
FROM movies
WHERE category LIKE '%ACTOR%' and winner = 1;

6- O primeiro Oscar para melhor Atriz foi para quem? Em que ano?
select name, year_ceremony, winner from movies WHERE category LIKE "%ACTRESS%" and winner = 1;

7- Na coluna/campo Winner, altere todos os valores com "True" para 1 e todos os valores "False" para 0.
UPDATE movies SET winner = 1 WHERE winner = "True";
UPDATE movies SET winner = 0 WHERE winner = "False";

8- Em qual edição do Oscar "Crash" ganhou o prêmio principal?
select film, winner, ceremony, category from movies WHERE film = "Crash" and winner = 1;

9- Bom... dê um Oscar para um filme que merece muito, mas não ganhou.
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2016', '2017', '1', 'Best Film', 'null', 'Sausage Party', 'True');

10- O filme Central do Brasil aparece no Oscar?
select * from movies WHERE film = "Central do Brasil";

11- Inclua no banco 3 filmes que nunca nem foram nomeados ao Oscar, mas que na sua opinião, merecem.
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2022', '2023', '94', 'FILM', 'Sam Worthing', 'Avatar: O Caminho Das Água', 'True');
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2005', '2023', '94', 'FILM', 'Daniel Radcliffe', 'Harry Potter e o Cálice de Fogo', 'True');
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2010', '2023', '94', 'FILM', 'Olivia Wilde', 'Tron - O Legado', 'True');

12- Crie uma nova categoria de premiação. Qualquer prêmio que você queira dar. Agora vamos dar esses prêmios aos filmes que você cadastrou na questão acima.
update movies set category = "bom" where category = "FILM";

13- Qual foi o primeiro ano a ter um prêmio do Oscar?
select year_ceremony from movies;

14 - Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?
select film, category, year_ceremony, ceremony from movies where year_ceremony = "2002";  A Beautiful Mind
select * from movies where year_ceremony = "2002" and winner = "TRUE"; Halle Berry
select * from movies where year_ceremony = "2002" and winner = "TRUE"; Ron Howard

15- Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras.  Vamos cadastrá-los no nosso banco, mas eles ainda não ganharam o Oscar. Só foram nomeados.
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2009', '2010', '1', 'ACTOR', 'Jamie Chung', 'Dragonball Evolution', 'False');

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2021', '2021', '1', 'ACTOR', 'Jessica Henwick', 'Matrix Resurrections', 'False');

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2001', '2002', '1', 'ACTOR', 'fatoumata diawara', 'Sia, The Dream of the Python', 'False');

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2003', '2004', '1', 'ACTOR', 'charlize theron Chan', 'Monster - Desejo Assassino', 'False');

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2010', '2011', '1', 'ACTOR', 'Zhao Tao', 'Memorias de Xangai', 'False');

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('1988', '1988', '1', 'ACTOR', 'Dolly Rathebe', 'Mapantsula', 'False');

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2019', '2019', '1', 'ACTOR', 'Jackson Yee', 'Dias Melhores', 'False');

16- Agora vamos falar da sua vida. Me diga o nome de uma pessoa que você admira e o que ela fez na sua vida. Agora me diz: Quê prêmio essa pessoa merece? 
Minha Mãe. Melhor Pessoa
