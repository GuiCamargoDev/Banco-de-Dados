use movies_data;

-- select * from movies;

-- select film, winner, year_ceremony from movies where film like "%Toy Story%";

-- select * from movies where category = "ACTOR";

-- LIKE: procurar algo dentro do pedaço do código
-- WHERE: exibir algo de acordo com a condição

-- select category from movies WHERE category LIKE "%Actor%";

-- select ceremony, film, category, winner from movies WHERE film = "Crash" and winner = "1";

-- select name, film, winner from movies WHERE name LIKE "%Gabriel%" and winner = 'True' order by `name` desc ;

-- select count(*) from movies where category like "%FILM%" and winner = "True";

-- UPDATE movies SET winner = 1  WHERE winner = "True";

-- UPDATE: subir uma informação nova 
-- SET: o que eu quero alterar

-- select film, winner from movies where film = "In Old Arizona";

-- update movies set winner = 1 where film = "In Old Arizona" and winner = "0";

-- select film from movies where film like "%Central do Brasil%";

-- select count(*) from movies where category like "%ACTRESS%" and winner = "1";

-- select name, year_ceremony, winner, category from movies where category = "ACTRESS" and winner = "1";

-- select film, year_ceremony, winner from movies where film = "CRASH" and winner = "1";

-- alter table `movies_data`.`movies` add column `good` varchar(11);

update `movies_data`.`movies` set good = "Bom" where `id_movie` = 94;

select * from movies where year_ceremony = "2023";