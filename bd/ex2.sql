/* Crie um banco de dados para um serviço de RH de uma empresa, o nome do banco deverá ter o seguinte nome db_RH2, onde o sistema trabalhará com as informações dos
funcionários desta empresa*/

create database db_RH2;
use db_RH2;
/* O sistema trabalhará com 2 tabelas tb_funcionário e tb_cargo.

 Crie uma tabela tb_cargo utilizando a habilidade de abstração e determine 3 atributos
relevantes do Cargos para se trabalhar com o serviço deste RH. */

create table tb_cargo(
	id_cargo int not null auto_increment,
    nome_cargo varchar(30),
    setor varchar(30),
	primary key (id_cargo)
);
/* Crie uma tabela tb_funcionário e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionários para se trabalhar com o serviço deste RH (não
esqueça de criar a foreign key de tb_cargo nesta tabela)*/

create table tb_funcionario(
	id_funcionario int auto_increment primary key,
    nome varchar(30),
    nascimento date,
    sexo enum ('F','M'),
    salario decimal(7,2),
    id_cargo int,
    constraint fk_tb_cargo foreign key (id_cargo) references tb_cargo (id_cargo)
);

#Popule esta tabela cargos com até 5 dados.

insert into tb_cargo (nome_cargo,setor) values 
('Recrutador','RH'),
('Auxiliar admnistrativo','Administração'),
('Contador','Finanças'),
('Publicitário','Marketing'),
('Operador Telemarketing','Vendas');

select*from tb_cargo;

#Popule esta tabela funcionarios com até 15 dados.
insert into tb_funcionario (nome, nascimento, sexo, salario, id_cargo) values 
('Carla','1980-08-15','F',2200.75,1),
('Daniel','1981-09-14','M',1500.25,2),
('Davi','1982-07-10','M',2200.75,1),
('Beatriz','1983-05-01','F',1500.25,2),
('Maria','1984-02-03','F',2200.75,1),
('Valentina','1985-01-12','F',2600.80,3),
('Enzo','1986-01-09','M',1500.25,2),
('Gustavo','1987-02-16','M',2600.80,3),
('Renato','1988-03-20','M',2600.80,3),
('Andressa','1989-07-13','F',998.00,5),
('Carlos','1990-09-22','M',998.00,5),
('Amanda','1991-06-27','F',998.00,5),
('Arnaldo','1992-05-30','M',1700.30,4),
('Cristiano','1993-04-06','M',1700.30,4),
('Lucas','1994-03-07','M',1700.30,4);

select*from tb_funcionario;

#Faça um select que retorne os funcionários com o salário maior do que 2000.

select*from tb_funcionario where salario>2000;

#Faça um select trazendo os funcionários com salário entre 1000 e 2000.

select*from tb_funcionario where salario>1000 and salario<2000;

#Faça um select utilizando LIKE buscando os Funcionários com a letra C

select*from tb_funcionario where nome like '%C%';

SELECT * FROM tb_cargo
INNER JOIN tb_funcionario ON tb_cargo.id_cargo = tb_funcionario.id_cargo;

