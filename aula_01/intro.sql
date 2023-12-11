-- SQL -> Structured Query Language
-- CRUD -> Create Read Update Delete
-- CREATE DATABASE teste;

-- SHOW DATABASES;

-- USE teste;

-- SHOW TABLES;

-- CREATE TABLE aluno (
-- 	nome VARCHAR(255), 
-- 	idade INT, 
-- 	matricula VARCHAR(10)
-- );

-- DROP DATABASE teste;
-- SHOW DATABASES;

-- DROP TABLE aluno;

-- CREATE DATABASE academico;
USE academico;

-- USE academico;
-- CREATE TABLE cursos (
--   nome VARCHAR(255),
--   carga_horaria FLOAT,
--   descricao TEXT,
--   andamento BOOLEAN,
--   id INT PRIMARY KEY AUTO_INCREMENT
-- );

-- DESCRIBE cursos;
-- CREATE TABLE professores (
--   id INT PRIMARY KEY AUTO_INCREMENT,
--   nome VARCHAR(255) NOT NULL,
--   especialidade VARCHAR(255),
--   email VARCHAR(255),
--   data_nascimento DATE NOT NULL,
--   salario FLOAT NOT NULL,
--   cpf VARCHAR(11) NOT NULL
-- );

-- SHOW TABLES;
-- DESCRIBE professores;

-- CREATE TABLE disciplinas (
--   id INT PRIMARY KEY AUTO_INCREMENT,
--   nome VARCHAR(255) NOT NULL,
--   id_curso INT NOT NULL,
--   id_professor INT NOT NULL,
--   FOREIGN KEY (id_curso) REFERENCES cursos(id),
--   FOREIGN KEY (id_professor) REFERENCES professores(id)
-- );
-- DESCRIBE disciplinas;
-- SHOW TABLES;

-- INSERT INTO cursos (nome, carga_horaria, descricao, andamento)
-- VALUES ("HTML e CSS", 15, "Muito bom.", 1);

-- INSERT INTO professores (nome, data_nascimento, salario, cpf)
-- VALUES ("Adriano", "1995-11-23", 10000.0, "12345678900");

INSERT INTO disciplinas (nome, id_curso, id_professor)
VALUES ("HTML", 1, 1);
