drop database if exists postolar;
create database postolar default character set utf8;
use postolar;

create table korisnik(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not nul,
brojmobitela int
);

create table obuca(
sifra int not null primary key auto_increment,
vrsta varchar(50) not null,
opis_popravka text,
korisnik int not null
);

create table popravak(
sifra int not null primary key auto_increment,
cijena decimal(18,2) not null,
kolicina int not null,
sa_segrtom boolean not null,
obuca int not null
);

alter table obuca add foreign key (korisnik) references korisnik(sifra);

alter table popravak add foreign key (obuca) references obuca(sifra);