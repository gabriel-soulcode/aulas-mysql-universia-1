CREATE DATABASE aula_06;
USE aula_06;

-- Criação da tabela de funcionários
CREATE TABLE funcionarios (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    cargo VARCHAR(50),
    departamento_id INT,
    supervisor_id INT,
    salario DECIMAL(10, 2)
);

-- Criação da tabela de departamentos
CREATE TABLE departamentos (
    id INT PRIMARY KEY,
    nome VARCHAR(50)
);

-- Criação da tabela de vendas
CREATE TABLE vendas (
    id INT PRIMARY KEY,
    produto_id INT,
    cliente_id INT,
    quantidade INT,
    data DATE
);

-- Criação da tabela de produtos
CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(50)
);

-- Criação da tabela de clientes
CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(50)
);

-- Criação da tabela de cursos
CREATE TABLE cursos (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    professor_id INT
);

-- Criação da tabela de professores
CREATE TABLE professores (
    id INT PRIMARY KEY,
    nome VARCHAR(50)
);

-- Criação da tabela de alunos
CREATE TABLE alunos (
    id INT PRIMARY KEY,
    nome VARCHAR(50)
);

-- Criação da tabela de matrículas
CREATE TABLE matriculas (
    id INT PRIMARY KEY,
    aluno_id INT,
    curso_id INT
);

-- Criação da tabela de pedidos
CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    produto_id INT,
    cliente_id INT,
    quantidade INT,
    data DATE,
    etapa_atual_id INT
);

-- Criação da tabela de projetos
CREATE TABLE projetos (
    id INT PRIMARY KEY,
    nome VARCHAR(50)
);

-- Criação da tabela de membros
CREATE TABLE membros (
    id INT PRIMARY KEY,
    projeto_id INT,
    nome VARCHAR(50)
);

-- Criação da tabela de supervisores
CREATE TABLE supervisores (
    id INT PRIMARY KEY,
    nome VARCHAR(50)
);

-- Criação da tabela de etapas
CREATE TABLE etapas (
    id INT PRIMARY KEY,
    nome VARCHAR(50)
);

-- Inserção de valores fictícios na tabela de departamentos
INSERT INTO departamentos VALUES (1, 'RH');
INSERT INTO departamentos VALUES (2, 'Vendas');

-- Inserção de valores fictícios na tabela de funcionarios
INSERT INTO funcionarios VALUES (1, 'João', 'Analista', 1, 2, 5000.00);
INSERT INTO funcionarios VALUES (2, 'Maria', 'Gerente', 2, 1, 8000.00);

USE aula_06;
-- Inserção de valores fictícios na tabela de vendas
INSERT INTO vendas VALUES (1, 1, 1, 4, '2023-10-12');
INSERT INTO vendas VALUES (2, 1, 2, 2, '2023-11-4');
INSERT INTO vendas VALUES (3, 2, 1, 3, '2023-11-28');
INSERT INTO vendas VALUES (4, 2, 2, 1, '2023-12-7');

-- Inserção de valores fictícios na tabela de produtos
INSERT INTO produtos VALUES (1, 'Monitor');
INSERT INTO produtos VALUES (2, 'Teclado');

-- Inserção de valores fictícios na tabela de clientes
INSERT INTO clientes VALUES (1, 'Lucas');
INSERT INTO clientes VALUES (2, 'Monalisa');
INSERT INTO clientes VALUES (3, 'Paulo');

-- Inserção de valores fictícios na tabela de professores
INSERT INTO professores VALUES (3, 'Cynthia');
INSERT INTO professores VALUES (4, 'Anderson');

-- Inserção de valores fictícios na tabela de cursos
INSERT INTO cursos VALUES (1, 'Curso de SQL', 3);
INSERT INTO cursos VALUES (2, 'Curso de Java', 4);

