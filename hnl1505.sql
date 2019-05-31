drop database if exists hnl;
create database hnl;
use hnl;

create table utakmica(
sifra int not null primary key auto_increment,
datum datetime not null,
stadion varchar(50) not null,
domacin int not null,
gost int not null,
rezultat int not null
);

create table momcad(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
mjesto varchar(50) not null
);

alter table utakmica add foreign key (domacin) references momcad(sifra);
alter table utakmica add foreign key (gost) references momcad(sifra);
