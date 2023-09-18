CREATE DATABASE db_Escola

USE db_Escola

CREATE TABLE tb_Estudantes(
Id BIGINT IDENTITY (1,1),
Nome VARCHAR (200),
Serie VARCHAR (200),
Idade TINYINT,
Turno VARCHAR (150),
Nota REAL,
PRIMARY KEY (Id)

);
SELECT * FROM tb_Estudantes;


INSERT INTO tb_Estudantes
(Nome, Serie, Idade, Turno, Nota)
VALUES
('Roberto Farias', '2� Ao Fundamental',8 , 'Manh�', 7.8),
('Vitor Carlos', '3� Ano Ensino M�dio',17 , 'Noite', 8.8),
('Carolina Santos', '2� Ano Fundamental',7 , 'Manh�', 7.8),
('Marcia Fernadez', '1� Ano Ensino M�dio',15 , 'Manh�', 5.8),
('Roberval Mascarenhas', '2� Ano Ensino',16 , 'Manh�', 6.0),
('Soraya Rizzi', '3� Ano Fundamental',10 , 'Tarde', 8.8),
('Alberto Noberto', '2� Ano Ensino M�dio',18 , 'Noite', 6.8),
('Regina Miranda', '1� Ano Fundamental',7 , 'Manh�', 9.8);

ALTER TABLE tb_Estudantes ALTER COLUMN Nota REAL (6,2);

SELECT * FROM tb_Estudantes WHERE Nota > 7.0;

SELECT * FROM tb_Estudantes WHERE Nota < 7.0;

UPDATE tb_Estudantes SET Nome = 'Flavia Gamma' WHERE Id = 3;
UPDATE tb_Estudantes SET Serie = '3� Ano Ensino M�dio'WHERE Id = 3;
UPDATE tb_Estudantes SET Idade = 18 WHERE Id = 3;
UPDATE tb_Estudantes SET Turno = 'Noite' WHERE Id = 3;
UPDATE tb_Estudantes SET Nota = 7.1 WHERE Id = 3;

DELETE FROM tb_Estudantes WHERE Id = 9;
DELETE FROM tb_Estudantes WHERE Id = 10;
DELETE FROM tb_Estudantes WHERE Id = 11;
DELETE FROM tb_Estudantes WHERE Id = 12;
DELETE FROM tb_Estudantes WHERE Id = 13;
DELETE FROM tb_Estudantes WHERE Id = 14;
DELETE FROM tb_Estudantes WHERE Id = 15;
DELETE FROM tb_Estudantes WHERE Id = 16;