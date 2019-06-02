drop database if exists vrtic;
create database vrtic default character set utf8;
use vrtic;

create table odgajateljica(
sifra int not null primary key auto_increment,
osoba int not null,
strucna_sprema varchar(50) not null,
iban char(34)
);

create table osoba(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
kontakt varchar(50)
);

create table dijete(
sifra int not null primary key auto_increment,
osoba int,
datumrodjenja datetime
);

create table skupina(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
odgajateljica int not null,
dijete int not null 
);

alter table odgajateljica add foreign key (osoba) references osoba(sifra);

alter table dijete add foreign key (osoba) references osoba(sifra);

alter table skupina add foreign key (odgajateljica) references odgajateljica(sifra);
alter table skupina add foreign key (dijete) references dijete(sifra);

