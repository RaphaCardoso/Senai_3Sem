CREATE DATABASE restaurante_libbs;

USE restaurante_libbs;

CREATE TABLE categorias(
id_categorias INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(10)
);

CREATE TABLE produtos(
id_produtos INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(10),
preco VARCHAR(20),
categorias_id INT,
FOREIGN KEY (categorias_id) REFERENCES categorias(id_categorias)
);

CREATE TABLE clientes(
id_clientes INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
email VARCHAR(100),
telefone VARCHAR(20)
);

CREATE TABLE pedidos(
id_pedidos INT PRIMARY KEY AUTO_INCREMENT,
data_pedido DATE,
cliente_id INT,
FOREIGN KEY (cliente_id) REFERENCES clientes(id_clientes)
);

CREATE TABLE pagamentos(
id_pagamentos INT PRIMARY KEY AUTO_INCREMENT,
metodo_pagamento VARCHAR(100),
valor_pago INT,
data_pagamento DATE, 
pedidos_id INT,
FOREIGN KEY (pedidos_id) REFERENCES pedidos(id_pedidos)
);

CREATE TABLE itens_pedido(
id_itens_pedido INT PRIMARY KEY AUTO_INCREMENT,
quantidade INT,
preco_unitario INT,
pedidos_id INT,
FOREIGN KEY (pedidos_id) REFERENCES pedidos(id_pedidos),
produtos_id INT, 
FOREIGN KEY (produtos_id) REFERENCES produtos(id_produtos)
);

INSERT INTO categorias (nome) VALUES
('Frito'), ('Assado');

INSERT INTO produtos (nome, preco, categorias_id) VALUES
('Pastel', '20', 1), ('Fogazza', '15', 2);

INSERT INTO clientes (nome, email, telefone) VALUES
('Raphael', 'raphael@gmail.com', '1195432167'), ('Jão', 'Jao@gmail.com', '11958746165');

INSERT INTO pedidos (data_pedido, cliente_id) VALUES
('2024-12-25', 1), ('2024-09-06', 2);

INSERT INTO pagamentos(metodo_pagamento, valor_pago, data_pagamento, pedidos_id) VALUES
('Débito', 40, '2024-12-25', 1), ('Crédito', 45, '2024-09-06', 2);

INSERT INTO itens_pedido(quantidade, preco_unitario, pedidos_id, produtos_id) VALUES
(2, 20, 1, 1), (3, 15, 2, 2);

SELECT * FROM categorias;     

SELECT * FROM produtos;

SELECT * FROM clientes;

SELECT * FROM pedidos;

SELECT * FROM pagamentos;

SELECT * FROM itens_pedido;


-- INNER JOIN
-- SELECIONE TODOS OS PRODUTOS E SUAS CATEGORIAS
SELECT
	prod.nome,
	prod.preco,
    categorias.nome
FROM produtos AS prod
INNER JOIN categorias ON prod.categorias_id = categorias.id_categorias;
-- Produtos -> Categorias

-- Conceito de tabela intermediária para relacionar de muitos para muitos

-- INNER JOIN
-- Selecione todos os clientes que possuem pedidos
-- Clientes - Pedidos || Pedidos -> Clientes
SELECT
	cli.nome,
    cli.telefone,
    cli.email,
    pedidos.data_pedido
FROM clientes AS cli
INNER JOIN pedidos ON cli.id_clientes = pedidos.cliente_id;

SELECT
	produtos.nome,
    produtos.preco,
    itens_pedido.quantidade
FROM produtos
INNER JOIN itens_pedido ON itens_pedido.produtos_id = produtos.id_produtos;

-- INNER JOIN
-- os produtos e suas categorias quando foram pedidos e suas quantidades
-- Categorias -> Produtos -> Itens_pedido -> Pedidos

SELECT
	categorias.nome,
    produtos.nome,
    produtos.preco,
    itens_pedido.quantidade,
    pedidos.data_pedido
FROM categorias
INNER JOIN produtos ON categorias.id_categorias = produtos.categorias_id 
INNER JOIN itens_pedido ON itens_pedido.produtos_id = produtos.id_produtos
INNER JOIN pedidos ON pedidos.id_pedidos = itens_pedido.pedidos_id;

    