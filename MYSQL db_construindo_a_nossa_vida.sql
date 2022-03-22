CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
setor VARCHAR(255) NOT NULL,
estoque VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (tipo, setor, estoque) 
VALUES ("Ferragens", "Area Externa/Interna", "Disponivel");

INSERT INTO tb_categoria (tipo, setor, estoque) 
VALUES ("Pintura", "Area Externa/Interna", "Disponivel");

INSERT INTO tb_categoria (tipo, setor, estoque) 
VALUES ("Ferramentas", "Area Externa/Interna", "Disponivel");

INSERT INTO tb_categoria (tipo, setor, estoque) 
VALUES ("Pisos e Revestimentos", "Area Externa/Interna", "Disponivel");

INSERT INTO tb_categoria (tipo, setor, estoque) 
VALUES ("Elétrica", "Area Externa/Interna", "Disponivel");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
garantia_meses INT,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id) 
VALUES ("Tubo redondo de Aluminio", 39.90, 3, 1 );
INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id) 
VALUES ("Tinta Fosco Interior Rende e Cobre Muito Standard 20L Branco", 339.90, 24, 2 );
INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id) 
VALUES ("Furadeira de Impacto Bosch GSB 13", 599.90, 12 , 3 );
INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id) 
VALUES ("Porcelanato Yankee Wood 26x106 Retificado Caixa 2,00m²", 175.90, 36 , 4 );
INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id) 
VALUES ("Kit 10 Plafon Plafonier Bocal Soquete ", 38.29, 6 , 5 );
INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id) 
VALUES ("Rejunte Resinado Porcelanato 1 Kg ", 9.90, 12 , 4 );
INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id) 
VALUES ("Broxa Atlas para pintura", 13.00, 24 , 2 );
INSERT INTO tb_produto (nome, preco, garantia_meses, categoria_id) 
VALUES ("Cabo Flexível 2,5mm 100Metros Vermelho", 190.00, 46 , 5 );


SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50.00;

SELECT * FROM tb_produto WHERE preco BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_produto WHERE nome LIKE "%C%";

SELECT * FROM tb_produto INNER JOIN tb_categoria 
ON tb_categoria.id = tb_produto.categoria_id; 

SELECT * FROM tb_produto INNER JOIN tb_categoria 
ON tb_categoria.id = tb_produto.categoria_id 
WHERE nome LIKE "%x%";