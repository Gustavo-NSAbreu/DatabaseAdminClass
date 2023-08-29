CREATE OR REPLACE VIEW qtd_disciplina_aprovados AS
SELECT
	a.idAluno,
    ag.idGrade AS grade,
    a.nome,
	COUNT(h.idDisciplina) AS aprovado_em
FROM aluno a
INNER JOIN aluno_grade ag ON a.idAluno = ag.idAluno
INNER JOIN historico h ON ag.matricula = h.matricula
WHERE h.status IN ("aprovado", "concluído") AND ag.integralizado = 0
GROUP by a.idAluno