-- Inserção de valores fictícios na tabela de alunos
INSERT INTO alunos VALUES (1, 'Danilo');
INSERT INTO alunos VALUES (2, 'Rita');

-- Inserção de valores fictícios na tabela de matrículas
INSERT INTO matriculas VALUES (1, 1, 1);
INSERT INTO matriculas VALUES (2, 2, 2);

-- Inserção de valores fictícios na tabela de pedidos
INSERT INTO pedidos VALUES (1, 1, 1, 10, '2023-01-01', 1);
INSERT INTO pedidos VALUES (2, 2, 2, 5, '2023-02-01', 2);

-- Inserção de valores fictícios na tabela de projetos
INSERT INTO projetos VALUES (1, 'Gestão de Tempo');
INSERT INTO projetos VALUES (2, 'Controle de Entrega');

-- Inserção de valores fictícios na tabela de membros
INSERT INTO membros VALUES (1, 1, 'Ryan');
INSERT INTO membros VALUES (2, 2, 'Vitória');

-- Inserção de valores fictícios na tabela de supervisores
INSERT INTO supervisores VALUES (1, 'Alexandre');
INSERT INTO supervisores VALUES (2, 'Raquel');

-- Inserção de valores fictícios na tabela de etapas
INSERT INTO etapas VALUES (1, 'Em andamento');
INSERT INTO etapas VALUES (2, 'Concluído');



-- ATIVIDADE E RESPOSTAS
-- Liste todos os funcionários e seus departamentos.
USE aula_06;
SELECT f.nome, d.nome AS departamento
FROM funcionarios f
JOIN departamentos d ON f.departamento_id = d.id;

-- Recupere informações sobre as vendas, incluindo detalhes do produto e cliente.
USE aula_06;
SELECT v.id, p.nome AS produto, c.nome AS cliente, v.quantidade, v.data
FROM vendas v
JOIN produtos p ON v.produto_id = p.id
JOIN clientes c ON v.cliente_id = c.id;

-- Encontre todos os cursos oferecidos por um professor específico.
USE aula_06;
SELECT c.nome FROM cursos c
JOIN professores p ON c.professor_id = p.id
WHERE p.nome = 'Anderson';

-- Obtenha a lista de alunos matriculados em um determinado curso.
USE aula_06;
SELECT l.nome FROM alunos l
JOIN matriculas m ON l.id = m.aluno_id
JOIN cursos ON m.curso_id = cursos.id
WHERE cursos.nome = 'Curso de SQL';

-- Mostre todas as informações sobre pedidos, incluindo produtos e clientes.
USE aula_06;
SELECT pe.id, pr.nome AS produto, cl.nome AS cliente, pe.quantidade, pe.data
FROM pedidos pe
JOIN produtos pr ON pe.produto_id = pr.id
JOIN clientes cl ON pe.cliente_id = cl.id;

-- Liste todos os projetos e seus membros.
USE aula_06;
SELECT p.nome AS projeto, m.nome AS membro FROM projetos p
JOIN membros m ON p.id = m.projeto_id;

-- Recupere informações sobre funcionários e seus supervisores.
USE aula_06;
SELECT f.nome, f.cargo, s.nome AS supervisor FROM funcionarios f
JOIN supervisores s ON f.supervisor_id = s.id;

-- Encontre os clientes que não fizeram nenhuma compra.
USE aula_06;
SELECT c.nome FROM clientes c
LEFT JOIN vendas v ON c.id = v.cliente_id
WHERE v.id IS NULL;

-- Obtenha a média de salário por departamento.
USE aula_06;
SELECT d.nome, AVG(f.salario) AS media_salario FROM departamentos d
JOIN funcionarios f ON d.id = f.departamento_id GROUP BY d.nome;

-- Liste todos os pedidos e suas etapas atuais.
USE aula_06;
SELECT p.id AS pedido, e.nome AS etapa_atual FROM pedidos p
JOIN etapas e ON p.etapa_atual_id = e.id;
