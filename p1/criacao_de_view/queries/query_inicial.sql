SELECT 
	CONCAT(a.nome, " ", a.sobrenome) AS nome,
    ag.integralizado
FROM aluno_grade ag
INNER JOIN aluno a ON ag.idAluno = a.idAluno