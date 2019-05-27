drop database if exists fakultet;
create database fakultet default character set utf8;
use fakultet;

create table student(
sifra int not null primary key auto_imcrement,
ime varchar(50) not null,
prezime varchar(50) not null,
brojindeksa int null
);

create table kolegij(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
opis text,
);

create table rok(
sifra int not null primary key auto_increment,
datum datetime not null,
kolegij int not null
);

create table studentskirok(
student int not null,
rok int not null
);


alter table rok add foreign key (kolegij) references kolegij(sifra);

alter table studentskirok add foreign key student references student(sifra);
alter table studentskirok add foreign key rok references rok(sifra);

insert into student
(ime,prezime)
values
# šifra 1
('Damir','Čavajda'),
# šifra 2
('Mirza','Delagić'),
# šifra 3
('Pero','Perić'),
# šifra 4
('Ivo','Ivić');

insert into kolegij
(naziv,opis)
values
# šifra 1
('Informatika','kolegij o osnovama programiranja'),
# šifra 2
('Marketing','kolegij o osnovama marketinga'),
# šifra 3
('Matematika2','kolegij o integralima i derivacijama');

insert into rok
(datum,kolegij)
values
# šifra 1
('2019-03-06 10:00:00',1),
# šifra 2
('2019-04-06 10:00:00',2),
# šifra 3
('2019-04-06 11:30:00',3);

insert into studentskirok
(student,rok)
values(1,1),(2,3),(3,2),(4,1);







