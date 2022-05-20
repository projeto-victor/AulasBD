CREATE DATABASE EXEMPLO;

USE EXEMPLO;

CREATE TABLE JOGADOR (
num_jogadores int PRIMARY KEY AUTO_INCREMENT,
nome_jogadores varchar(255),
codigo_equipe int
);

CREATE TABLE EQUIPE (
codigo_equipe int PRIMARY KEY AUTO_INCREMENT,
nome_equipe varchar(255)
);

ALTER TABLE JOGADOR ADD FOREIGN KEY(codigo_equipe) REFERENCES EQUIPE (codigo_equipe);
