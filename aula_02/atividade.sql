-- Crie uma tabela chamada clientes com as colunas: id, nome, email e telefone, idade.
-- Adicione cinco registros à tabela clientes com informações fictícias, garantindo que cada registro tenha um valor único para o campo id.
-- Crie uma tabela chamada produtos com as colunas: codigo, nome, preco e quantidade.
-- Insira três registros na tabela produtos com informações fictícias.
-- Crie uma tabela chamada itens com as colunas: id, codigo_produto, id_cliente e quantidade. 
-- Adicione cinco itens à tabela itens, relacionando-os a clientes existentes e produtos disponíveis.

-- CREATE DATABASE atividades;
USE atividades;

-- CREATE TABLE clientes (
--   id INT PRIMARY KEY AUTO_INCREMENT,
--   nome VARCHAR(255) NOT NULL,
--   email VARCHAR(255) NOT NULL,
--   telefone VARCHAR(11),
--   idade INT DEFAULT 10
-- );

-- INSERT INTO clientes (nome, email, telefone, idade) VALUES
-- ("Almir", "almir@soulcode.com", "00999999999", 23),
-- ("Igor", "igor@soulcode.com", "00999999998", 33),
-- ("Camila", "camila@soulcode.com", "00999999997", 27),
-- ("Carla", "carla@soulcode.com", "00999999996", 27),
-- ("Adriano", "adriano@soulcode.com", "00999999995", 34);

-- CREATE TABLE produtos (
--   codigo VARCHAR(20) PRIMARY KEY,
--   nome VARCHAR(255) NOT NULL,
--   preco FLOAT NOT NULL,
--   quantidade INT NOT NULL DEFAULT 0
-- );

-- INSERT INTO produtos (codigo, nome, preco, quantidade) VALUES
-- ("12345", "Biscoito", 6.99, 23),
-- ("67890", "Melancia", 10.99, 33),
-- ("54321", "Leite", 4.69, 27);

CREATE TABLE itens (
  id INT PRIMARY KEY AUTO_INCREMENT,
  codigo_produto VARCHAR(20) NOT NULL,
  id_cliente INT NOT NULL,
  quantidade INT NOT NULL DEFAULT 0,
  FOREIGN KEY (codigo_produto) REFERENCES produtos(codigo),
  FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

INSERT INTO itens (codigo_produto, id_cliente, quantidade) VALUES
("12345", 1, 2),
("67890", 2, 1),
("54321", 3, 1),
("12345", 4, 2),
("54321", 5, 2);