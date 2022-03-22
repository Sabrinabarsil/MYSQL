CREATE DATABASE  db_generation_game_online ;

USE db_generation_game_online;

CREATE TABLE  tb_classe (
id BIGINT AUTO_INCREMENT,
nivel INT  NOT NULL ,
classe_personagem VARCHAR ( 255 ) NOT NULL ,
fase VARCHAR ( 255 ) NOT NULL ,
PRIMARY KEY (id)
);

INSERT INTO tb_classe (classe_personagem, fase, nivel)
VALUES ( " Guerreiro " , " Avançado " , 92 );

INSERT INTO tb_classe (classe_personagem, fase, nivel)
VALUES ( " Necromante" , " Básico " , 12 );

INSERT INTO tb_classe (classe_personagem, fase, nivel)
VALUES ( " caçador " , " Intermediário " , 47 );

INSERT INTO tb_classe (classe_personagem, fase, nivel)
VALUES ( " Ladino " , " Avançado " , 99 );

INSERT INTO tb_classe (classe_personagem, fase, nivel)
VALUES ( " Bárbaro " , " Básico " , 8 );

SELECT  *  FROM tb_classe;

CREATE  TABLE  tb_personagem (
id BIGINT AUTO_INCREMENT,
nome varchar ( 255 ),
atk int  NOT NULL ,
def int  NOT NULL ,
classe_id bigint ,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);

INSERT INTO tb_personagem (nome, atk, def, classe_id)
VALUES ( " Moacir " , 10.000 , 5.000 , 1 );

INSERT INTO tb_personagem (nome, atk, def, classe_id)
VALUES ( " Elvira " , 500 , 1000 , 1 );

INSERT INTO tb_personagem (nome, atk, def, classe_id)
VALUES ( " Mamute " , 3000 , 10000 , 1 );

INSERT INTO tb_personagem (nome, atk, def, classe_id)
VALUES ( " willow " , 1000 , 1000 , 4 );

INSERT INTO tb_personagem (nome, atk, def, classe_id)
VALUES ( " Jason Mamoa " , 8000 , 5000 , 5 );

INSERT INTO tb_personagem (nome, atk, def, classe_id)
VALUES ( " Galadriel " , 700 , 1000 , 3 );

INSERT INTO tb_personagem (nome, atk, def, classe_id)
VALUES ( " Constantine " , 6000 , 4000 , 2 );

INSERT INTO tb_personagem (nome, atk, def, classe_id)
VALUES ( " Aroldo " , 10.000 , 10.000 , 4 );

SELECT  *  FROM tb_personagem;

SELECT  *  FROM tb_personagem WHERE atk >  2000 ;

SELECT  *  FROM tb_personagem WHERE def BETWEEN 1000  AND  2000 ;

SELECT  *  FROM tb_personagem WHERE nome LIKE  " %C% " ;


SELECT  *  FROM tb_personagem INNER JOIN tb_classe
ON  tb_classe . id  =  tb_personagem . classe_id ;

SELECT  *  FROM tb_personagem INNER JOIN tb_classe
ON  tb_classe . id  =  tb_personagem . classe_id
WHERE classe_personagem LIKE  " %Arqueiro% " ;
