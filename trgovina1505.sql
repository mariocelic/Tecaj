drop database if exists trgovina;
create database trgovina;
use trgovina;

create table racun(
sifra int not null primary key auto_increment,
datum datetime not null,
kupac varchar(50) not null,
);

create table stavka(
sifra int not null primary key auto_increment,
racun int not null,
kolicina decimal not null
);

create table proizvod(
sifra int not null primary key auto_increment,
naziv varchar(50) not null
); 
