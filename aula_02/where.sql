USE atividades;
-- SELECT * FROM produtos;
-- SELECT nome, preco FROM produtos;

-- SELECT nome, idade FROM clientes;
-- SELECT * FROM clientes;

-- SELECT * FROM clientes WHERE idade > 30;
-- SELECT * FROM clientes WHERE nome = "Almir";

-- SELECT * FROM clientes WHERE nome <> "Adriano";
-- SELECT * FROM clientes WHERE id = 4;
-- SELECT * FROM produtos WHERE codigo = "67890";

-- INSERT INTO produtos (codigo, nome, preco, quantidade) VALUES
-- ("13579", "Bolo", 15.0, 0),
-- ("24680", "Shampoo", 24.0, 1),
-- ("12457", "Carne", 33.99, 9);

-- DELETE FROM produtos;
-- DELETE FROM produtos WHERE codigo = "24680";
-- DELETE FROM produtos WHERE quantidade = 0;
-- DELETE FROM produtos WHERE codigo = "78755";

-- UPDATE produtos SET nome = "Carne Bovina" WHERE codigo = "12457";
-- UPDATE produtos SET nome = "Leite Integral", preco = 5.89
-- WHERE codigo = "54321";
-- UPDATE produtos SET quantidade = quantidade - 6 WHERE codigo = "67890";
-- SELECT * FROM produtos;

-- CREATE TABLE vendas (
--   id INT PRIMARY KEY AUTO_INCREMENT,
--   data_registro DATETIME NOT NULL DEFAULT NOW(),
--   numero_venda INT NOT NULL UNIQUE,
--   id_cliente INT NOT NULL,
--   total FLOAT NOT NULL,
--   FOREIGN KEY (id_cliente) REFERENCES clientes(id)
-- );

INSERT INTO vendas (numero_venda, id_cliente, total)
VALUES (12346, 2, 150.0);

SELECT * FROM vendas;