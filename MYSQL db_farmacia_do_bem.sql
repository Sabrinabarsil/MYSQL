CREATE DATABASE  db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE  tb_categoria (
id BIGINT AUTO_INCREMENT,
tipo VARCHAR ( 255 ) NOT NULL ,
tarja VARCHAR ( 255 ) NOT NULL ,
classe VARCHAR ( 255 ) NOT NULL ,
PRIMARY KEY (id)
);
INSERT INTO tb_categoria (tipo, classe, tarja)
VALUES ( " Antialérgicos " , " Infantil " , " Amarela " );

INSERT INTO tb_categoria (tipo, classe, tarja)
VALUES ( " Psiquiátricos " , " Adulto " , " Preto " );

INSERT INTO tb_categoria (tipo, classe, tarja)
VALUES ( " Antibióticos " , " Infantil " , " Vermelha " );

INSERT INTO tb_categoria (tipo, classe, tarja)
VALUES ( " Alopático " , " Infantil " , " Amarela " );

INSERT INTO tb_categoria (tipo, classe, tarja)
VALUES ( " Fitoterápico " , " Adulto " , " Natural " );

CREATE TABLE  tb_remedio (
id BIGINT AUTO_INCREMENT,
nome VARCHAR ( 255 ) NOT NULL ,
uso VARCHAR ( 255 ) NOT NULL ,
categoria VARCHAR ( 255 ) NOT NULL ,
preco DECIMAL ( 5 , 2 ) NOT NULL ,
categoria_id BIGINT ,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);
INSERT INTO tb_remedio (nome, uso, categoria, preco, categoria_id)
VALUES ( " Buscofem " , " Oral " , " Original " , 60.00 , 2 ) ; 
INSERT INTO tb_remedio (nome, uso, categoria, preco, categoria_id)
VALUES ( " Ponstan " , " Oral " , " Genérico " , 5.00 , 2 ) ; 
INSERT INTO tb_remedio (nome, uso, categoria, preco, categoria_id)
VALUES ( " Azitromicina " , " Oral " , " Genérico " , 25.00 ,1 ) ;
INSERT INTO tb_remedio (nome, uso, categoria, preco, categoria_id)
VALUES ( " Orlislat " , " Oral " , " Original " , 80.00 ,3 ) ; 
INSERT INTO tb_remedio (nome, uso, categoria, preco, categoria_id)
VALUES ( " Polaramina " , " Oral " , " Original " , 65.00 ,4 ) ;
INSERT INTO tb_remedio (nome, uso, categoria, preco, categoria_id)
VALUES ( " Allegra " , " Oral " , " Original " , 20.00 ,4 ) ; 
INSERT INTO tb_remedio (nome, uso, categoria, preco, categoria_id)
VALUES ( " Paroxetina " , " Oral " , " Original " , 100.00, 5 ) ;
INSERT INTO tb_remedio (nome, uso, categoria, preco, categoria_id)
VALUES ( " Fluoxetina " , " Oral " , " Original " , 105.00, 5 ) ; 

SELECT  *  FROM tb_remedio;

SELECT  *  FROM tb_remedio WHERE preco >  50.00 ;

SELECT  *  FROM tb_remedio WHERE preco BETWEEN 3.00  AND  60.00 ;

SELECT  *  FROM tb_remedio WHERE nome LIKE  " %B% " ;

SELECT  *  FROM tb_remedio INNER JOIN tb_categoria
ON  tb_categoria . id  =  tb_remedio . categoria_id ;

SELECT  *  FROM tb_categoria INNER JOIN tb_remedio
ON  tb_categoria . id  =  tb_remedio . categoria_id
WHERE tarja LIKE  " %Preto% " ;