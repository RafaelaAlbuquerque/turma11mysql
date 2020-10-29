#Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionários desta empresa.

create database rh_db;

#Crie uma tabela de funcionários e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionários para se trabalhar com o serviço deste RH.

use rh_db;

create table funcionarios_tb(
		nome varchar(30),
        sexo enum ('F','M'),
        anoNascimento date,
        cargo varchar(15),
        salario decimal (6,2)
);

#Popule esta tabela com até 5 dados;

insert into funcionarios_tb (nome, sexo, anoNascimento, cargo, salario) values
('Rafaela','F','1999-07-17','dev jr',4500.85),
('Davi','M','1998-06-18','dev jr',4400.85),
('Isabel','F','1997-01-19','estagiario',1200.50),
('Gustavo','M','1995-02-21','assistente',1800.85),
('Barbara','F','1996-03-12','secretaria',2200.40);

#Faça um select que retorne os funcionários com o salário maior do que 2000.

select*from funcionarios_tb where salario>2000;

#Faça um select que retorne os funcionários com o salário menor do que 2000.

select*from funcionarios_tb where salario<2000;

#Ao término atualize um dado desta tabela através de uma query de atualização.

update funcionarios_tb
set nome = 'Maria'
where salario = 1200.50; 

