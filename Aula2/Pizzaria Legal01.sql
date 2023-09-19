CREATE DATABASE db_pizzaria_legal;
GO 
USE db_pizzaria_legal;
GO
CREATE TABLE tb_Categorias(
Id BIGINT IDENTITY (1,1),
Tamanho VARCHAR (255),
QuantidadeFatias VARCHAR (255),
PRIMARY KEY (Id)
);

SELECT * FROM tb_Categorias;

INSERT INTO tb_Categorias
(Tamanho, QuantidadeFatias)
VALUES
('Grande',12),
('Média',8),
('Pequena',6),
('Disco Médio', 1),
('Disco Grande', 1)

CREATE TABLE tb_Pizzas(
Id BIGINT IDENTITY (1,1),
Sabor VARCHAR (255),
Borda VARCHAR (255),
Tipo VARCHAR (255),
Preço DECIMAL (6,2),
PRIMARY KEY (Id),
Tipo_Id BIGINT, 
FOREIGN KEY (Tipo_Id) REFERENCES tb_Categorias(Id)

);
INSERT INTO tb_Pizzas 
(Sabor, Borda, Tipo , Preço, Tipo_Id)
VALUES
('Presunto e Queijo' ,'Catupiry' ,'Salgada' , 29.90, 3 ),
('Quatro Queijos' ,'Cheddar' ,'Salgada' , 39.90, 1 ),
('Frango Catupiry' ,'Sem Borda Recheada' ,'Salgada' , 30.90, 2 ),
('Portuguesa' ,'Requeijão' ,'Salgada' , 31.90, 2 ),
('Chocolate e M&M' ,'Chocolate' ,'Doce' , 40.90, 1 ),
('Romeu e Julieta' ,'Goiabada' ,'Doce' , 40.90, 1 ),
('Esfiha de Carne' ,'Catupiry' ,'Salgada' , 19.90, 5 ),
('Esfiha de Nutela' ,'Sem Borda Recheada' ,'Doce' , 15.90, 4 );

SELECT * FROM tb_Pizzas;

SELECT * FROM tb_Pizzas WHERE Preço > 20.00 OR Preço = 20.00;

SELECT * FROM tb_Pizzas WHERE Preço BETWEEN 30.00 AND 50.00;

SELECT * FROM tb_Pizzas WHERE Sabor LIKE '%m%';

SELECT * FROM tb_Pizzas INNER JOIN tb_Categorias
ON tb_Categorias.Id = tb_Pizzas.Tipo_Id;

SELECT * FROM tb_Pizzas INNER JOIN tb_Categorias
ON tb_Categorias.Id = tb_Pizzas.Tipo_Id
WHERE Tipo_Id = 1;