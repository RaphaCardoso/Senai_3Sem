-- Banco de Dados com tabelas relacionais

CREATE DATABASE lojinha;

CREATE TABLE produtos(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nome VARCHAR(30),
	quantidade INT,
	preco VARCHAR(20)
);

CREATE TABLE clientes(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nome VARCHAR(60),
	endereco VARCHAR(100)
);

CREATE TABLE pedido(

	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    idCliente INT,
    idProduto INT, 
    FOREIGN KEY (idCliente) REFERENCES clientes(id),
    FOREIGN KEY (idProduto) REFERENCES produtos(id)

);

-- FK é uma chave estrangeira uma primary key de outra table