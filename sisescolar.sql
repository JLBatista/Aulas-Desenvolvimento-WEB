CREATE DATABASE sisescolar;

USE sisescolar;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    tipo ENUM('administrador', 'professor', 'aluno') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);