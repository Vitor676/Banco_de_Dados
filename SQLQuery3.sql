CREATE DATABASE db_Ecommerce

USE db_Ecommerce; 

CREATE TABLE tb_Produtos(
Id BIGINT IDENTITY (1,1),
Nome VARCHAR (255)NOT NULL,
Tipo VARCHAR (255)NOT NULL,
Valor DECIMAL (6,3) NOT NULL,
Setor VARCHAR (255)NOT NULL,
Peso VARCHAR (50)NOT NULL,
PRIMARY KEY (Id)

);

SELECT * FROM tb_Produtos;

INSERT INTO tb_Produtos
(Nome, Tipo, Valor, Setor, Peso)
VALUES
('Tiner', 'Tintas',60.00 , 'Mercearia', '1Kg'),
('Tinta Spray', 'Tintas',20.00 , 'Mercearia', '400Gr'),
('Papel de Parede', 'Decorações',100.00 , 'Mercearia', '500gr'),
('Carregador de Celular', 'Acessórios',25.00 , 'Caixas', '150Gr'),
('Papel A4', 'Papelaria',10.00 , 'Mercearia', '700gr'),
('Pelucia de Coração', 'Diversos',17.00 , 'Mercearia', '100Gr'),
('Cerveja Skol', 'Bebidas',3.00 , 'Mercearia', '350Ml'),
('Veja Multiuso', 'Produtos de Limpeza',5.00 , 'Mercearia', '900Ml'),
('Caixa de Som JBL', 'Eletrônicos',700.00 , 'Mercearia', '800Gr');

ALTER TABLE tb_Produtos ALTER COLUMN Valor DECIMAL (6,2);

SELECT * FROM tb_Produtos WHERE Valor > 500.00;

SELECT * FROM tb_Produtos WHERE Valor < 500.00;

UPDATE tb_Produtos SET Valor = 38.00 WHERE Id = 3;
UPDATE tb_Produtos SET Nome = 'Caderno Vasco da Gama'WHERE Id = 3;
UPDATE tb_Produtos SET Tipo = 'Papelaria' WHERE Id = 3;
UPDATE tb_Produtos SET Setor = 'Mercearia' WHERE Id = 3;
UPDATE tb_Produtos SET Peso = '620Gr' WHERE Id = 3;