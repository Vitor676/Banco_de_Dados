CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_Classes(
Id BIGINT IDENTITY (1,1),
Classes VARCHAR (255),
Arma VARCHAR (255),
PRIMARY KEY (Id)
);

INSERT INTO tb_Classes (Classes, Arma)
VALUES ('Arqueiro', 'Arco de Guerra'),('Mago', 'Cajado de Luz'),('Guerreiro','Espada Destruidora'),('Druida', 'Varinha de Cura');
INSERT INTO tb_Classes (Classes, Arma)
VALUES 
('Assasino', 'Adaga de Sangue');

SELECT * FROM tb_Classes;

CREATE TABLE tb_Personagens(
Id BIGINT IDENTITY (1,1),
Nome VARCHAR (255) NOT NULL,
Ataque INT NOT NULL,
Defesa INT NOT NULL,
Estamina INT NOT NULL,
Mana INT NOT NULL,
PRIMARY KEY (Id),
Classe_id BIGINT,
FOREIGN KEY (Classe_id) REFERENCES tb_Classes(Id)

);

INSERT INTO tb_Personagens (Nome, Ataque, Defesa , Estamina, Mana, Classe_id)
VALUES
('Ambrose Dean',1200 ,1000 ,845 ,920, 1),
('Merlin Warlock',1420 ,1300 ,900 ,2500 ,2),
('Pierce Adans',2900 ,1100 ,1000 ,500, 3),
('Percival Potter',1300 ,900 ,800 ,1820, 4),
('Kiano Dune',1000 ,1000 ,1220 ,800, 5),
('Linus Lazar',2855 ,1000 ,800 ,480, 3),
('Alister Blacks',1500 ,1410 ,1000 ,2555, 2),
('Ilja Dragon',1300 ,1100 ,900 ,940, 1);

SELECT * FROM tb_Personagens;


SELECT * FROM tb_Personagens WHERE Ataque > 2000;

SELECT * FROM tb_Personagens WHERE Defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_Personagens WHERE Nome LIKE '%c%';

SELECT * FROM tb_Personagens INNER JOIN tb_Classes
ON tb_Classes.Id = tb_Personagens.Classe_id;

SELECT * FROM tb_Personagens INNER JOIN tb_Classes
ON tb_Classes.Id = tb_Personagens.Classe_id
WHERE Classe_id = 1;


