CREATE DATABASE commerce;
USE commerce;

CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100)
);

USE commerce;
DROP TABLE pedidos;

CREATE TABLE produtos (
  id INT PRIMARY KEY,
  nome VARCHAR(100),
  preco FLOAT
);

CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    id_cliente INT,
    id_produto INT,
    quantidade INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    FOREIGN KEY (id_produto) REFERENCES produtos(id)
);

INSERT INTO clientes (id, nome, email) VALUES
(4, 'Ana Souza', 'ana@email.com'),
(5, 'Carlos Oliveira', 'carlos@email.com'),
(6, 'Fernanda Lima', 'fernanda@email.com'),
(7, 'Ricardo Pereira', 'ricardo@email.com'),
(8, 'Camila Santos', 'camila@email.com'),
(9, 'Lucas Silva', 'lucas@email.com'),
(10, 'Isabela Martins', 'isabela@email.com'),
(11, 'Gabriel Lima', 'gabriel@email.com'),
(12, 'Amanda Oliveira', 'amanda@email.com'),
(13, 'Diego Martins', 'diego@email.com'),
(14, 'Juliana Pereira', 'juliana@email.com'),
(15, 'Roberto Souza', 'roberto@email.com'),
(16, 'Mariana Silva', 'mariana@email.com'),
(17, 'Rafaela Santos', 'rafaela@email.com'),
(18, 'Daniel Oliveira', 'daniel@email.com'),
(19, 'Tatiane Lima', 'tatiane@email.com'),
(20, 'José Pereira', 'jose@email.com');

USE commerce;
INSERT INTO pedidos (id, id_cliente, id_produto, quantidade) VALUES
(104, 4, 6, 1),
(105, 5, 2, 3),
(106, 6, 3, 2),
(107, 7, 12, 1),
(108, 8, 15, 1),
(109, 9, 1, 5),
(110, 10, 17, 1),
(111, 11, 20, 1),
(112, 12, 10, 2),
(113, 13, 4, 1),
(114, 14, 19, 1),
(115, 15, 12, 1),
(116, 16, 14, 1),
(117, 17, 1, 1),
(118, 18, 12, 1),
(119, 19, 11, 1),
(120, 20, 9, 1);

USE commerce;
-- SELECT * FROM clientes;
-- SELECT * FROM pedidos;
-- SELECT AVG(quantidade) AS media_quantidade FROM pedidos;

-- SELECT clientes.nome, pedidos.produto
-- FROM clientes JOIN pedidos ON clientes.id = pedidos.id_cliente;
-- SELECT c.nome, p.produto
-- FROM clientes AS c JOIN pedidos AS p ON c.id = p.id_cliente;
SELECT c.nome, p.produto
FROM clientes c JOIN pedidos p ON c.id = p.id_cliente;

USE commerce;
INSERT INTO produtos (id, nome, preco) VALUES
(1, 'Notebook', 1500.00),
(2, 'Mouse', 25.99),
(3, 'Teclado', 50.00),
(4, 'Fone de Ouvido', 30.50),
(5, 'Câmera', 200.00),
(6, 'Livro', 15.99),
(7, 'Monitor', 300.00),
(8, 'Impressora', 150.00),
(9, 'Tablet', 120.00),
(10, 'Mochila', 40.00),
(11, 'Relógio', 80.00),
(12, 'Smart TV', 600.00),
(13, 'Videogame', 350.00),
(14, 'Cadeira Gamer', 180.00),
(15, 'Cafeteira', 75.00),
(16, 'Ventilador', 45.00),
(17, 'Bicicleta', 250.00),
(18, 'Headset', 65.00),
(19, 'Sapato', 30.00),
(20, 'Camiseta', 20.00);

USE commerce;
SELECT c.nome AS nome_cliente, pr.nome AS nome_produto FROM clientes c
JOIN pedidos pe ON c.id = pe.id_cliente
JOIN produtos pr ON pr.id = pe.id_produto;

USE commerce;
SELECT p.nome, pe.quantidade FROM pedidos pe
INNER JOIN produtos p ON p.id = pe.id_produto WHERE pe.quantidade > 2;

USE commerce;
SELECT p.nome FROM pedidos pe RIGHT JOIN produtos p
ON p.id = pe.id_produto WHERE pe.quantidade > 2;

USE commerce;
SELECT pe.quantidade FROM pedidos pe LEFT JOIN produtos p
ON p.id = pe.id_produto WHERE p.nome = "Notebook";