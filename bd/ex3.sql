
/*Crie um banco de dados para um serviço de um açougue, o nome do banco deverá ter o seguinte nome db_cidade_das_carnes, 
onde o sistema trabalhará com as informações dos produtos desta empresa. 

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

siga  exatamente esse passo a passo:*/

create database db_cidade_das_carnes;

use db_cidade_das_carnes;

#Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço desse açougue.

create table tb_categoria(
	id_categoria int primary key auto_increment,
    nome_categoria varchar(30),
    estoque boolean
);

/*Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto
 para se trabalhar com o serviço desse açougue(não esqueça de criar a foreign key de tb_categoria nesta tabela).*/

create table tb_produto(
	id_produto int primary key auto_increment,
    nome varchar(30),
    preco decimal(5,2),
    validade date,
    id_categoria int,
    foreign key (id_categoria) references tb_categoria(id_categoria)
    
);

#Popule esta tabela Categoria com até 5 dados.

insert into tb_categoria (nome_categoria,estoque) values
('Bovinos',true),
('Peixaria',true),
('Suínos',true),
('Cordeiros',true),
('Vegano',true);

select*from tb_categoria;
 
#Popule esta tabela Produto com até 8 dados.

insert into tb_produto (nome,preco,validade,id_categoria) values 
('Acém',15.00 ,'2020-10-30',1 ),
('Contra filé',18.00 ,'2020-10-30',1 ),
('Camarão', 30.00,'2020-10-30',2 ),
('Salmão', 22.50,'2020-10-30', 2),
('Lombo',25.00 ,'2020-10-30', 3),
('Bisteca', 30.00,'2020-10-30',3 ),
('Carré',40.00 ,'2020-10-30', 4),
('Veggie burger', 20.00,'2020-10-30',5 );

select*from tb_produto;

#Faça um select que retorne os Produtos com o valor maior do que 50 reais.

select*from tb_produto where preco>50.00;

#Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.

select*from tb_produto where preco>3.00 and preco<60.00;

#Faça um select  utilizando LIKE buscando os Produtos com as letras CO.

select*from tb_produto where nome like '%co%';

#Faça um um select com Inner join entre  tabela categoria e produto.

select*from tb_categoria
inner join tb_produto on tb_categoria.id_categoria = tb_produto.id_categoria;

#Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).

select*from tb_produto where id_categoria=1; 

#salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.