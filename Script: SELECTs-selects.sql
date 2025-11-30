-- 1. Listar alunos e seus planos
SELECT a.nome, p.nome_plano, p.valor
FROM Aluno a
JOIN Plano p ON a.id_plano = p.id_plano;

-- 2. Treinos completos com instrutor
SELECT t.id_treino, a.nome AS aluno, i.nome AS instrutor, t.objetivo
FROM Treino t
JOIN Aluno a ON t.id_aluno = a.id_aluno
JOIN Instrutor i ON t.id_instrutor = i.id_instrutor;

-- 3. Exercícios de um treino específico
SELECT te.id_treino, e.nome_exercicio, te.series, te.repeticoes
FROM Treino_Exercicio te
JOIN Exercicio e ON te.id_exercicio = e.id_exercicio
WHERE te.id_treino = 1;

-- 4. Alunos ordenados por nome
SELECT nome, email FROM Aluno ORDER BY nome;

-- 5. Últimos check-ins (limit)
SELECT * FROM Checkin
ORDER BY data_hora DESC
LIMIT 5;
