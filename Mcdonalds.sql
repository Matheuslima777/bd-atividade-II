
	CREATE DATABASE Mcdonalds;
	
	USE Mcdonalds;

CREATE TABLE Clientes (
  Id INT auto_increment primary key,
  Nome varchar(255) not null,
  Email varchar(255) not null unique,
  Telefone varchar(22) not null
);
 
CREATE TABLE Pedidos (
     Id Int auto_increment primary key,
	 cliente_id INT,
     DataPedido date,
     ValorTotal decimal(10,2),
	 Foreign Key (cliente_Id) REFERENCES Clientes(Id)
);


INSERT INTO Clientes(Nome, Email, Telefone)
VALUES
    ('Macita', 'Macita@gmail.com', '7194002-8922'),
    ('Pontes', 'Pontudo@gmail.com', '7197070-9090'),
    ('Kanye West', 'ye@gmail.com', '7193209-5345'),
    ('Beyonce', 'bey@gmail.com', '7197777-6666'),
    ('Antoine de Saint-Exupery', 'littleprince@gmail.com', '719879-7698');


INSERT INTO Pedidos (cliente_Id,DataPedido, ValorTotal)
VALUES
    (3, '2023-10-07', 89.79),
    (2, '2023-11-21', 166.78),
    (1, '2023-08-16', 19.23),
    (5, '2001-09-11', 2900.75),
    (4, '2023-12-30', 1699.00);
    

SELECT * FROM Mcdonalds.Pedidos;
SELECT * FROM Mcdonalds.Clientes;