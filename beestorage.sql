-- Tabela 1: PRODUTOS (segunda que deve ser criada)

CREATE TABLE produtos(
    id_produto INT NOT NULL PRIMARY KEY,
    nome_produto VARCHAR (50) NOT NULL,
    id_categoria INT NOT NULL,
    qtd_produto INT DEFAULT NULL,
    estoque_min INT DEFAULT 30,
    valor_unit FLOAT NOT NULL
);
-- Sequenciar id(depois de criar a tabela de produtos roda o create sequence)

CREATE SEQUENCE id_produto
START WITH 1
INCREMENT BY 1
NOCACHE; 

--Foreign Key(depois de rodar o create sequence roda esse pedaço de inclusão da FK)

ALTER TABLE produtos ADD CONSTRAINT FK_produto_id_categoria
FOREIGN KEY(id_categoria)REFERENCES categorias(id_categoria);


-- Tabela 2: CATEGORIAS (primeira tabela que deve ser criada)
    
CREATE TABLE categorias(
    id_categoria INT NOT NULL PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    sub_categoria VARCHAR(50) NOT NULL,
    volumes VARCHAR(20) NOT NULL
);

-- Sequenciar o id(depois que cria a tabela de categorias roda o create sequence)

CREATE SEQUENCE id_categoria
START WITH 1
INCREMENT BY 1
NOCACHE;


-- Tabela 3: USUÁRIOS (última tabela a ser criada)

CREATE TABLE usuarios(
    id_usuario INT NOT NULL PRIMARY KEY,
    nome_usuario VARCHAR(50),
    email_usuario VARCHAR(50),
    senha_usuario VARCHAR(10)   
);

-- Sequenciar id(depois de criar tabela usuarios roda o create sequence)

CREATE SEQUENCE id_usuario
START WITH 1
INCREMENT BY 1
NOCACHE;   


-- tabela 4: ENTRADAS
/*CREATE TABLE entradas
    id_entrada INT NOT NULL PRIMARY KEY,
    idUsuario INT NOT NULL,
    valor FLOAT
);

CREATE SEQUENCE id_entrada  
START WITH 1
INCREMENT BY 1
NOCACHE; 

ALTER TABLE entradas ADD CONSTRAINT FK_entrada_id_usuario
FOREIGN KEY(idUsuario)REFERENCES usuarios(id_usuario);
*/

-- tabela 5: ENTRADA DE PRODUTOS
/*
 CREATE TABLE produtos_entrada(
 	idEntrada INT NOT NULL,
	idProduto INT NOT NULL,
	qtdProduto INT,
    valor FLOAT,
	PRIMARY KEY(idEntrada,idProduto)
);

ALTER TABLE produtos_entrada ADD CONSTRAINT FK_entrada_id_entrada
FOREIGN KEY(idEntrada)REFERENCES entradas(id_entrada);

ALTER TABLE produtos_entrada ADD CONSTRAINT FK_entrada_id_produto
FOREIGN KEY(idProduto)REFERENCES produtos(id_produto);
*/
-- tabela 6: SAIDAS
/*
CREATE TABLE saidas(
	id_saida INT NOT NULL PRIMARY KEY,
	idUsuario int NOT NULL,
    valor FLOAT
);
CREATE SEQUENCE id_saida
START WITH 1
INCREMENT BY 1
NOCACHE; 

ALTER TABLE saidas ADD CONSTRAINT FK_saida_id_usuario
FOREIGN KEY(idUsuario)REFERENCES usuarios(id_usuario);
*/

-- tabela 7: SAIDAS DE PRODUTO
/*
CREATE TABLE produtos_saidas(
 	idSaida INT NOT NULL,
	idProduto INT NOT NULL,
	qtdProduto INT,
    valor FLOAT,
	PRIMARY KEY(idSaida,idProduto)
);

ALTER TABLE produtos_saida ADD CONSTRAINT FK_saida_id_saida
FOREIGN KEY(idSaida)REFERENCES saidas(id_saida);

ALTER TABLE produtos_saida ADD CONSTRAINT FK_saida_id_produto
FOREIGN KEY(idProduto)REFERENCES produtos(id_produto);
*/

