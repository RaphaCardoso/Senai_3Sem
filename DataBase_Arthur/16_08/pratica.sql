CREATE DATABASE operadores_libbs;

USE operadores_libbs;

CREATE TABLE clientes (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(70),
    idade INT
);

-- Empregados { id , nome , idade , salario [int]
-- Produtos { id, nome, preco, quantidade }

CREATE TABLE empregados (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(70),
    idade INT,
    salario INT
);

CREATE TABLE produtos (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(70),
    preco INT,
    quantidade int
);

INSERT INTO clientes (nome, idade)
VALUES ('Rapha', 18), ('Jão', 17), ('Ruan', 19), ('Vivi', 50);

INSERT INTO empregados ( nome, idade, salario)
VALUES ('Viviane', 21, 10000),
('Jao', 17, 20000),
('DomRuan', 20, 25000),
('Rapha', 18, 5000000);

INSERT INTO produtos (nome, preco, quantidade)
VALUES ('Pão', 1, 10000),
('Leite', 8, 20000),
('Farinha', 5, 25000),
('Ovo', 2, 5000000);


