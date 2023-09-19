CREATE OR REPLACE VIEW qtd_disciplina_por_grade AS
WITH disciplinas_obrigatorias AS
(
  SELECT
    	gd.idGrade,
			COUNT(gd.idDisciplina) AS obrigatorias
	FROM grade_disciplina gd
	WHERE gd.tipo LIKE "ob%"
  GROUP BY gd.idGrade
),
disciplinas_opcionais AS (
	SELECT
  		gd.idGrade,
  		COUNT(gd.idDisciplina) AS opcionais
	FROM grade_disciplina gd
	WHERE gd.tipo LIKE "op%"
	GROUP BY gd.idGrade
),
disciplinas_totais AS (
	SELECT
  		gd.idGrade,
  		COUNT(gd.idDisciplina) AS total
	FROM grade_disciplina gd
	GROUP BY gd.idGrade
)

SELECT 
  	gd.idGrade AS grade,
  	g.ano,
  	c.nome,
  	COALESCE(ob.obrigatorias, 0) AS obrigatorias,
 	 	COALESCE(op.opcionais, 0) AS opcionais,
  	dt.total
FROM grade_disciplina gd
LEFT JOIN disciplinas_obrigatorias ob ON gd.idGrade = ob.idGrade
LEFT JOIN disciplinas_opcionais op ON gd.idGrade = op.idGrade
LEFT JOIN disciplinas_totais dt ON gd.idGrade = dt.idGrade
INNER JOIN grade g ON gd.idGrade = g.idGrade
INNER JOIN curso c ON g.idCurso = c.idCurso
GROUP BY gd.idGrade
