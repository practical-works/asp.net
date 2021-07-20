
create database SGBD1_TP06
use SGBD1_TP06;
go

Create table Employés(
Matricule int primary key,
Nom varchar(50),
Prénom varchar(50),
Fonction varchar(50),
Salaire varchar(50),
Département int foreign key references Départements(Numéro) 
on delete cascade on update cascade)
go


create table Départements(
Numéro int primary key,
Nom varchar(50),
Ville varchar(50))
go