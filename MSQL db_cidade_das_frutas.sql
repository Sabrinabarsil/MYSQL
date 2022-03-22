CREATE DATABASE  db_cidade_das_frutas ;

USE db_cidade_das_frutas;

CREATE  TABLE  tb_categoria (
id BIGINT AUTO_INCREMENT,
tipo VARCHAR ( 255 ) NOT NULL ,
setor VARCHAR ( 255 ) NOT NULL ,
preco_produto VARCHAR ( 255 ) NOT NULL ,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (tipo, setor, preco_produto)
VALUES ( " Frutas " , " Orgânico " , " Alta Procura " );

INSERT INTO tb_categoria (tipo, setor, preco_produto)
VALUES ( " Leguminosas " , " Orgânico " , " Média Procura " );

INSERT INTO tb_categoria (tipo, setor, preco_produto)
VALUES ( " Verduras " , " Não Organico " , " Alta Procura " );

INSERT INTO tb_categoria (tipo, setor, preco_produto)
VALUES ( " Bulbos " , " Não Orgânico " , " Pequena Procura " );

INSERT INTO tb_categoria (tipo, setor, preco_produto)
VALUES ( " Raizes " , " Orgânico " , " Alta Procura " );

SELECT  *  FROM tb_categoria;

CREATE TABLE  tb_produto (
id BIGINT AUTO_INCREMENT,
nome VARCHAR ( 255 ) NOT NULL ,
preco DECIMAL ( 5 , 2 ) NOT NULL ,
validade DATE ,
categoria_id BIGINT ,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_produto (nome, preco, validade, categoria_id)
VALUES ( "Banana Nanica" , 11.00 , "2022-08-20" , 1 );
INSERT INTO tb_produto (nome, preco, validade, categoria_id)
VALUES ( " Alho " , 18.00 , "2022-08-20" , 4 ) ; 
INSERT INTO tb_produto (nome, preco, validade, categoria_id)
VALUES( " Cebola roxa " , 6.00 , "2022-08-20" , 4 );
INSERT INTO tb_produto (nome, preco, validade, categoria_id)
VALUES ( " Abobrinha " , 9.00 , "2022-08-20" , 2 );
 INSERT INTO tb_produto (nome, preco, validade, categoria_id)
VALUES ( " Milho verde " , 6.00 , "2022-08-20" , 2 );
INSERT INTO tb_produto (nome, preco, validade, categoria_id)
VALUES ( " Melão " , 26.00 , "2022-08-20" , 1 );
INSERT INTO tb_produto (nome, preco, validade, categoria_id)
VALUES ( " Batata Baroa " , 13.00 , "2022-08-20" , 5 ) ; 
INSERT INTO tb_produto (nome, preco, validade, categoria_id)
VALUES( " Brócolis Ninja " , 25.00 , "2022-08-20" , 3 ) ;
INSERT INTO tb_produto (nome, preco, validade, categoria_id)
VALUES ( "Limão Siciliano" , 36.00 , "2022-08-20" , 1 ) ;

SELECT  *  FROM tb_produto;

SELECT  *  FROM tb_produto WHERE preco >  50.00 ;

SELECT  *  FROM tb_produto WHERE preco LIKE 3.00  AND  60.00 ;

SELECT  *  FROM tb_produto WHERE nome LIKE  "%C%" ;

SELECT  *  FROM tb_produto INNER JOIN tb_categoria
ON  tb_categoria . id  =  tb_produto . categoria_id ;

SELECT  *  FROM tb_produto INNER JOIN tb_categoria
ON  tb_categoria . id  =  tb_produto . categoria_id 
WHERE preco_produto LIKE  " %Alta% " ;