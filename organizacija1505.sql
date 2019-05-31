drop database if exists organizacija;
create database organizacija;
use organizacija;

create table zaposlenik(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
odjel int not null
nadredjeni varchar(50) not null
);

create table odjel(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
voditelj varchar(50) not null
);

alter table zaposlenik add foreign key (odjel) references odjel(sifra);
alter table zaposlenik add foreign key (odjel) references zaposlenik(sifra);