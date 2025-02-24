CREATE DATABASE locadora;

CREATE TABLE filmes(
	id_filme INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL UNIQUE,
    genero VARCHAR(40) NOT NULL,
    duracao INT NOT NULL
);

CREATE TABLE series(
	id_filme INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL UNIQUE,
    genero VARCHAR(40) NOT NULL,
    temporadas INT NOT NULL
);

ALTER TABLE filmes CHANGE COLUMN duracao duracao TIME;

INSERT INTO filmes (nome, genero, duracao) VALUES
	(
		'Um sonho de liberdade',
        'Drama',
        '02:22:00'        
    ),
    (
		'O poderoso chefão',
        'Drama e Policial',
        '02:55:00'        
    ),
    (
		'A Lista de Schindler',
        'Biopic, Drama e História',
        '03:15:00'        
    );
INSERT INTO series (nome, genero, temporadas) VALUES
	(
		'The Walking Dead',
        'Drama',
        30        
    ),
    (
		'A guerra dos tronos',
        'Drama',
        20        
    ),
    (
		'Reacher',
        'Ação',
        10        
    );

SELECT * FROM filmes WHERE genero = 'Drama';

SELECT * FROM series WHERE temporadas = 20;
    