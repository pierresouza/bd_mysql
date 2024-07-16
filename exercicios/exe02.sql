create database e_commerce;

use e_commerce;

-- Criação da tabela de produtos
create table produtos (
    id int primary key,
    nome varchar(100),
    descricao text,
    preco decimal(10, 2),
    quantidade int,
    categoria varchar(50)
);

-- Inserção de dados na tabela de produtos
insert into produtos (id, nome, descricao, preco, quantidade, categoria) value
(1, 'notebook', 'Notebook Dell Inspiron', 3500.00, 10, 'informática'),
(2, 'smartphone', 'Samsung Galaxy Y', 300.00, 5, 'Eletrônicos'),
(3, 'Geladeira', 'Geladeira Brastemp Frost Free', 2200.00, 2, 'eletrodomésticos'),
(4, 'fogão', 'Fogão 4 Bocas Electrolux', 1200.00, 3, 'eletrodomésticos'),
(5, 'Televisão', 'Smart TV Samsung 50"', 3200.00, 4, 'eletrônicos');

select * from produtos;

-- SELECT que retorna todos os produtos com valor maior do que 500
select * from produtos where preco > 500;

-- SELECt que retorna todos os produtos com valor menor do que 500
select * from produtos where preco < 500;

-- Atualização de um registro na tabela de produtos
update produtos set preco = 2000.00 where id = 3;
