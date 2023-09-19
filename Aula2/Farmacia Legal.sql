CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;
CREATE TABLE tb_Categorias(
Id BIGINT IDENTITY (1,1),
Categoria VARCHAR (255),
Tipo_Produto VARCHAR (255),
PRIMARY KEY (Id)
);

INSERT INTO tb_Categorias (Categoria, Tipo_Produto)
VALUES
('Protetor Solar', 'Protetor Corporal'),
('Medidor de Pressão', 'Cuidados da Saude'),
('Vitminas e Minerais', 'Suplemnto Vitaminico'),
('Higiene Pessoal', 'Cabelos'),
('Infantil', 'Alimentos');

SELECT * FROM tb_Categorias

CREATE TABLE tb_Produtos(
Id BIGINT IDENTITY (1,1),
Nome VARCHAR (255),
QntEstoque INT,
Preço DECIMAL (6,2),
Fabricante VARCHAR (255),
Tipo_Id BIGINT,
FOREIGN KEY (Tipo_id) REFERENCES tb_Categorias(Id)

);

INSERT INTO tb_Produtos
(Nome,QntEstoque,Fabricante, Preço, Tipo_Id)
VALUES
('Nivea Sun Protect & Bronze', 40, 'Nivea', 55.90, 1),
('Medidor de Pressão G-Tech', 5,  'G-Tech', 79.90, 2),
('Vita Jr frasco com 120mL' ,22,'União Quimica',15.65, 3),
('Kit Sh + Cond Seda', 19, 'Unilever', 20.00, 4),
('Composto Lácteo Infantil Milnutri', 9, 'Danone', 67.55, 5),
('Condicionador Elseve Hydra', 21, 'LOréal Brasil', 19.96, 4),
('Cereal Infantil Mucilon ', 66, 'Nestlé', 6.50, 5), 
('Addera + Cabelo e Unhas', 2 , 'Cosmed', 119.90, 3);

SELECT * FROM tb_Produtos;

SELECT * FROM tb_Produtos WHERE Preço > 50.00 OR Preço = 50.00;

SELECT * FROM tb_Produtos WHERE Preço BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_Produtos WHERE Nome LIKE '%c%';

SELECT * FROM tb_Produtos INNER JOIN tb_Categorias
ON tb_Categorias.Id = tb_Produtos.Tipo_Id;

SELECT * FROM tb_Produtos INNER JOIN tb_Categorias
ON tb_Categorias.Id = tb_Produtos.Tipo_Id
WHERE Tipo_Id = 1;
