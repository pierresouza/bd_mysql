-- Criar o banco de dados
CREATE DATABASE db_generation_game_online;

-- Usar o banco de dados
USE db_generation_game_online;

-- Criar a tabela tb_classes
CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT
);

-- Criar a tabela tb_personagens
CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    nivel INT NOT NULL,
    id_classe INT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

-- Inserir registros na tabela tb_classes
INSERT INTO tb_classes (nome, descricao) VALUES
('Guerreiro', 'Especialista em combate corpo a corpo, com alta resistência.'),
('Arqueiro', 'Especialista em ataques à distância, com alta precisão.'),
('Mago', 'Especialista em magias, com alta inteligência.'),
('Assassino', 'Especialista em ataques furtivos, com alta agilidade.'),
('Paladino', 'Guerreiro sagrado, com habilidades de cura.');

-- Inserir registros na tabela tb_personagens
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, id_classe) VALUES
('Arthur', 2500, 1500, 10, 1),
('Legolas', 1800, 800, 12, 2),
('Merlin', 2200, 700, 15, 3),
('Altair', 2300, 1100, 13, 4),
('Lancelot', 2100, 1800, 11, 1),
('Robin', 1900, 900, 14, 2),
('Gandalf', 2400, 1200, 16, 3),
('Ezio', 2600, 1300, 17, 4);

-- SELECT que retorna todos os personagens cujo poder de ataque seja maior do que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- SELECT que retorna todos os personagens cujo poder de defesa esteja no intervalo 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- SELECT utilizando o operador LIKE, buscando todos os personagens que possuam a letra C no atributo nome
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes
SELECT p.*, c.nome AS nome_classe, c.descricao AS descricao_classe FROM tb_personagens p INNER JOIN tb_classes c ON p.id_classe = c.id;

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens cos dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros)
SELECT p.*, c.nome AS nome_classe, c.descricao FROM tb_personagens p INNER JOIN tb_classes c ON p.id_classe = c.id WHERE c.nome = 'Arqueiro';
