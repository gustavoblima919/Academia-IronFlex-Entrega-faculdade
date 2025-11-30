CREATE TABLE Plano (
    id_plano INT PRIMARY KEY AUTO_INCREMENT,
    nome_plano VARCHAR(50),
    valor DECIMAL(10,2),
    duracao_dias INT
);

CREATE TABLE Aluno (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(80),
    cpf VARCHAR(14) UNIQUE,
    telefone VARCHAR(20),
    data_nascimento DATE,
    email VARCHAR(80) UNIQUE,
    id_plano INT,
    FOREIGN KEY (id_plano) REFERENCES Plano(id_plano)
);

CREATE TABLE Instrutor (
    id_instrutor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(80),
    especialidade VARCHAR(50),
    email VARCHAR(80)
);

CREATE TABLE Treino (
    id_treino INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT,
    id_instrutor INT,
    objetivo VARCHAR(120),
    data_criacao DATE,
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (id_instrutor) REFERENCES Instrutor(id_instrutor)
);

CREATE TABLE Exercicio (
    id_exercicio INT PRIMARY KEY AUTO_INCREMENT,
    nome_exercicio VARCHAR(80),
    grupo_muscular VARCHAR(50)
);

CREATE TABLE Treino_Exercicio (
    id_treino INT,
    id_exercicio INT,
    series INT,
    repeticoes INT,
    PRIMARY KEY (id_treino, id_exercicio),
    FOREIGN KEY (id_treino) REFERENCES Treino(id_treino),
    FOREIGN KEY (id_exercicio) REFERENCES Exercicio(id_exercicio)
);

CREATE TABLE Checkin (
    id_checkin INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT,
    data_hora DATETIME,
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno)
);
