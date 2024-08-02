CREATE DATABASE  senai; -- Criar um database

Use senai; -- Selecionando database que vamos utilizar

CREATE TABLE professores(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	-- Primary key -> Indica chave primária
	-- not null -> nunca vai ser vazio
	-- Auto_Increment -> Auto adicionar novo número

	nome VARCHAR(60),
	materia VARCHAR(30)
);

-- Inserindo dados
INSERT INTO professores (nome, materia) VALUES
	('Arthur Rosa', 'DB'),
	('Samuel Bruce', 'Flutter'),
	('Giovanni Vickng', 'React Native');

-- * -> Indica que estou buscando todas as colunas
SELECT * FROM professores;

-- Para deletar 
DELETE FROM professores WHERE id = 7;

-- Atualizar dados
-- Atualize a tabela professores, ajuste materia = back-end
-- Onde o id seja igual a 1
-- if (id == 1) { atualiza a materia }
UPDATE professores SET materia = 'Back-end' WHERE 	id = 7;

-- Criar tabela Alunos 
-- (id, nome, idade)
-- Inserir 3 alunos

CREATE TABLE alunos (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nome VARCHAR (60),
	idade INT 
);

INSERT INTO alunos ( nome, idade) VALUES
	('Jão', 18),
	('Jubiliane', 456),
	('Don Ruan', 35);

SELECT * FROM alunos;

-- Deletar todos os dados 
	TRUNCATE TABLE alunos;

-- Deletar tabela
	DROP TABLE alunos;

-- Deletar mais de um ID
DELETE FROM alunos WHERE id IN (1,2,3);

-- Atualizar mais de um ID
UPDATE professores SET nome = 'Arthur', materia = 'programa'  WHERE id IN (10,11,12);

-- Colunas - Modificar o tipo da coluna
ALTER TABLE alunos
MODIFY COLUMN nome VARCHAR(40);

-- Adicionar nova coluna
ALTER TABLE alunos
ADD COLUMN matricula VARCHAR(10);

-- Deletar uma coluna
ALTER TABLE alunos
DROP COLUMN matricula;

-- Trocar o nome
ALTER TABLE alunos
CHANGE COLUMN novoNome nome VARCHAR(30);

-- Alterar o nome da tabela
ALTER TABLE aluno
RENAME TO estudantes;

