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
('M�dia',8),
('Pequena',6),
('Disco M�dio', 1),
('Disco Grande', 1)

CREATE TABLE tb_Pizzas(
Id BIGINT IDENTITY (1,1),
Sabor VARCHAR (255),
Borda VARCHAR (255),
Tipo VARCHAR (255),
Pre�o DECIMAL (6,2),
PRIMARY KEY (Id),
Tipo_Id BIGINT, 
FOREIGN KEY (Tipo_Id) REFERENCES tb_Categorias(Id)

);
INSERT INTO tb_Pizzas 
(Sabor, Borda, Tipo , Pre�o, Tipo_Id)
VALUES
('Presunto e Queijo' ,'Catupiry' ,'Salgada' , 29.90, 3 ),
('Quatro Queijos' ,'Cheddar' ,'Salgada' , 39.90, 1 ),
('Frango Catupiry' ,'Sem Borda Recheada' ,'Salgada' , 30.90, 2 ),
('Portuguesa' ,'Requeij�o' ,'Salgada' , 31.90, 2 ),
('Chocolate e M&M' ,'Chocolate' ,'Doce' , 40.90, 1 ),
('Romeu e Julieta' ,'Goiabada' ,'Doce' , 40.90, 1 ),
('Esfiha de Carne' ,'Catupiry' ,'Salgada' , 19.90, 5 ),
('Esfiha de Nutela' ,'Sem Borda Recheada' ,'Doce' , 15.90, 4 );

SELECT * FROM tb_Pizzas;

SELECT * FROM tb_Pizzas WHERE Pre�o > 20.00 OR Pre�o = 20.00;

SELECT * FROM tb_Pizzas WHERE Pre�o BETWEEN 30.00 AND 50.00;

SELECT * FROM tb_Pizzas WHERE Sabor LIKE '%m%';

SELECT * FROM tb_Pizzas INNER JOIN tb_Categorias
ON tb_Categorias.Id = tb_Pizzas.Tipo_Id;

SELECT * FROM tb_Pizzas INNER JOIN tb_Categorias
ON tb_Categorias.Id = tb_Pizzas.Tipo_Id
WHERE Tipo_Id = 1;