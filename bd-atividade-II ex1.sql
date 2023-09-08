CREATE DATABASE Clientes;
SHOW DATABASES;
USE clientes;

CREATE TABLE Clientes(

ClienteID int auto_increment,
Nome varchar (255),
Email varchar (255),
Telefone varchar (255),
primary key (ClienteID)

);

INSERT INTO clientes (CLIENTEID, Nome, Email, Telefone) values (1, "Joel Embiid", "embiidao@gmail.com", "(21) 92101-0021)");
INSERT INTO clientes (CLIENTEID, Nome, Email, Telefone) values (2, "Lebron James", "lebraojames@gmail.com", "(21) 98765- 5549");
INSERT INTO clientes (CLIENTEID, Nome, Email, Telefone) values (3, "Michael Jordan", "jordan@gmail.com", "(21) 99933- 2123");
INSERT INTO clientes (CLIENTEID, Nome, Email, Telefone) values (4, " Luka Doncic", "doncic@gmail.com", "(21) 91977-7707");
INSERT INTO clientes (CLIENTEID, Nome, Email, Telefone) values (5, " Stephen Curry", "curryzinho@gmail.com", "(21) 92210- 1030");

select * from clientes;

CREATE TABLE pedidos(

PedidoID int primary key,
ClienteID int not null,
DataPedido date not null,
ValorTotal decimal (10,2) not null,
foreign key (ClienteID) references Clientes ( ClienteID)
);

insert into Pedidos (PedidoID, ClienteID, DataPedido,ValorTotal) values
(1,1,'2023-02-11'),
(2,2, '2023-03-21'),
(3,3, '2023-05-25'),
(4,4,'2023-08-10'),
(5,5, '2023-09-15');

select * from Clientes;
select * from Pedidos;
