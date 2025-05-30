
CREATE DATABASE Empresa;


USE Empresa;


CREATE TABLE Funcionarios (
    id INT PRIMARY KEY,
    nome VARCHAR(100)
);


CREATE TABLE Projetos (
    id INT PRIMARY KEY,
    funcionario_id INT,
    titulo VARCHAR(100),
    FOREIGN KEY (funcionario_id) REFERENCES Funcionarios(id)
);

INSERT INTO Funcionarios (id, nome) VALUES (1, 'Bruna ');
INSERT INTO Funcionarios (id, nome) VALUES (2, 'Duda');


INSERT INTO Projetos (id, funcionario_id, titulo) VALUES (1, 1, 'Site da empresa');
INSERT INTO Projetos (id, funcionario_id, titulo) VALUES (2, 2, 'Sistema interno');
INSERT INTO Projetos (id, funcionario_id, titulo) VALUES (3, 1, 'App mobile');


SELECT * FROM Funcionarios;


SELECT * FROM Projetos;


SELECT Projetos.id, Funcionarios.nome, Projetos.titulo
FROM Projetos
JOIN Funcionarios ON Projetos.funcionario_id = Funcionarios.id;
