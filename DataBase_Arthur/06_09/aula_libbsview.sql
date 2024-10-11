CREATE DATABASE libbsview;

USE libbsview;

CREATE TABLE produtos ( 
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome VARCHAR(100),
quantidade INT,
preco DECIMAL (10, 2),
descricao VARCHAR(100)
);

CREATE TABLE clientes ( 
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome VARCHAR(100),
email VARCHAR(100),
senha VARCHAR(100)
);

CREATE TABLE pedidos ( 
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
idProduto INT,
idCliente INT,
FOREIGN KEY (idProduto) REFERENCES produtos(id),
FOREIGN KEY (idCliente) REFERENCES clientes(id)
);

INSERT INTO produtos (nome, descricao, preco, quantidade) VALUES
('coca-cola', 'no ponto', 20.00, 3),
('corinthians', 'Campeão', 100.00, 1),
('RTX5090', 'sonho', 10.00, 2);

INSERT INTO clientes (nome, email, senha) VALUES
('Arthur', 'Arthur@gmail.com', '123'),
('Ruan', 'Ruan@gmail.com', '123'),
('Bisbiscrane', 'BIBI@gmail.com', '123'),
('jao', 'jao@gmail.com', '123');

INSERT INTO pedidos (idProduto, idCLiente) VALUES
(1, 1),
(2, 3),
(3, 2);

-- Saber a quantidade total do estoque
SELECT SUM(quantidade) AS QuantidadeTotal FROM produtos;

CREATE VIEW visualizar_total_estoque AS
SELECT SUM(quantidade) AS QuantidadeTotal FROM produtos;

SELECT * FROM visualizar_total_estoque;


-- Calcular o faturamento total do estoque
SELECT SUM(quantidade * preco) AS QuantidadeTotalValor FROM produtos;
-- SUM serve para somar todos, sem ele o mysql traria a info individualmente

CREATE VIEW visualizar_total_Faturamento AS
SELECT SUM(quantidade * preco) AS QuantidadeTotalValor FROM produtos;

SELECT * FROM visualizar_total_Faturamento;

-- Crie uma consulta que vai selecionar todos os produtos que 
-- foram pedidos
-- Criar VIEW

SELECT idProduto, produtos.nome FROM pedidos
INNER JOIN produtos ON pedidos.idProduto = produtos.id;

CREATE VIEW visualizar_todos_produtosPedidos AS 
SELECT idProduto, produtos.nome FROM pedidos
INNER JOIN produtos ON pedidos.idProduto = produtos.id;

SELECT * FROM visualizar_todos_produtosPedidos;

-- Visualizar o cliente o pedido e o produto
-- INNER JOIN -> INNER JOIN
-- Criar um View

SELECT
cli.nome,
pedidos.id AS pedido,
produtos.nome,
produtos.preco
FROM clientes AS cli 
INNER JOIN pedidos ON pedidos.idCliente = cli.id
INNER JOIN produtos ON  produtos.id = pedidos.idProduto;
