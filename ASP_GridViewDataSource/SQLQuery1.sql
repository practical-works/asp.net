
create database SGBD1_TP06
use SGBD1_TP06;
go

Create table Employ�s(
Matricule int primary key,
Nom varchar(50),
Pr�nom varchar(50),
Fonction varchar(50),
Salaire varchar(50),
D�partement int foreign key references D�partements(Num�ro) 
on delete cascade on update cascade)
go


create table D�partements(
Num�ro int primary key,
Nom varchar(50),
Ville varchar(50))
go