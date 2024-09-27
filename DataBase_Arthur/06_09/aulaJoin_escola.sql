CREATE DATABASE escola;

USE escola;

CREATE TABLE Turmas (
    turma_id INT PRIMARY KEY,
    descricao VARCHAR(255)
);

CREATE TABLE Professores (
    professor_id INT PRIMARY KEY,
    nome VARCHAR(255)
);

CREATE TABLE Alunos (
    aluno_id INT PRIMARY KEY,
    nome VARCHAR(255),
    idade INT,
    turma_id INT,
    FOREIGN KEY (turma_id) REFERENCES Turmas(turma_id)
);

CREATE TABLE Turma_Professor (
    turma_id INT,
    professor_id INT,
    PRIMARY KEY (turma_id, professor_id),
    FOREIGN KEY (turma_id) REFERENCES Turmas(turma_id),
    FOREIGN KEY (professor_id) REFERENCES Professores(professor_id)
);

CREATE TABLE Atividades (
    atividade_id INT PRIMARY KEY,
    descricao VARCHAR(255),
    turma_id INT,
    FOREIGN KEY (turma_id) REFERENCES Turmas(turma_id)
);

CREATE TABLE Notas (
    aluno_id INT,
    atividade_id INT,
    nota DECIMAL(5, 2),
    PRIMARY KEY (aluno_id, atividade_id),
    FOREIGN KEY (aluno_id) REFERENCES Alunos(aluno_id),
    FOREIGN KEY (atividade_id) REFERENCES Atividades(atividade_id)
);

-- Inserção de dados nas Turmas
INSERT INTO Turmas (turma_id, descricao) VALUES (1, 'Matemática 101');
INSERT INTO Turmas (turma_id, descricao) VALUES (2, 'História 101');
INSERT INTO Turmas (turma_id, descricao) VALUES (3, 'Ciências 101');

-- Inserção de dados nos Professores
INSERT INTO Professores (professor_id, nome) VALUES (1, 'Carlos Silva');
INSERT INTO Professores (professor_id, nome) VALUES (2, 'Maria Fernandes');
INSERT INTO Professores (professor_id, nome) VALUES (3, 'João Pereira');

-- Inserção de dados na tabela Turma_Professor
INSERT INTO Turma_Professor (turma_id, professor_id) VALUES (1, 1);
INSERT INTO Turma_Professor (turma_id, professor_id) VALUES (2, 2);
INSERT INTO Turma_Professor (turma_id, professor_id) VALUES (3, 3);

-- Inserção de dados nos Alunos
INSERT INTO Alunos (aluno_id, nome, idade, turma_id) VALUES (1, 'Ana Santos', 15, 1);
INSERT INTO Alunos (aluno_id, nome, idade, turma_id) VALUES (2, 'Pedro Gonçalves', 16, 1);
INSERT INTO Alunos (aluno_id, nome, idade, turma_id) VALUES (3, 'Lucas Andrade', 15, 2);
INSERT INTO Alunos (aluno_id, nome, idade, turma_id) VALUES (4, 'Mariana Costa', 16, 3);

-- Inserção de dados nas Atividades
INSERT INTO Atividades (atividade_id, descricao, turma_id) VALUES (1, 'Prova de Matemática', 1);
INSERT INTO Atividades (atividade_id, descricao, turma_id) VALUES (2, 'Trabalho de História', 2);
INSERT INTO Atividades (atividade_id, descricao, turma_id) VALUES (3, 'Experimento de Ciências', 3);

-- Inserção de dados nas Notas
INSERT INTO Notas (aluno_id, atividade_id, nota) VALUES (1, 1, 9.5);
INSERT INTO Notas (aluno_id, atividade_id, nota) VALUES (2, 1, 8.0);
INSERT INTO Notas (aluno_id, atividade_id, nota) VALUES (3, 2, 7.5);

-- todos os alunos de todas as matérias
SELECT 
	turmas.turma_id,
	turmas.descricao AS Matéria,
	alunos.aluno_id,
	alunos.nome,
    alunos.idade
FROM turmas
INNER JOIN alunos ON alunos.turma_id = turmas.turma_id;

-- liste todos os alunos e suas notas na atividade 1, incluindo sem nota.
SELECT 
    notas.atividade_id,
	alunos.nome,
    notas.nota
FROM alunos
LEFT JOIN notas ON alunos.aluno_id = notas.aluno_id
AND notas.atividade_id = 1;
-- WHERE notas.atividade_id = 1;

-- liste todas as notas e os nomes dos alunos correspondestes, incluindo notas sem aluno correspondente
SELECT 
    notas.atividade_id,
	alunos.nome,
    notas.nota
FROM notas
RIGHT JOIN alunos ON alunos.aluno_id = notas.aluno_id;


-- Liste o nome dos alunos, a descricao de suas turmas e o nome de seus professores
SELECT
alunos.nome AS nomeAluno,
turmas.descricao AS matéria,
professores.nome AS nomeProfessor
FROM alunos
INNER JOIN turmas ON alunos.turma_id = turmas.turma_id
INNER JOIN turma_professor ON turmas.turma_id = turma_professor.turma_id
INNER JOIN professores ON professores.professor_id = turma_professor.professor_id;

-- liste todos os alunos e todas as turmas, mostrando onde há ou não correspondência
SELECT 
professores.nome,
alunos.nome,
turmas.descricao
FROM professores
LEFT JOIN turma_professor ON professores.professor_id = turma_professor.professor_id
LEFT JOIN turmas ON turma_professor.turma_id = turmas.turma_id
LEFT JOIN alunos ON turmas.turma_id = alunos.turma_id
WHERE turma_professor.turma_id IS NOT NULL;
-- ????



