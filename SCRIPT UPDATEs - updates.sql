-- 1. Atualizar plano do aluno
UPDATE Aluno
SET id_plano = 3
WHERE id_aluno = 1;

-- 2. Ajustar objetivo do treino
UPDATE Treino
SET objetivo = 'Hipertrofia avançada'
WHERE id_treino = 1;

-- 3. Atualizar email do instrutor
UPDATE Instrutor
SET email = 'carlos.mendes@ironflex.com'
WHERE id_instrutor = 1;
