--Oque precisa para um controle de estoque
-- a Poha do BR_modelo fez eu perder 5 modelos logicos pq mesmo salvando ele não abre os arquivos


CREATE DATABASE estoque;

use estoque;

CREATE TABLE tipo_user(
id_tipo_user int not null auto_increment,
ler enum ("s", "n") not NULL,
alterar enum ("s", "n") NOT NULL,
cadastrar_user enum ("s","n") NOT NULL DEFAULT 'n',
PRIMARY KEY (id_tipo_user)
);

DESC tipo_user;

CREATE TABLE user(
id_user int not null auto_increment,
nome varchar (50) not NULL,
senha VARCHAR(12) not NULL,
id_tipo_user int not NULL,
PRIMARY  KEY(id_user),
FOREIGN KEY (id_tipo_user) REFERENCES tipo_user(id_tipo_user)
);

DESC user;

CREATE TABLE matriz(
id_matriz int not null auto_increment,
id_produto int not NULL,
PRIMARY KEY(id_matriz),
FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

DESC matriz;

CREATE TABLE produtos(
id_produto int not NULL auto_increment,
nome VARCHAR (50) not NULL,
modelo VARCHAR (50),
id_tipo_produto int NOT NULL,
PRIMARY KEY (id_produto),
FOREIGN KEY (id_tipo_produto) REFERENCES tipo_produto(id_tipo_produto)
);

DESC produtos;

CREATE TABLE tipo_produto(
id_tipo_produto int NOT NULL auto_increment,
serializado enum ('s', 'n'),
serial VARCHAR(16),
PRIMARY KEY (id_tipo_produto)
);

DESC tipo_produto;


