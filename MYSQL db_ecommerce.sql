CREATE DATABASE db_ecommerce;

USE db_ecommerce;
CREATE TABLE tb_controle( 
id bigint AUTO_INCREMENT, 
produto VARCHAR (255) NOT NULL,
tamanho VARCHAR (255) ,
descricao VARCHAR (255) ,
preco decimal not null, 
quant int not null,
PRIMARY KEY (id)
);

INSERT INTO tb_controle (produto, tamanho, descricao, preco, quant)
VALUES ("Regata Camys", "P/M/G/GG", "Regata Em Algodão Egípcio gola alta", 159.90, 70);

INSERT INTO tb_controle (produto, tamanho, descricao, preco, quant)
VALUES ("Camiseta Poll", "P/M/G/GG", "Camiseta Em Viscolinho Premium Pool ", 143.65, 35);

INSERT INTO tb_controle (produto, tamanho, descricao, preco, quant)
VALUES ("Short Pop", "P/M/GG", "Shorts Em Moletom Premium Very Cozy Pop", 129.90, 20);

INSERT INTO tb_controle (produto, tamanho, descricao, preco, quant)
VALUES ("Conjunto Lilac", "M/G/GG", "Conj. Em Algodão Egípcio Cotton Set Gola V Lilás", 349.90, 12);

INSERT INTO tb_controle (produto, tamanho, descricao, preco, quant)
VALUES ("Camiseta Tie Dye", "GG", "Camiseta Premium Tint Tie dye tint ", 179.65, 82);

INSERT INTO tb_controle (produto, tamanho, descricao, preco, quant)
VALUES ("PACK CAMYS"," ", "Sacola e Boné Pack", 209.65, 15);

INSERT INTO tb_controle (produto, tamanho, descricao, preco, quant)
VALUES ("Calça Slouchy", "P/M/G", "Premium Camys Very Cozy Preto", 490.30, 08);

INSERT INTO tb_controle (produto, tamanho, descricao, preco, quant)
VALUES ("Ecobag", " ", "bolsa de tecido algodão cru", 25.90, 600);


SELECT * FROM tb_controle;
SELECT  CONCAT("R$ ", FORMAT (preco, 2, "pt_BR")) AS preco FROM tb_controle; 
ALTER TABLE tb_controle MODIFY preco decimal (8,2);
SELECT * FROM tb_controle WHERE preco > 500.00;
SELECT * FROM tb_controle WHERE preco < 500.00;


