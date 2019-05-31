drop database if exists frizerski;
create database frizerski;
use frizerski;

create table djelatnica(
sifra int not null primary key auto_increment,
osoba int not null,
iban int not null
);

create table osoba(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null
);

create table korisnik(
sifra int not null primary key auto_increment,
osoba int not null
);

create table dogadjaj(
sifra int not null,
djelatnica
usluga
korisnik
vrijemedogovora
);

create table usluga(
sifra
naziv
opis
cijena
);


alter table zaposlenik add foreign key (odjel) references odjel(sifra);
alter table zaposlenik add foreign key (odjel) references zaposlenik(sifra);