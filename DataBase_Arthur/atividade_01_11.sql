CREATE DATABASE RosaPlane;

USE RosaPlane;

CREATE TABLE Destinos ( 
	destino_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_destino VARCHAR(100),
    país VARCHAR(50),
    descricao VARCHAR(500)
);


CREATE TABLE Pacotes(
    pacote_id INT PRIMARY KEY AUTO_INCREMENT,
    id_destino INT,
	FOREIGN KEY (id_destino) REFERENCES Destinos(destino_id),
    nome_pacote VARCHAR(100),
    preco INT,
    data_ini DATE,
    data_ter DATE
);

CREATE TABLE Clientes (
	cliente_id INT PRIMARY KEY AUTO_INCREMENT,
	nome_cliente VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20),
    endereco VARCHAR(100)
);

CREATE TABLE Reservas (
	reserva_id INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
	FOREIGN KEY (id_cliente) REFERENCES Clientes(cliente_id),
    id_pacote INT,
	FOREIGN KEY (id_pacote) REFERENCES Pacotes(pacote_id),
    data_reserva DATE,
    num_pessoas INT,
    status_reserva VARCHAR(20)
);

-- informações adicionadas pelo gepeto

-- Adicionando destinos
INSERT INTO Destinos (nome_destino, país, descricao) VALUES 
('Praia do Forte', 'Brasil', 'Uma linda praia com águas claras e resorts luxuosos.'),
('Paris', 'França', 'A cidade do amor, famosa por seus monumentos e cultura.'),
('Tóquio', 'Japão', 'Uma metrópole vibrante com tecnologia e tradição.');

-- Adicionando pacotes
INSERT INTO Pacotes (id_destino, nome_pacote, preco, data_ini, data_ter) VALUES 
(1, 'Pacote Praia do Forte', 1500, '2024-01-10', '2024-01-20'),
(2, 'Pacote Paris Romântico', 5000, '2024-02-05', '2024-02-12'),
(3, 'Pacote Cultural Tóquio', 3000, '2024-03-01', '2024-03-10');

-- Adicionando clientes
INSERT INTO Clientes (nome_cliente, email, telefone, endereco) VALUES 
('Maria Silva', 'maria@email.com', '11987654321', 'Rua das Flores, 123'),
('João Souza', 'joao@email.com', '21987654321', 'Avenida das Américas, 456'),
('Ana Oliveira', 'ana@email.com', '31987654321', 'Praça da Liberdade, 789');

-- Adicionando reservas
INSERT INTO Reservas (id_cliente, id_pacote, data_reserva, num_pessoas, status_reserva) VALUES 
(1, 1, '2023-11-01', 2, 'Confirmada'),
(2, 2, '2023-11-02', 1, 'Pendente'),
(3, 3, '2023-11-03', 4, 'Cancelada');

SELECT 
cli.nome_cliente,
reservas.status_reserva, 
pacotes.nome_pacote,
destinos.nome_destino
FROM clientes AS cli
INNER JOIN reservas ON cli.cliente_id = reservas.id_cliente
INNER JOIN pacotes ON pacotes.pacote_id = reservas.id_pacote
INNER JOIN destinos ON destinos.destino_id = pacotes.id_destino;


