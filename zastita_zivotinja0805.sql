drop database if exists zastita;
create database zastita default character set utf8;
use frizerski;

create table djelatnik(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
oib char(11)
);

create table sticenik(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
vrsta varchar(50),
opis text
);

create table prostor(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
opis text
);

create table dogadjaj(
sifra int not null,
djelatnik int not null,
sticenik int not null,
prostor int not null,
vrijeme datetime
);



alter table dogadjaj add foreign key (djelatnik) references djelatnik(sifra);
alter table dogadjaj add foreign key (sticenik) references sticenik(sifra);
alter table dogadjaj add foreign key (prostor) references prostor(sifra);