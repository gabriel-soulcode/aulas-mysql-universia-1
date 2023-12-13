USE empresa;

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10, 2),
    quantidade_estoque INT
);

INSERT INTO produtos (nome, categoria, preco, quantidade_estoque) VALUES
    ('Notebook Dell', 'Eletrônicos', 2499.99, 10),
    ('Smartphone Samsung', 'Eletrônicos', 899.99, 15),
    ('TV LED 4K LG', 'Eletrônicos', 1499.99, 8),
    ('Cadeira de Escritório', 'Móveis', 199.99, 20),
    ('Mesa de Jantar', 'Móveis', 399.99, 12),
    ('Fogão a Gás', 'Eletrodomésticos', 499.99, 18),
    ('Liquidificador Philips', 'Eletrodomésticos', 79.99, 25),
    ('Forno Elétrico', 'Eletrodomésticos', 249.99, 10),
    ('Livro "Aventuras de Sherlock Holmes"', 'Livros', 19.99, 30),
    ('Fone de Ouvido Bluetooth', 'Eletrônicos', 69.99, 15),
    ('Mochila Escolar', 'Acessórios', 29.99, 40),
    ('Tênis Esportivo', 'Calçados', 89.99, 25),
    ('Bicicleta Mountain Bike', 'Esportes', 399.99, 5),
    ('Panela de Pressão', 'Cozinha', 49.99, 20),
    ('Jogo de Talheres Inox', 'Cozinha', 39.99, 15),
    ('Colchão Casal Ortobom', 'Móveis', 699.99, 8),
    ('Ventilador de Mesa', 'Eletrodomésticos', 59.99, 12),
    ('Câmera Fotográfica Canon', 'Eletrônicos', 799.99, 7),
    ('Grill Elétrico', 'Eletrodomésticos', 129.99, 10),
    ('Relógio de Pulso', 'Acessórios', 149.99, 18);


-- Consulta com BETWEEN: Selecione todos os registros da tabela produtos cujo preço esteja entre $50 e $100.
USE empresa; 
SELECT * FROM produtos WHERE preco BETWEEN 50 AND 100;

-- Consulta com LIKE: Recupere os nomes dos produtos da tabela produtos que contenham a palavra 'Smart' em qualquer posição.
USE empresa; 
SELECT nome FROM produtos WHERE nome LIKE "%Smart%";

-- Consulta com IN: Liste os produtos da tabela produtos cujos códigos estejam em (1, 3, 5).
USE empresa; 
SELECT * FROM produtos WHERE id IN (1, 3, 5);

-- Consulta com ORDER BY: Ordene os registros da tabela produtos por nome em ordem alfabética crescente.
USE empresa; 
SELECT * FROM produtos ORDER BY nome;

-- Consulta com LIMIT e ORDER BY: Recupere os cinco produtos mais caros da tabela produtos, ordenados do mais caro para o mais barato.
USE empresa; 
SELECT * FROM produtos ORDER BY preco DESC LIMIT 10;

-- Consulta com BETWEEN e ORDER BY: Selecione os registros da tabela produtos com preços entre $30 e $60, ordenados por preço de forma decrescente.
USE empresa; 
SELECT * FROM produtos WHERE preco BETWEEN 30 AND 60 ORDER BY preco DESC;

-- Consulta com LIKE e ORDER BY: Liste os produtos da tabela produtos cujos nomes comecem com 'C' e ordene-os alfabeticamente. 
USE empresa; 
SELECT * FROM produtos WHERE nome LIKE "C%" ORDER BY nome;

-- Consulta com IN e LIKE: Recupere os produtos da tabela produtos com códigos 2, 4 e 6, e que contenham a palavra 'HD' no nome. 
USE empresa; 
SELECT * FROM produtos WHERE id IN (2, 4, 6) AND LIKE "%HD%";

-- Consulta com BETWEEN e LIMIT: Selecione os registros da tabela produtos com preços entre $10 e $50, limitando o resultado aos primeiros três registros.
USE empresa; 
SELECT * FROM produtos WHERE preco BETWEEN 10 AND 50 LIMIT 3;

-- Consulta com LIKE e LIMIT: Liste os produtos da tabela produtos cujos nomes contenham 'Gaming' e limite o resultado aos primeiros cinco registros.
USE empresa; 
SELECT * FROM produtos WHERE nome LIKE "%Gaming%" LIMIT 5;

-- Consulta com ORDER BY e LIMIT: Recupere os dez produtos mais baratos da tabela produtos, ordenados por preço de forma crescente.
USE empresa;
SELECT * FROM produtos ORDER BY preco LIMIT 10;

-- Consulta com BETWEEN e IN: Selecione os registros da tabela produtos cujos códigos estejam entre 3 e 7, ou sejam 10 e 12. 
USE empresa;
SELECT * FROM produtos WHERE id BETWEEN 3 AND 7 OR id IN (10, 12);

-- Consulta com LIKE e ORDER BY: Liste os produtos da tabela produtos cujos nomes terminam com 'X' e ordene-os alfabeticamente de forma decrescente.
USE empresa;
SELECT * FROM produtos WHERE nome LIKE "%X" ORDER BY nome DESC;

-- Consulta com IN e LIMIT: Recupere os produtos da tabela produtos com códigos 1, 5, 8 e 11, limitando o resultado aos dois primeiros registros.
USE empresa;
SELECT * FROM produtos WHERE id IN (1, 5, 8, 11) LIMIT 2;

-- Consulta com BETWEEN e LIKE: Selecione os registros da tabela produtos com preços entre $25 e $75 e cujos nomes contenham a palavra 'Slim'.
USE empresa;
SELECT * FROM produtos WHERE preco BETWEEN 25 AND 75 AND nome LIKE "%Slim%";