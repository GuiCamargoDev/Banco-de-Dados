create database IF NOT EXISTS Projetos;
use Projetos;

drop table if exists pastas;

create table pastas(
id_pastas int(11) primary key auto_increment,
`name` varchar (255) not null,
`date_folder` varchar (10) not null
);

INSERT into pastas (`name`, `date_folder`)
values ("Guilherme Camargo", "27/04/2023");

select * from pastas;