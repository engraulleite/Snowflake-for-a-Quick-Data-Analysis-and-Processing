SELECT *
FROM raul_db.schema1.funcionarios
    

SELECT 
    idade, 
    salario, 
    genero, 
    escolaridade,
    CASE
        WHEN score_exame_psicotecnico IS NULL THEN media_score
        ELSE score_exame_psicotecnico
    END AS score
FROM 
    raul_db.schema1.funcionarios,
    (SELECT round(AVG(score_exame_psicotecnico), 2) as media_score FROM raul_db.schema1.funcionarios) as subquery



SELECT 
    idade, 
    CASE
        WHEN salario IS NULL THEN media_salario
        ELSE salario
    END AS salario,
    genero, 
    escolaridade,
    CASE
        WHEN score_exame_psicotecnico IS NULL THEN media_score
        ELSE score_exame_psicotecnico
    END AS score
FROM 
    raul_db.schema1.funcionarios,
    (SELECT ROUND(AVG(salario), 2) AS media_salario, ROUND(AVG(score_exame_psicotecnico), 2) AS media_score FROM raul_db.schema1.funcionarios) as subquery
