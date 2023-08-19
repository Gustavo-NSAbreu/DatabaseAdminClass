CREATE VIEW qtd_disciplina_periodo AS 
WITH 
qtd_primeiro_periodo AS (
  SELECT
   	g.idGrade,
    COUNT(d.idDisciplina) AS qtd_disciplina
  FROM grade g
  LEFT JOIN grade_disciplina gd ON g.idGrade = gd.idGrade
  LEFT JOIN disciplina d ON gd.idDisciplina = d.idDisciplina
  WHERE gd.periodo = 1
  GROUP BY g.idGrade
),
qtd_segundo_periodo AS (
  SELECT
   	g.idGrade,
    COUNT(d.idDisciplina) AS qtd_disciplina
  FROM grade g
  LEFT JOIN grade_disciplina gd ON g.idGrade = gd.idGrade
  LEFT JOIN disciplina d ON gd.idDisciplina = d.idDisciplina
  WHERE gd.periodo = 2
  GROUP BY g.idGrade
),

qtd_terceiro_periodo AS (
  SELECT
   	g.idGrade,
    COUNT(d.idDisciplina) AS qtd_disciplina
  FROM grade g
  LEFT JOIN grade_disciplina gd ON g.idGrade = gd.idGrade
  LEFT JOIN disciplina d ON gd.idDisciplina = d.idDisciplina
  WHERE gd.periodo = 3
  GROUP BY g.idGrade
),

qtd_quarto_periodo AS (
  SELECT
   	g.idGrade,
    COUNT(d.idDisciplina) AS qtd_disciplina
  FROM grade g
  LEFT JOIN grade_disciplina gd ON g.idGrade = gd.idGrade
  LEFT JOIN disciplina d ON gd.idDisciplina = d.idDisciplina
  WHERE gd.periodo = 4
  GROUP BY g.idGrade
),

qtd_quinto_periodo AS (
  SELECT
   	g.idGrade,
    COUNT(d.idDisciplina) AS qtd_disciplina
  FROM grade g
  LEFT JOIN grade_disciplina gd ON g.idGrade = gd.idGrade
  LEFT JOIN disciplina d ON gd.idDisciplina = d.idDisciplina
  WHERE gd.periodo = 5
  GROUP BY g.idGrade
),

qtd_sexto_periodo AS (
  SELECT
   	g.idGrade,
   	COUNT(d.idDisciplina) AS qtd_disciplina
  FROM grade g
  LEFT JOIN grade_disciplina gd ON g.idGrade = gd.idGrade
  LEFT JOIN disciplina d ON gd.idDisciplina = d.idDisciplina
  WHERE gd.periodo = 6
  GROUP BY g.idGrade
),
qtd_setimo_periodo AS (
  SELECT
   	g.idGrade,
   	COUNT(d.idDisciplina) AS qtd_disciplina
  FROM grade g
  LEFT JOIN grade_disciplina gd ON g.idGrade = gd.idGrade
  LEFT JOIN disciplina d ON gd.idDisciplina = d.idDisciplina
  WHERE gd.periodo = 7
  GROUP BY g.idGrade
),
qtd_oitavo_periodo AS (
  SELECT
   	g.idGrade,
   	COUNT(d.idDisciplina) AS qtd_disciplina
  FROM grade g
  LEFT JOIN grade_disciplina gd ON g.idGrade = gd.idGrade
  LEFT JOIN disciplina d ON gd.idDisciplina = d.idDisciplina
  WHERE gd.periodo = 8
  GROUP BY g.idGrade
),
qtd_nono_periodo AS (
  SELECT
   	g.idGrade,
   	COUNT(d.idDisciplina) AS qtd_disciplina
  FROM grade g
  LEFT JOIN grade_disciplina gd ON g.idGrade = gd.idGrade
  LEFT JOIN disciplina d ON gd.idDisciplina = d.idDisciplina
  WHERE gd.periodo = 9
  GROUP BY g.idGrade
),
qtd_min_max_idDisciplina_grade AS (
  SELECT
   	g.idGrade,
    min(d.idDisciplina) AS menor_id,
  	max(d.idDisciplina) AS maior_id
  FROM grade g
  INNER JOIN grade_disciplina gd ON g.idGrade = gd.idGrade
  INNER JOIN disciplina d ON gd.idDisciplina = d.idDisciplina
  GROUP BY g.idGrade
)

SELECT 
  gr.idGrade AS grade,
  COALESCE(pp.qtd_disciplina, 0) AS qtd_primeiro,
  COALESCE(sp.qtd_disciplina, 0) AS qtd_segundo,
  COALESCE(tp.qtd_disciplina, 0) AS qtd_terceiro,
  COALESCE(qap.qtd_disciplina, 0) AS qtd_quarto,
  COALESCE(qip.qtd_disciplina, 0) AS qtd_quinto,
  COALESCE(sep.qtd_disciplina, 0) AS qtd_sexto,
  COALESCE(stp.qtd_disciplina, 0) AS qtd_setimo,
  COALESCE(oip.qtd_disciplina, 0) AS qtd_oitavo,
  COALESCE(nop.qtd_disciplina, 0) AS qtd_nono,
  min_max.menor_id,  
  min_max.maior_id
FROM grade gr
LEFT JOIN qtd_primeiro_periodo pp ON gr.idGrade = pp.idGrade
LEFT JOIN qtd_segundo_periodo sp ON gr.idGrade = sp.idGrade
LEFT JOIN qtd_terceiro_periodo tp ON gr.idGrade = tp.idGrade
LEFT JOIN qtd_quarto_periodo qap ON gr.idGrade = qap.idGrade
LEFT JOIN qtd_quinto_periodo qip ON gr.idGrade = qip.idGrade
LEFT JOIN qtd_sexto_periodo sep ON gr.idGrade = sep.idGrade
LEFT JOIN qtd_setimo_periodo stp ON gr.idGrade = stp.idGrade
LEFT JOIN qtd_oitavo_periodo oip ON gr.idGrade = oip.idGrade
LEFT JOIN qtd_nono_periodo nop ON gr.idGrade = nop.idGrade
LEFT JOIN qtd_min_max_idDisciplina_grade min_max ON gr.idGrade = min_max.idGrade
GROUP BY gr.idGrade
