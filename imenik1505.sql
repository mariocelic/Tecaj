drop database if exists imenik;
create database imenik;
use imenik;

create table kontakt(
sifra int not null primary key auto_increment,
ime varchar(50) int not null,
prezime varchar(50) int not null,
broj int not null,
vrsta int not null
);

create table vrsta(
sifra int not null primary key auto_increment,
naziv varchar(50)
);

alter table kontakt add foreign key (vrsta) references vrsta(sifra);


