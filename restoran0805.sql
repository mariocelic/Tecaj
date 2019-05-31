drop database if exists restoran;
create database restoran default character set utf8;
use restoran;

create table kategorija(
sifra int not null primary key auto_imcrement,
naziv varchar(50) not null,
nadkat varchar(50) not null
);

create table jelo(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
opis text,
kategorija int not null,
cijena decimal(18,2) not null
);

create table pice(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
cijena decimal(18,2) not null

);

create table dogadjaj(
sifra int not null primary key auto_increment,
datum datetime,
jelo_sifra int not null,
pice_sifra int not null
);


alter table