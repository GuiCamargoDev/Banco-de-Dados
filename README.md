<h1>Oscar</h1>

<h4>Olá, neste repositório se encontra a minha atividade de banco de dados, usei comandos básicos para puxar algumas informações.</h4>
<h4>Acima estão os arquivos de banco que usei para fazer essa atividade</h4>

<p>1- Quantas vezes Natalie Portman foi indicada ao Oscar?</p>
<h6>Natalie Portman foi indicada 3 vezes ao Oscar</h6>
<h6>select name from movies WHERE name LIKE "%Natalie Portman%";</h6>

<p>2- Quantos Oscars Natalie Portman ganhou?</p>
<h6>Natalie Portoman ganhou 1 oscar</h6> 
<h6>select name, winner from movies WHERE name LIKE "%Natalie Portman%" and winner = 1;</h6>

<p>3- Amy Adams já ganhou algum Oscar?</p>
<h6>Amy Adams nunca ganhou o Oscar</h6>
<h6>select name, winner from movies WHERE name LIKE "%Amy Adams%"</h6>

<p>4- A série de filmes Toy Story ganhou um Oscar em quais anos?</p>
<h6>A série Toy Story ganhou dois premios em 2011 e um premio em 2020</h6>
<h6>select film, winner, year_ceremony from movies WHERE film LIKE "%Toy Story%" and winner = "TRUE";</h6>

<p>5- Quem tem mais Oscars: a categoria "Melhor Ator" ou "Melhor Filme"?</p>
<h6>A categoria Melhor Filme têm mais Oscar</h6> 
<h6>SELECT "Best Film" as category, count(*) as winner
FROM movies
WHERE category LIKE '%FILM%' and winner = 1
UNION
SELECT "Best Actor" as category, count(*) as winner
FROM movies
WHERE category LIKE '%ACTOR%' and winner = 1;</h6>

<p>6- O primeiro Oscar para melhor Atriz foi para quem? Em que ano?</p>
<h6>O primeiro Oscar de melhor Atriz foi para Janet Gaynor em 1928.</h6>
<h6>select name, year_ceremony, winner from movies WHERE category LIKE "%ACTRESS%" and winner = 1;</h6>

<p>7- Na coluna/campo Winner, altere todos os valores com "True" para 1 e todos os valores "False" para 0.</p>
<h6>Todas as alterações foram feitas no banco de dados.</h6>
<h6>UPDATE movies SET winner = 1 WHERE winner = "True";</h6>
<h6>UPDATE movies SET winner = 0 WHERE winner = "False";</h6>

<p>8- Em qual edição do Oscar "Crash" ganhou o prêmio principal?</p>
<h6>Crash ganhou o prêmio principal na edição 78</h6>
<h6>select film, winner, ceremony, category from movies WHERE film = "Crash" and winner = 1;</h6>

<p>9- Bom... dê um Oscar para um filme que merece muito, mas não ganhou.</p>
<h6>O Oscar foi dado ao filme Sausage Party.</h6>
<h6>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2016', '2017', '1', 'Best Film', 'null', 'Sausage Party', 'True');</h6>

<p>10- O filme Central do Brasil aparece no Oscar?</p>
<h6>O filme Central do Brasil não apareceu no Oscar</h6>
<h6>select * from movies WHERE film = "Central do Brasil";</h6>

<p>11- Inclua no banco 3 filmes que nunca nem foram nomeados ao Oscar, mas que na sua opinião, merecem.</p>
<h6>Os 3 filmes incluídos foram: Avatar: O Caminho Das Águas, Harry Potter e o Cálice de Fogo e Tron - O Legado.</h6>
<h6>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2022', '2023', '94', 'FILM', 'Sam Worthing', 'Avatar: O Caminho Das Águas', 'True');</h6>
<h6>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2005', '2023', '94', 'FILM', 'Daniel Radcliffe', 'Harry Potter e o Cálice de Fogo', 'True');</h6>
<h6>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2010', '2023', '94', 'FILM', 'Olivia Wilde', 'Tron - O Legado', 'True');</h6>

<p>12- Crie uma nova categoria de premiação. Qualquer prêmio que você queira dar. Agora vamos dar esses prêmios aos filmes que você cadastrou na questão acima.<p>
<h6>Foi adicionada a categoria "bom" para esses filmes</h6>
<h6>update movies set category = "bom" where category = "FILM";</h6>

<p>13- Qual foi o primeiro ano a ter um prêmio do Oscar?</p>
<h6>O primeiro ano a ter um prêmio do Oscar foi 1928</h6>
<h6>select year_ceremony from movies;</h6>

<p>14 - Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?</p>
<h6>O meu ano de nascimento é 2002, assim, o Oscar de Melhor filme foi para "A Beautiful Mind", o de Melhor Atriz foi para "Halle Berry" e o de Melhor Diretor para "Ron Howard"</h6>
<h6>select film, category, year_ceremony, ceremony from movies where year_ceremony = "2002";</h6>
<h6>select * from movies where year_ceremony = "2002" and winner = "TRUE";</h6>
<h6>select * from movies where year_ceremony = "2002" and winner = "TRUE";</h6>

<p>15- Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras.  Vamos cadastrá-los no nosso banco, mas eles ainda não ganharam o Oscar. Só foram nomeados.</p>
<h6>As 7 Atrizes foram: Jamie Chung, Jessica Henwick, fatoumata diawara, charlize theron Chan, Zhao Tao, Dolly Rathebe e Jackson Yee.</h6>
<h6>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2009', '2010', '1', 'ACTOR', 'Jamie Chung', 'Dragonball Evolution', 'False');</h6>
<h6>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2021', '2021', '1', 'ACTOR', 'Jessica Henwick', 'Matrix Resurrections', 'False');</h6>
<h6>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2001', '2002', '1', 'ACTOR', 'fatoumata diawara', 'Sia, The Dream of the Python', 'False');</h6>
<h6>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2003', '2004', '1', 'ACTOR', 'charlize theron Chan', 'Monster - Desejo Assassino', 'False');</h6>
<h6>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2010', '2011', '1', 'ACTOR', 'Zhao Tao', 'Memorias de Xangai', 'False');</h6>
<h6>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('1988', '1988', '1', 'ACTOR', 'Dolly Rathebe', 'Mapantsula', 'False');</h6>
<h6>INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2019', '2019', '1', 'ACTOR', 'Jackson Yee', 'Dias Melhores', 'False');</h6>

<p>16- Agora vamos falar da sua vida. Me diga o nome de uma pessoa que você admira e o que ela fez na sua vida. Agora me diz: Quê prêmio essa pessoa merece?</p> 
<h6> Eu admiro muito a Minha Mãe, ela me deu a vida e cuida de mim até hoje, sou muito grato por isso. Ela merece o prêmio de Melhor Pessoa</p>
