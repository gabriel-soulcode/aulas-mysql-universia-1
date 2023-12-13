-- Consulta Básica: Escreva uma consulta para selecionar todos os registros da tabela clientes.
SELECT * FROM clientes;

-- Consulta Básica com Filtro: Recupere o nome e o email dos clientes que têm idade menor que 25 da tabela clientes. 
SELECT nome, email FROM clientes WHERE idade < 25;

-- Consulta com Filtro: Liste os produtos da tabela produtos onde o preço é menor que 10.0.
SELECT * FROM produtos WHERE preco < 10;

-- Consulta com Filtro: Liste os itens da tabela itens onde o cliente tenha id 4.
SELECT * FROM itens WHERE id_cliente = 4;

-- Consulta com Filtro: Liste os itens da tabela itens onde o produto tenha o código 12345.
SELECT * FROM itens WHERE codigo_produto = "12345";

-- Atualização Simples: Atualize o preço do produto com código 54321 para 29.99 na tabela produtos.
UPDATE produtos SET preco = 29.99 WHERE codigo = "54321";

-- Remoção com Condição: Remova todos os registros da tabela itens onde a quantidade seja igual a zero.
DELETE FROM itens WHERE quantidade = 0;


-- Atualização com Subconsulta: Incremente em 10% o preço de todos os produtos com nome Biscoito da tabela produtos.
UPDATE produtos SET preco = preco + (preco * 0.1) WHERE nome = "Biscoito";

