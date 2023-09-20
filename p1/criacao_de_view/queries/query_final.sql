SELECT
	da.nome AS aluno,
	dpg.nome AS curso,
	dpg.grade,
	IF(dpg.obrigatorias<=da.aprovado_em, "SIM", "NÃO") AS integralizado
FROM qtd_disciplina_por_grade dpg
INNER JOIN qtd_disciplina_aprovados da ON dpg.grade = da.grade