--Depois de todas as tabelas criadas rodar os inserts

-- Inserindo valores na tabela usuarios

INSERT INTO usuarios(id_usuario, nome_usuario, email_usuario, senha_usuario)
     VALUES(id_usuario.NEXTVAL,'Letícia Affonso','leticia@gmail.com','leticia');
        
INSERT INTO usuarios(id_usuario, nome_usuario, email_usuario, senha_usuario)
    VALUES(id_usuario.NEXTVAL,'Luana Carneiro','luana@gmail.com','luana');
    
INSERT INTO usuarios(id_usuario, nome_usuario, email_usuario, senha_usuario)
    VALUES(id_usuario.NEXTVAL,'Graciele Ferreira','graciele@gmail.com','graci');

INSERT INTO usuarios(id_usuario, nome_usuario, email_usuario, senha_usuario)
    VALUES(id_usuario.NEXTVAL,'Denise Felix','denise@gmail.com','denise');

INSERT INTO usuarios(id_usuario, nome_usuario, email_usuario, senha_usuario)
    VALUES(id_usuario.NEXTVAL,'Ranna Leslie','ranna@gmail.com','ranna');
    
INSERT INTO usuarios(id_usuario, nome_usuario, email_usuario, senha_usuario)
    VALUES(id_usuario.NEXTVAL,'Fabiana Silva','fabiana@gmail.com','fabiana');
    

-- Inserindo valores na tabela categorias 

INSERT INTO categorias(id_categoria,nome_categoria,sub_categoria ,volumes)
        VALUES (id_categoria.NEXTVAL,'Cerveja','Lata 350ml','01 unidade');
        
INSERT INTO categorias(id_categoria,nome_categoria,sub_categoria ,volumes)
        VALUES (id_categoria.NEXTVAL,'Cerveja','Lata 350ml','01 unidade');
        
INSERT INTO categorias(id_categoria,nome_categoria,sub_categoria ,volumes)
        VALUES (id_categoria.NEXTVAL,'Cerveja','Garrafa 330ml','01 unidade');
        
INSERT INTO categorias(id_categoria,nome_categoria,sub_categoria ,volumes)
        VALUES (id_categoria.NEXTVAL,'Cerveja','Lata 350ml','01 unidade');
        
INSERT INTO categorias(id_categoria,nome_categoria,sub_categoria ,volumes)
        VALUES (id_categoria.NEXTVAL,'Cerveja','Garrafa 600ml','01 unidade');
        
INSERT INTO categorias(id_categoria ,nome_categoria ,sub_categoria ,volumes)
        VALUES (id_categoria.NEXTVAL,'Cerveja','Garrafa 330ml','01 unidade');
    
INSERT INTO categorias(id_categoria ,nome_categoria ,sub_categoria ,volumes)
        VALUES (id_categoria.NEXTVAL,'Cerveja','Garrafa 600ml','01 unidade');

INSERT INTO categorias(id_categoria ,nome_categoria ,sub_categoria ,volumes)
        VALUES (id_categoria.NEXTVAL,'Destilado','LongNeck 269ml',
'01 unidade');

INSERT INTO categorias(id_categoria ,nome_categoria ,sub_categoria ,volumes)
        VALUES (id_categoria.NEXTVAL,'Destilado','Lata 269ml','01 unidade');
        
INSERT INTO categorias(id_categoria ,nome_categoria ,sub_categoria ,volumes)
        VALUES (id_categoria.NEXTVAL,'Destilado','Lata 269ml','01 unidade');
        
INSERT INTO categorias(id_categoria,nome_categoria,sub_categoria,volumes)
        VALUES (id_categoria.NEXTVAL,'Não Alcoolicos','Garrafa 1L',
'01 unidade');

