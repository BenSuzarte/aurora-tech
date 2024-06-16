CREATE DATABASE IF NOT EXISTS AuroraTech;
USE AuroraTech;

CREATE TABLE Usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    contato VARCHAR(20) NOT NULL
);

CREATE TABLE Contratado (
    id INT PRIMARY KEY,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    data_nascimento VARCHAR(10) NOT NULL,
    FOREIGN KEY (id) REFERENCES Usuario(id)
);

CREATE TABLE Empresa (
    id INT PRIMARY KEY,
    cnpj VARCHAR(14) NOT NULL UNIQUE,
    sede VARCHAR(255) NOT NULL,
    FOREIGN KEY (id) REFERENCES Usuario(id)
);

CREATE TABLE Vagas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idUsuario INT NOT NULL,
    titulo VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL,
    localidade VARCHAR(255) NOT NULL,
    modalidade VARCHAR(50) NOT NULL,
    periodo VARCHAR(50) NOT NULL,
    FOREIGN KEY (idUsuario) REFERENCES Usuario(id)
);