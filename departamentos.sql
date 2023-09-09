CREATE DATABASE RH; -- criando o banco de dados

USE RH; -- omando para utilizar o banco de dados que foi criado

					-- Criando Tabelas
CREATE TABLE Departamentos(
  Id INT auto_increment primary key,   -- adicionando a chave primaria ao id e ordenando que seja preenchido automaticamente
  NomeDepartamento varchar(255) not null
);

CREATE TABLE Funcionarios(         	-- adicionando a chave primaria ao id e ordenando que seja preenchido automaticamente
  Id INT auto_increment primary key,    
  Nome varchar(255) not null,
  Cargo varchar(255) not null,
  Salario decimal(10,2) not null,
  Departamento_ID INT,
  Foreign Key (Departamento_ID) REFERENCES Departamentos(Id)
);

					-- Inserndo registros na tabela 
INSERT INTO Departamentos (NomeDepartamento)
VALUES
    ('Departamento Pessoal'),
    ('Marketing'),
    ('Tecnologia Da Informacao'),
    ('Cultura'),
    ('Financeiro');

INSERT INTO Funcionarios (Nome, Cargo, Salario, Departamento_ID)
VALUES
    ('Diego Pontes', 'Chefe do departamento pessoal', 3000.00, 1),
    ('Matheus Fagundes', 'Operador financeiro', 5000.00, 2),
    ('Matheus Lima', 'Gestor de Tecnlologia da informacao', 14000.00, 3),
    ('Van Gogh', 'Diretor do setor cultural', 9000.00, 4),
    ('Raffael Moreira', 'Diretor principal de marketing', 5900.00, 5);

	-- Mostrando as informações dos dados inseridos 
	SELECT * FROM RH.Funcionarios;
	SELECT * FROM RH.Departamentos;
