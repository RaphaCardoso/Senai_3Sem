-- Aula perdida

-- Listar o nome de todos os alunos com suas respectivas turmas
SELECT Alunos.nome, Alunos.idade, Turmas.descricao 
FROM Alunos
INNER JOIN Turmas ON Alunos.turma_id = Turmas.turma_id;
 
-- Liste todos os alunos e suas notas na atividade 1, incluindo alunos sem notas
SELECT Alunos.nome, Notas.atividade_id, Notas.nota
FROM Alunos
LEFT JOIN Notas ON Notas.aluno_id = Alunos.aluno_id AND Notas.atividade_id = 1;
 
-- Liste todas as notas e os nomes dos alunos correspondentes, incluindo notas sem aluno correspondente
SELECT Alunos.nome, Notas.nota
FROM Alunos
RIGHT JOIN Notas ON Alunos.aluno_id = Notas.aluno_id;
 
-- Listar o nome dos alunos, a descrição de suas turmas e o nome de seus professores
SELECT Alunos.nome, Turmas.descricao, Professores.nome
FROM Alunos
INNER JOIN Turmas ON Alunos.aluno_id = Turmas.turma_id
INNER JOIN Turma_Professor ON Turma_Professor.professor_id = Turmas.turma_id
INNER JOIN Professores ON Alunos.aluno_id = Professores.professor_id;
 
-- Liste todos os alunos e todas as turmas, mostrando onde há ou não correspondencia
SELECT Professores.nome
FROM Professores
LEFT JOIN Turmas_Professor ON Professores.professor_id = Turmas_Professor.professor_id WHERE Turmas.professor.turma_id IS NULL;
 
-- Selecione dois alunos especificos
SELECT nome FROM alunos WHERE aluno_id = 1;
SELECT nome FROM alunos WHERE aluno_id = 3;
 
-- IN -> Subconsulta
SELECT nome FROM alunos WHERE aluno_id IN (1, 3);
 
-- Selecionar duas turmas com base no ID
SELECT descricao FROM turmas WHERE turma_id IN (1, 3);
 
-- NOT IN
-- Precisamos listar os alunos que não estão na turma de Historia
-- Turma de Historia tem o ID 2
SELECT nome FROM alunos WHERE turma_id NOT IN (2);
 
-- ANY -> Qualquer
-- Vamos listar os alunos que tem pelo menos uma nota maior que 8.0
SELECT nome FROM alunos WHERE aluno_id = ANY (
	SELECT aluno_id FROM notas WHERE nota > 8.0
);
 
-- EXISTS -> Existe
-- Vamos listar os professores que tem, pelo menos, uma turma associada
SELECT nome FROM professores AS p
WHERE EXISTS (
	SELECT 1
    FROM Turma_Professor AS tp
    WHERE tp.professor_id = p.professor_id
);
 
-- ALL -> Todos | 
-- IN -> Entre
-- ANY -> Qualquer
-- Liste todos os alunos que estão na turma da historia ( id = 2 )
-- E que a nota 8 seja maior que todas as notas dadas em atividades dessa turma
SELECT nome FROM alunos WHERE aluno_id = ANY (
	SELECT aluno_id
    FROM notas -- Notas
    WHERE atividade_id IN (
		SELECT atividade_id FROM atividades WHERE turma_id = 2 -- Todas as atividades da turma 2
    )
) AND 8.0 > ALL (
	SELECT nota FROM notas WHERE atividade_id IN (
		SELECT atividade_id FROM atividades WHERE turma_id = 2
    )
)
tem menu de contexto