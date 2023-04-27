-- Exemplo de como criar um banco
/*Exemplo*/
-- varchar: caracter variavel
-- int: numero inteiro
-- use crase quando ficar em azul, NAME ficou em azul pois é um comando do SQL

-- -> PRIMARY KEY único é obrigatorio
-- not null (Não vazio/item Obrigatório)
-- unique (Item unico)
-- default (Se o campo estiver vazio ele preencherá automaticamente com o valor informado ao lado)

-- CREATE database filmes;

create database IF NOT EXISTS filmes;

use filmes;

-- drop table IF EXISTS obras; -- APAGAR A TABELA SE ELA EXISTIR

create table if not exists obras(
id_obras int(11) primary key auto_increment,
`film` varchar(255) not null,
`name` varchar(255) unique,
`award` varchar(255) not null,
year_film int(4) default 2058
);

insert into obras (`film`, `name`, `award`, year_film)
values ("PROA", "Guilherme Camargo", "Melhor Pessoa", 2023);

-- ( * ) server para selecionar todos os elementos

select * from obras;