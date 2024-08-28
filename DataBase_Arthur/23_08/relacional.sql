CREATE DATABASE lojaVendasLibbs;

USE lojaVendasLibbs;

CREATE TABLE clientes (

id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,

nome VARCHAR(100),

idade INT
);

CREATE TABLE produtos ( 

id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR(100),
preco VARCHAR(30)

);

CREATE TABLE fornecedores (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR(100),
cnpj VARCHAR(16)
);

CREATE TABLE funcionarios (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR (100),
cpf VARCHAR (11), 
ncarteira VARCHAR (30),
salario INT
);

-- clientes, produtos, funcionarios, fornecedores

CREATE TABLE pedidos (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
idCliente INT,
idProduto INT,
idFuncionario INT,
idFornecedor INT,
-- FK (colunaAtual) RF tabela (nomeColuna)
FOREIGN KEY (idCliente) REFERENCES clientes(id),
FOREIGN KEY (idProduto) REFERENCES produtos(id),
FOREIGN KEY (idFuncionario) REFERENCES funcionarios(id),
FOREIGN KEY (idFornecedor) REFERENCES fornecedores(id)
);

INSERT INTO clientes (nome, idade) VALUES
('DON JUAN', 27),
('GEIBISLANE', 46),
('JORGOSSO', 50);

INSERT INTO produtos (nome, preco) VALUES
('RUAN', 1),
('ARROZ', 25),
('PAO', 5);

INSERT INTO fornecedores (nome, cnpj) VALUES
('BETarthur', 0000000001),
('amil', 4646546541),
('exercito', 546546541);

INSERT INTO funcionarios (nome, cpf, ncarteira, salario) VALUES
('RUAN', 274654645, 12345678, 1),
('VIVI', 46546544, 1231654, 1),
('JAO', 50546546, 2165843, 1);

SELECT * FROM funcionarios;
SELECT * FROM clientes;
SELECT * FROM produtos;
SELECT * FROM fornecedores;

INSERT INTO pedidos (idCliente, idProduto, idFuncionario, idFornecedor) VALUES
(2, 1, 3, 3),
(1, 3, 2, 1),
(3, 2, 1, 2);

SELECT * FROM pedidos;



