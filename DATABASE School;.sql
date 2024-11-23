CREATE DATABASE escola;
USE escola;

CREATE TABLE aluno (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL
);

CREATE TABLE professor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL
);

CREATE TABLE materia (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_professor INT NOT NULL,
    FOREIGN KEY (id_professor) REFERENCES professor(id) ON DELETE CASCADE
);

CREATE TABLE provas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_materia INT NOT NULL,
    nota FLOAT NOT NULL,
    data_da_prova DATE NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id) ON DELETE CASCADE,
    FOREIGN KEY (id_materia) REFERENCES materia(id) ON DELETE CASCADE
);

INSERT INTO aluno (nome, data_nascimento) VALUES
('João Silva', '2001-04-17'),
('Ysabele Valentine', '2006-01-06'),
('Agnes Valentine', '2004-10-10');

INSERT INTO professor (nome, data_nascimento) VALUES
('Douglas Larré', '1997-26-04');

INSERT INTO materia (nome, id_professor) VALUES
('Matemática', 1);

INSERT INTO provas (id_aluno, id_materia, nota, data_da_prova) VALUES
(1, 1, 8.5, '2024-11-10'),
(2, 1, 9.0, '2024-11-10'),
(3, 1, 7.5, '2024-11-10');