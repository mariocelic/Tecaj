drop database if exists muzej;
create database muzej character defaul set utf8;
use muzej;

create table sponzor(
sifra int not null primary key auto_increment,
naziv varchar(50)
);

create table kustos(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null
);

create table djelo(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
vrsta varchar(50)
);

create table izlozba(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
vrijemepocetka datetime,
kustos int not null,
sponzor int not null,
djelo int not null 
);

alter table izlozba add foreign key (sponzor) references sponzor(sifra);
alter table izlozba add foreign key (kustos) references kustos(sifra);
alter table izlozba add forign key  (djelo) references djelo(sifra);