INSERT INTO categorias(id_categoria,nome_categoria,sub_categoria,volumes)
        VALUES (id_categoria.NEXTVAL,'Não Alcoolicos','Garrafa 2L',
'01 unidade');

INSERT INTO categorias(id_categoria,nome_categoria,sub_categoria,volumes)
        VALUES (id_categoria.NEXTVAL,'Não Alcoolicos','Garrafa 2L',
'01 unidade');

INSERT INTO categorias(id_categoria,nome_categoria,sub_categoria,volumes)
        VALUES (id_categoria.NEXTVAL,'Não Alcoolicos','Garrafa 500ml',
'01 unidade');

INSERT INTO categorias(id_categoria,nome_categoria,sub_categoria,volumes)
        VALUES (id_categoria.NEXTVAL,'Não Alcoolicos','Lata 350ml',
'01 unidade');


-- Inserindo valores na tabela de produto

INSERT INTO produtos(id_produto,nome_produto,id_categoria,qtd_produto,
valor_unit)
    VALUES(id_produto.NEXTVAL,'Brahma Duplo Malte',1, 100, 4.99);
    
INSERT INTO produtos(id_produto,nome_produto,id_categoria,qtd_produto,
valor_unit)
    VALUES(id_produto.NEXTVAL,'Brahma Chopp',2, 110, 3.39);
    
INSERT INTO produtos(id_produto,nome_produto,id_categoria,qtd_produto,
valor_unit)
    VALUES(id_produto.NEXTVAL,'Corona Extra', 3, 130, 6.49);
    
INSERT INTO produtos(id_produto,nome_produto,id_categoria,qtd_produto,
valor_unit)
    VALUES(id_produto.NEXTVAL,'Corona Extra',4, 130, 5.49);
    
INSERT INTO produtos(id_produto,nome_produto,id_categoria,qtd_produto,
valor_unit)
    VALUES(id_produto.NEXTVAL,'Spaten', 5, 200, 10.00);
    
INSERT INTO produtos(id_produto,nome_produto,id_categoria,qtd_produto,
valor_unit)
    VALUES(id_produto.NEXTVAL,'Becks', 6, 150,  5.99);

INSERT INTO produtos(id_produto,nome_produto,id_categoria,qtd_produto,
valor_unit)
    VALUES(id_produto.NEXTVAL,'Becks', 7, 150,  10.29);

INSERT INTO produtos(id_produto,nome_produto,id_categoria,qtd_produto,
valor_unit)
    VALUES(id_produto.NEXTVAL,'Beats Senses', 8, 90, 6.30);
    
INSERT INTO produtos(id_produto,nome_produto,id_categoria,qtd_produto,
valor_unit)
    VALUES(id_produto.NEXTVAL,'Beats Senses', 9, 90, 4.79);
    
INSERT INTO produtos(id_produto,nome_produto,id_categoria,qtd_produto,
valor_unit)
    VALUES(id_produto.NEXTVAL,'Mikes Hard Pitaia', 10, 70, 5.69);
    
INSERT INTO produtos(id_produto,nome_produto,id_categoria,qtd_produto,
valor_unit)
    VALUES(id_produto.NEXTVAL,'Pepsi Black', 11, 100, 2.59);
    
INSERT INTO produtos(id_produto,nome_produto,id_categoria,qtd_produto,
valor_unit)
    VALUES(id_produto.NEXTVAL,'Pepsi', 12, 125, 5.99);
    
INSERT INTO produtos(id_produto,nome_produto,id_categoria,qtd_produto,
valor_unit)
    VALUES(id_produto.NEXTVAL,'Guarana Antarctica', 13, 200, 8.99);
    
INSERT INTO produtos(id_produto,nome_produto,id_categoria,qtd_produto,
valor_unit)
    VALUES(id_produto.NEXTVAL,'Água AMA', 14, 110, 2.91);

INSERT INTO produtos(id_produto,nome_produto,id_categoria,qtd_produto,
valor_unit)
    VALUES(id_produto.NEXTVAL,'Água AMA', 15, 115, 4.99);