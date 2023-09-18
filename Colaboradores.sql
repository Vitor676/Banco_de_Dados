CREATE DATABASE db_Colaboradores 

USE db_Colaboradores;

CREATE TABLE db_Colaboradores(
Id BIGINT IDENTITY (1,1),
Salario DECIMAL (6,2), 
Nome VARCHAR (225) NOT NULL,
Cargo VARCHAR (100) NOT NULL,
Setor VARCHAR (100) NOT NULL,
PRIMARY KEY (Id)
);

SELECT * FROM db_Colaboradores;

ALTER TABLE db_Colaboradores ADD Turno VARCHAR (50);

INSERT INTO db_Colaboradores
(Salario, Nome, Cargo, Setor, Turno)
VALUES
(2.000, 'Roberto Sousa','Estoquista', 'Estoque', 'Manhã'),
(2.000, 'Lucas Mendes','Estoquista', 'Estoque', 'Manhã'),
(1.800, 'Claudia Santos','Atendente de Caixa', 'Caixa', 'Manhã'),
(1.900, 'Roberval Nunes','Atendente de Loja', 'Vendas', 'Tarde'),
(8.000, 'Marcela Carvalho','Gerente de Loja', 'Gerencia', 'Manhã');

ALTER TABLE db_Colaboradores ALTER COLUMN Salario DECIMAL (6,4);

ALTER TABLE db_Colaboradores ALTER COLUMN Salario DECIMAL (6,3);

SELECT * FROM db_Colaboradores WHERE Salario > 2.000 ;

SELECT * FROM db_Colaboradores WHERE Salario < 2.000 ;

UPDATE db_Colaboradores SET Salario = 4.000 WHERE Id = 1;
UPDATE db_Colaboradores SET Nome = 'Guilherme Algusto' WHERE Id = 1;
UPDATE db_Colaboradores SET Cargo = 'SubGerente' WHERE Id = 1;
UPDATE db_Colaboradores SET Setor = 'Gerencia' WHERE Id = 1;
UPDATE db_Colaboradores SET Turno = 'Tarde' WHERE Id = 1;