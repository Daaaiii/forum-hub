-- Criação da tabela Curso
CREATE TABLE Curso (
                       id BIGINT AUTO_INCREMENT PRIMARY KEY,
                       nome VARCHAR(255) NOT NULL,
                       categoria VARCHAR(255)
);

-- Criação da tabela Perfil
CREATE TABLE Perfil (
                        id BIGINT AUTO_INCREMENT PRIMARY KEY,
                        nome VARCHAR(255) NOT NULL
);

-- Criação da tabela Usuario
CREATE TABLE Usuario (
                         id BIGINT AUTO_INCREMENT PRIMARY KEY,
                         nome VARCHAR(255) NOT NULL,
                         email VARCHAR(255) NOT NULL,
                         senha VARCHAR(255) NOT NULL
);

-- Criação da tabela associativa Usuario_Perfil
CREATE TABLE Usuario_Perfil (
                                usuario_id BIGINT NOT NULL,
                                perfil_id BIGINT NOT NULL,
                                PRIMARY KEY (usuario_id, perfil_id),
                                FOREIGN KEY (usuario_id) REFERENCES Usuario(id),
                                FOREIGN KEY (perfil_id) REFERENCES Perfil(id)
);

-- Criação da tabela Topico
CREATE TABLE Topico (
                        id BIGINT AUTO_INCREMENT PRIMARY KEY,
                        titulo VARCHAR(255) NOT NULL,
                        mensagem TEXT,
                        dataCriacao VARCHAR(255),
                        status VARCHAR(255),
                        autor_id BIGINT,
                        curso_id BIGINT,
                        FOREIGN KEY (autor_id) REFERENCES Usuario(id),
                        FOREIGN KEY (curso_id) REFERENCES Curso(id)
);

-- Criação da tabela Resposta
CREATE TABLE Resposta (
                          id BIGINT AUTO_INCREMENT PRIMARY KEY,
                          mensagem TEXT,
                          dataCriacao VARCHAR(255),
                          solucao BOOLEAN,
                          topico_id BIGINT,
                          autor_id BIGINT,
                          FOREIGN KEY (topico_id) REFERENCES Topico(id),
                          FOREIGN KEY (autor_id) REFERENCES Usuario(id)
);
