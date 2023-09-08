create database agencia;
show databases;
use agencia;

create table Departamento(
Departamentoid int primary key,
Nomedepartamento varchar (255)
);

insert into Departamento (Departamentoid, Nomedepartamento) values 
(1, "Analista"),
(2, "Advocacia"),
(3, "TI"),
(4, "Vendedor"),
(5, "Medicina");

create table Funcionarios(
Funcionarioid int primary key,
Nome varchar (255),
Cargo varchar (255),
Salario int,
Departamentoid int,
foreign key (Departamentoid) references Departamento (Departamentoid)
);

insert into Funcionarios (Funcionarioid, Nome, Cargo, Salario, Departamentoid) values
(1, "Deffour Henrique", "Analista de banco de dados", 8000.00, 1),
(2, "Mário Bros","advogada", 4000.00, 2),
(3, "Joel Embiid", "Analista de TI", 12000.00,3),
(4, "Kendrick Lamar", "Vendedor", 6000.00, 4),
(5, "Stephen Curry", "Médico", 5000.00, 5);

select * from Departamento;
select * from Funcionarios;