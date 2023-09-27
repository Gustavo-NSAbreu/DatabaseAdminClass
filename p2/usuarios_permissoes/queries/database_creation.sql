CREATE DATABASE ensino;

USE ensino;

CREATE TABLE instituicao (
    id UUID NOT NULL,
    nome VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE curso (
    id UUID PRIMARY KEY NOT NULL,
    nome VARCHAR(255) NOT NULL,
    instituicao_id UUID NOT NULL,
    FOREIGN KEY (instituicao_id) REFERENCES instituicao(id)
);

------------------------------------------------------------

CREATE DATABASE enderecos;

USE enderecos;

CREATE TABLE pais (
    id UUID PRIMARY KEY NOT NULL,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE estado (
    id UUID PRIMARY KEY NOT NULL,
    nome VARCHAR(255) NOT NULL,
    pais_id UUID NOT NULL,
    FOREIGN KEY (pais_id) REFERENCES pais(id)
);

CREATE TABLE cidade (
    id UUID PRIMARY KEY NOT NULL,
    nome VARCHAR(255) NOT NULL,
    estado_id UUID NOT NULL,
    FOREIGN KEY (estado_id) REFERENCES estado(id)
);

CREATE TABLE endereco (
    id UUID PRIMARY KEY NOT NULL,
    rua VARCHAR(255) NOT NULL,
    numero INT NOT NULL,
    cep VARCHAR(10) NOT NULL,
    cidade_id UUID NOT NULL,
    FOREIGN KEY (cidade_id) REFERENCES cidade(id)
);

------------------------------------------------------------

CREATE DATABASE pessoas;

USE pessoas;

CREATE TABLE pessoa (
    id UUID PRIMARY KEY NOT NULL,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL
);

CREATE TABLE usuario (
    id UUID PRIMARY KEY NOT NULL,
    nome VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    pessoa_id UUID NOT NULL,
    FOREIGN KEY (pessoa_id) REFERENCES pessoa(id)
);

CREATE TABLE contato (
    id UUID PRIMARY KEY NOT NULL,
    tipo VARCHAR(255) NOT NULL,
    valor VARCHAR(255) NOT NULL,
    pessoa_id UUID NOT NULL,
    FOREIGN KEY (pessoa_id) REFERENCES pessoa(id)
);

-- INLINE FOR CLI

CREATE DATABASE ensino;

USE ensino;

CREATE TABLE instituicao (    id UUID NOT NULL,    nome VARCHAR(255) NOT NULL,    PRIMARY KEY (id));
CREATE TABLE curso (    id UUID PRIMARY KEY NOT NULL,    nome VARCHAR(255) NOT NULL,    instituicao_id UUID NOT NULL,    FOREIGN KEY (instituicao_id) REFERENCES instituicao(id));

------------------------------------------------------------

CREATE DATABASE enderecos;

USE enderecos;

CREATE TABLE pais (    id UUID PRIMARY KEY NOT NULL,    nome VARCHAR(255) NOT NULL);
CREATE TABLE estado (    id UUID PRIMARY KEY NOT NULL,    nome VARCHAR(255) NOT NULL,    pais_id UUID NOT NULL,    FOREIGN KEY (pais_id) REFERENCES pais(id));
CREATE TABLE cidade (    id UUID PRIMARY KEY NOT NULL,    nome VARCHAR(255) NOT NULL,    estado_id UUID NOT NULL,    FOREIGN KEY (estado_id) REFERENCES estado(id));

CREATE TABLE endereco (    id UUID PRIMARY KEY NOT NULL,    rua VARCHAR(255) NOT NULL,    numero INT NOT NULL,    cep VARCHAR(10) NOT NULL,    cidade_id UUID NOT NULL,    FOREIGN KEY (cidade_id) REFERENCES cidade(id));

------------------------------------------------------------

CREATE DATABASE pessoas;

USE pessoas;

CREATE TABLE pessoa (    id UUID PRIMARY KEY NOT NULL,    nome VARCHAR(255) NOT NULL,    data_nascimento DATE NOT NULL);
CREATE TABLE usuario (    id UUID PRIMARY KEY NOT NULL,    nome VARCHAR(255) NOT NULL,    senha VARCHAR(255) NOT NULL,    pessoa_id UUID NOT NULL,    FOREIGN KEY (pessoa_id) REFERENCES pessoa(id));
CREATE TABLE contato (    id UUID PRIMARY KEY NOT NULL,    tipo VARCHAR(255) NOT NULL,    valor VARCHAR(255) NOT NULL,    pessoa_id UUID NOT NULL,    FOREIGN KEY (pessoa_id) REFERENCES pessoa(id));
