-- Create database -- DDL

CREATE DATABASE db_quintanda;
use db_quintanda;

-- DROP DATABASE db_quintandas;


-- Criando nossa primeira Tabela --
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
validade DATE,
preco DECIMAL  NOT NULL,
 PRIMARY KEY(id)
);

-- -------DML--------------

describe tb_produtos;

-- Inserindo dados na Tabela --
insert into tb_produtos (nome, quantidade,validade,preco) values 
("tomate", 100, "2023-12-15",8.00);
INSERT INTO tb_produtos(nome, quantidade, validade, preco) 
VALUES ("maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, validade, preco) 
VALUES ("laranja",50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, validade, preco) 
VALUES ("banana",200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, validade, preco) 
VALUES ("uva",1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos(nome, quantidade, validade, preco) 
VALUES ("pêra",500, "2023-12-15", 2.99);

-- Selecionando dados da Tabela --

select * from tb_produtos;

select nome, preco from tb_produtos;

select * from tb_produtos where  id in (2,4);

-- Selecionando dados com os Operadores Relacionais -- 

select * from tb_produtos where preco = 5.00;

-- Selecionando dados com os Operadores Lógicos --

select * from tb_produtos where preco > 5 and quantidade < 100; 

alter table tb_produtos  modify preco decimal(6,3); 

-- -------------------------------------------

select * from tb_produtos;

SET SQL_SAFE_UPDATES = 1;

update tb_produtos set  preco = 5.99 where id = 1;

delete from tb_produtos where id in (1,3);

-- --------------- DDL-------------------------------

describe tb_produtos;

alter table tb_produtos add descricao varchar(255);

alter table tb_produtos drop descricao;

alter table tb_produtos change nomeproduto nome_produto varchar(255);