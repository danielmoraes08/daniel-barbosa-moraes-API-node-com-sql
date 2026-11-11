CREATE DATABASE IF NOT EXISTS api_usuarios;
USE api_usuarios;

CREATE TABLE IF NOT EXISTS usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(150) NOT NULL
);

INSERT INTO usuarios (nome, email) VALUES
  ('Maria Silva', 'maria@example.com'),
  ('João Souza', 'joao@example.com'),
  ('Ana Pereira', 'ana@example.com');
