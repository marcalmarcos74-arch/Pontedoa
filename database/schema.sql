CREATE DATABASE IF NOT EXISTS pontedoa CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE pontedoa;

CREATE TABLE usuario (
  id_usuario INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(150) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  senha_hash VARCHAR(255) NOT NULL,
  perfil ENUM('coordenador','voluntario') NOT NULL,
  ativo BOOLEAN DEFAULT TRUE
);

CREATE TABLE doador (
  id_doador INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(150) NOT NULL,
  cpf VARCHAR(14) UNIQUE NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  telefone VARCHAR(20),
  data_cadastro DATE NOT NULL,
  ativo BOOLEAN DEFAULT TRUE
);

CREATE TABLE categoria (
  id_categoria INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) UNIQUE NOT NULL,
  descricao TEXT,
  ativo BOOLEAN DEFAULT TRUE
);

CREATE TABLE item (
  id_item INT AUTO_INCREMENT PRIMARY KEY,
  id_categoria INT NOT NULL,
  nome VARCHAR(150) NOT NULL,
  quantidade INT NOT NULL DEFAULT 0,
  prioridade ENUM('baixa','media','alta') DEFAULT 'media',
  ativo BOOLEAN DEFAULT TRUE,
  FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

CREATE TABLE doacao (
  id_doacao INT AUTO_INCREMENT PRIMARY KEY,
  id_doador INT NOT NULL,
  id_usuario INT NOT NULL,
  data_doacao DATE NOT NULL,
  descricao TEXT NOT NULL,
  status ENUM('pendente','entregue','cancelada') DEFAULT 'pendente',
  data_entrega DATE,
  data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (id_doador) REFERENCES doador(id_doador),
  FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE doacao_item (
  id_doacao INT NOT NULL,
  id_item INT NOT NULL,
  quantidade INT NOT NULL,
  data_adicao DATE NOT NULL,
  PRIMARY KEY (id_doacao, id_item),
  FOREIGN KEY (id_doacao) REFERENCES doacao(id_doacao),
  FOREIGN KEY (id_item) REFERENCES item(id_item)
);
