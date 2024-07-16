CREATE DATABASE registro_escolar;
use registro_escolar;

-- Criação da tabela de estudantes
CREATE TABLE estudantes (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    turma VARCHAR(10),
    nota DECIMAL(4, 2),
    data_matricula DATE
);

-- Inserção de dados na tabela de estudantes
INSERT INTO estudantes (id, nome, idade, turma, nota, data_matricula) VALUES
(1, 'Ana Silva', 14, '9A', 8.5, '2021-02-10'),
(2, 'Bruno Santos', 13, '8B', 6.0, '2022-03-15'),
(3, 'Carla Oliveira', 15, '9A', 7.8, '2020-05-20'),
(4, 'Diego Costa', 12, '7C', 5.5, '2023-01-25'),
(5, 'Eduarda Lima', 14, '8B', 9.0, '2019-04-10'),
(6, 'Felipe Gomes', 13, '7C', 4.0, '2022-11-30'),
(7, 'Gabriela Souza', 15, '9A', 6.8, '2020-08-05'),
(8, 'Hugo Ferreira', 12, '7C', 7.2, '2023-06-12');

-- SELECT que retorna todos os estudantes com nota maior do que 7.0
SELECT * FROM estudantes WHERE nota > 7.0;

-- SELECT que retorna todos os estudantes com nota menor do que 7.0
SELECT * FROM estudantes WHERE nota < 7.0;

-- Atualização de um registro na tabela de estudantes
UPDATE estudantes SET nota = 7.5 WHERE id = 2;
