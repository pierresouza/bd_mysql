create database rh_system;
use rh_system;

-- Criação da tabela de colaboradores
CREATE TABLE tb_colaboradores (
    id INT PRIMARY KEY auto_increment,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    departamento VARCHAR(50),
    salario DECIMAL(10, 2),
    data_contratacao DATE
);

INSERT INTO tb_colaboradores (id, nome, cargo, departamento, salario, data_contratacao) VALUES
(1, 'João Silva', 'Analista de RH', 'Recursos Humanos', 2500.00, '2022-03-01'),
(2, 'Maria Oliveira', 'Recrutador', 'Recursos Humanos', 1800.00, '2021-05-15'),
(3, 'Pedro Santos', 'Coordenador de Treinamento', 'Treinamento e Desenvolvimento', 3200.00, '2020-09-30'),
(4, 'Ana Costa', 'Assistente de RH', 'Administração de Pessoal', 1500.00, '2019-11-20'),
(5, 'Carlos Lima', 'Especialista em Benefícios', 'Gestão de Benefícios', 2900.00, '2018-07-10');

-- Busca todos os colaboradores que o salário é maior de 2000
select * from tb_colaboradores where salario > 2000;

-- Busca todos os colaboradores que o salário é menor que 2000
select * from tb_colaboradores where salario < 2000;

-- Busca todos os colaboradores
select * from tb_colaboradores;

-- atualiza o salario do colaborador que o id correspondente é 5
update tb_colaboradores set salario = 1900.00 where id = 5