CREATE DATABASE empresa;
USE empresa;

CREATE TABLE funcionario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    departamento VARCHAR(50),
    data_nascimento DATE,
    email VARCHAR(100),
    vendas INT
);

INSERT INTO funcionario (nome, departamento, data_nascimento, email, vendas) VALUES
    ('João Silva', 'Vendas', '1990-05-15', 'joao.silva@email.com', 12),
    ('Maria Oliveira', 'RH', '1985-08-22', 'maria.oliveira@email.com', 6),
    ('Carlos Santos', 'TI', '1992-03-10', 'carlos.santos@email.com', 4),
    ('Ana Souza', 'Financeiro', '1988-11-05', 'ana.souza@email.com', 20),
    ('Pedro Lima', 'Marketing', '1995-07-18', 'pedro.lima@email.com', 7),
    ('Juliana Pereira', 'Vendas', '1982-09-30', 'juliana.pereira@email.com', 5),
    ('Lucas Oliveira', 'TI', '1991-12-12', 'lucas.oliveira@email.com', 6),
    ('Fernanda Santos', 'RH', '1987-04-25', 'fernanda.santos@email.com', 11),
    ('Rafaela Costa', 'Marketing', '1993-06-08', 'rafaela.costa@email.com', 10),
    ('Eduardo Silva', 'Vendas', '1980-01-20', 'eduardo.silva@email.com', 23),
    ('Camila Lima', 'Financeiro', '1994-04-02', 'camila.lima@email.com', 2),
    ('Gustavo Pereira', 'TI', '1983-07-12', 'gustavo.pereira@email.com', 0),
    ('Patrícia Santos', 'RH', '1996-10-28', 'patricia.santos@email.com', 14),
    ('Rodrigo Oliveira', 'Marketing', '1986-02-15', 'rodrigo.oliveira@email.com', 18),
    ('Cristina Lima', 'Vendas', '1989-09-05', 'cristina.lima@email.com', 16);

USE empresa;
-- SELECT * FROM funcionario;
-- SELECT * FROM funcionario WHERE data_nascimento BETWEEN '1990-01-01' AND '2000-01-01';
-- SELECT * FROM funcionario WHERE vendas BETWEEN 15 AND 30;
-- SELECT * FROM funcionario WHERE YEAR(data_nascimento) BETWEEN 1990 AND 2000;
-- SELECT *, YEAR(NOW()) - YEAR(data_nascimento) AS idade FROM funcionario;
-- SELECT *, DAY(data_nascimento) AS dia_nascimento FROM funcionario;
-- SELECT data_nascimento, WEEK(data_nascimento) FROM funcionario;
-- SELECT * FROM funcionario WHERE departamento IN ("TI", "Vendas", "Financeiro");
-- SELECT * FROM funcionario WHERE id IN (1, 4, 8);
-- SELECT * FROM funcionario WHERE nome LIKE "P%";
-- SELECT * FROM funcionario WHERE nome LIKE "%Santos";
-- SELECT * FROM funcionario WHERE nome LIKE "%ana%";
USE empresa;
-- SELECT * FROM funcionario ORDER BY nome;
-- SELECT * FROM funcionario ORDER BY data_nascimento DESC;
-- SELECT * FROM funcionario ORDER BY vendas DESC;
-- SELECT * FROM funcionario ORDER BY vendas ASC;
-- SELECT * FROM funcionario WHERE vendas >= 20 ORDER BY data_nascimento;
-- SELECT * FROM funcionario LIMIT 10;
-- SELECT * FROM funcionario WHERE departamento IN ("Vendas") LIMIT 3;
-- SELECT * FROM funcionario WHERE departamento NOT IN ("Marketing");
-- SELECT * FROM funcionario WHERE vendas NOT BETWEEN 5 AND 10;

USE empresa;
CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco FLOAT,
    quantidade_estoque INT
);