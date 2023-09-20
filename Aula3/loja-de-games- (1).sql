CREATE TABLE [Produtos] (
	id bigint NOT NULL,
	Nome varchar(255) NOT NULL,
	Descricao varchar(500) NOT NULL,
	Console varchar(255) NOT NULL,
	Quantidade int NOT NULL,
	Preco decimal(8,2) NOT NULL,
	Foto varchar(5000) NOT NULL,
	Categoriaid bigint NOT NULL,
	Usuarioid bigint NOT NULL,
  CONSTRAINT [PK_PRODUTOS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Categoria] (
	id bigint NOT NULL,
	Tipo varchar(255) NOT NULL,
  CONSTRAINT [PK_CATEGORIA] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [tb_usuarios] (
	id bigint NOT NULL,
	Nome varchar(255) NOT NULL,
	Usuario varchar(255) NOT NULL,
	Senha varchar(255) NOT NULL,
	Foto varchar(510) NOT NULL,
	Email varchar(255) NOT NULL,
  CONSTRAINT [PK_TB_USUARIOS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
ALTER TABLE [Produtos] WITH CHECK ADD CONSTRAINT [Produtos_fk0] FOREIGN KEY ([id]) REFERENCES [undefined]([undefined])
ON UPDATE CASCADE
GO
ALTER TABLE [Produtos] CHECK CONSTRAINT [Produtos_fk0]
GO
ALTER TABLE [Produtos] WITH CHECK ADD CONSTRAINT [Produtos_fk1] FOREIGN KEY ([Categoriaid]) REFERENCES [Categoria]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [Produtos] CHECK CONSTRAINT [Produtos_fk1]
GO
ALTER TABLE [Produtos] WITH CHECK ADD CONSTRAINT [Produtos_fk2] FOREIGN KEY ([Usuarioid]) REFERENCES [tb_usuarios]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [Produtos] CHECK CONSTRAINT [Produtos_fk2]
GO



