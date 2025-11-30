INSERT INTO Plano (nome_plano, valor, duracao_dias) VALUES
('Mensal', 99.90, 30),
('Trimestral', 249.90, 90),
('Anual', 799.90, 365);

INSERT INTO Aluno (nome, cpf, telefone, data_nascimento, email, id_plano) VALUES
('João Silva', '123.456.789-10', '11999990000', '1998-05-10', 'joao@email.com', 1),
('Maria Souza', '987.654.321-00', '11988887777', '2001-11-22', 'maria@email.com', 2);

INSERT INTO Instrutor (nome, especialidade, email) VALUES
('Carlos Mendes', 'Musculação', 'carlos@ironflex.com'),
('Ana Lima', 'Funcional', 'ana@ironflex.com');

INSERT INTO Treino (id_aluno, id_instrutor, objetivo, data_criacao) VALUES
(1, 1, 'Hipertrofia', '2025-01-12'),
(2, 2, 'Perda de peso', '2025-01-13');

INSERT INTO Exercicio (nome_exercicio, grupo_muscular) VALUES
('Supino Reto', 'Peito'),
('Agachamento Livre', 'Pernas'),
('Remada Curvada', 'Costas');

INSERT INTO Treino_Exercicio VALUES
(1, 1, 4, 10),
(1, 3, 3, 12),
(2, 2, 4, 15);

INSERT INTO Checkin (id_aluno, data_hora) VALUES
(1, NOW()),
(2, NOW());
