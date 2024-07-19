-- Criar o banco de dados
CREATE DATABASE db_pizzaria_legal;

-- Usar o banco de dados
USE db_pizzaria_legal;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT
);

-- Criar a tabela tb_pizzas
CREATE TABLE tb_pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    tamanho VARCHAR(50) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

-- Inserir registros na tabela tb_categorias
INSERT INTO tb_categorias (nome, descricao) VALUES
('Tradicional', 'Pizzas com sabores tradicionais.'),
('Especial', 'Pizzas com ingredientes especiais.'),
('Doce', 'Pizzas doces.'),
('Vegetariana', 'Pizzas sem carne.'),
('Vegana', 'Pizzas sem ingredientes de origem animal.');

-- Inserir registros na tabela tb_pizzas
INSERT INTO tb_pizzas (nome, descricao, preco, tamanho, id_categoria) VALUES
('Margherita', 'Molho de tomate, mussarela e manjericão.', 40.00, 'Média', 1),
('Pepperoni', 'Molho de tomate, mussarela e pepperoni.', 50.00, 'Grande', 1),
('Chocolate', 'Massa de pizza com chocolate derretido.', 45.00, 'Média', 3),
('Quatro Queijos', 'Mussarela, provolone, parmesão e gorgonzola.', 60.00, 'Grande', 2),
('Calabresa', 'Molho de tomate, mussarela e calabresa.', 42.00, 'Média', 1),
('Vegetariana', 'Molho de tomate, mussarela, pimentão, cebola e azeitonas.', 48.00, 'Média', 4),
('Vegana', 'Molho de tomate, queijo vegano, cogumelos, pimentão e azeitonas.', 55.00, 'Grande', 5),
('Romeu e Julieta', 'Massa de pizza com queijo e goiabada.', 47.00, 'Média', 3);

-- SELECT que retorna todas as pizzas cujo valor seja maior do que R$ 45,00
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- SELECT que retorna todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias
SELECT p.*, c.nome AS nome_categoria, c.descricao AS descricao_categoria FROM tb_pizzas p INNER JOIN tb_categorias c ON p.id_categoria = c.id;

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doces)
SELECT p.*, c.nome AS nome_categoria, c.descricao AS descricao_categoria FROM tb_pizzas p INNER JOIN tb_categorias c ON p.id_categoria = c.id WHERE c.nome = 'Doce';
