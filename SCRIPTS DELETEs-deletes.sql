-- 1. Excluir check-ins antigos
DELETE FROM Checkin
WHERE data_hora < '2025-01-01';

-- 2. Remover um exercício (exemplo simples)
DELETE FROM Exercicio
WHERE id_exercicio = 3;

-- 3. Remover um treino (apenas se não tiver FK pendente)
DELETE FROM Treino
WHERE id_treino = 2;
