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

