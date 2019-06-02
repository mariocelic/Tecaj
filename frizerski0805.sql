drop database if exists frizerski;
create database frizerski default character set utf8;
use frizerski;

create table djelatnica(
sifra int not null primary key auto_increment,
osoba int not null,
iban char(34) not null
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
sifra int not null primary key auto_increment,
djelatnica int not null,
usluga int not null,
korisnik int not null,
vrijemedogovora datetime
);

create table usluga(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
opis text,
cijena decimal(18,2) not null
);

alter table djelatnica add foreign key (osoba) references osoba(sifra);

alter table korisnik add foreign key (osoba) references osoba(sifra);

alter table dogadjaj add foreign key (djelatnica) references djelatnica(sifra);
alter table dogadjaj add foreign key (usluga) references usluga(sifra);
alter table dogadjaj add foreign key (korisnik) references korisnik(sifra);