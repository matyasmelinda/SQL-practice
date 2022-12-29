drop database cinemaNou;
drop table filme;

create database cinemaNou;

create table filme (
idFilm int primary key auto_increment,
numeFilm varchar (20),
durataFilm int,
genFilm varchar (10),
idActor int);
 
 create table program (
 idProgram int primary key auto_increment,
 idFilm int,
 dataFilm date,
 oraFilm varchar (10),
 sala varchar (2),
 constraint fk_idFilm_program foreign key (idFilm) references filme (idFilm));
 
 create table actor (
 idActor int primary key auto_increment,
 nume varchar (30),
 prenume varchar (30),
 dataNasterii date );
 
 alter table filme 
 add foreign key fk_idActor_film (idActor) references actor (idActor);
 
 insert into actor (nume, prenume, dataNasterii) values ('Brad', 'Pitt', '1969-02-25');
 select * from actor;
insert into actor (nume, prenume, dataNasterii) values ('John', 'Travolta', '1959-05-18');
insert into actor (nume, prenume, dataNasterii) values ('Johnny', 'Depp', '1970-11-15');

insert into filme (numeFilm, durataFilm, genFilm, idActor) values ('Avatar', 120,'scifi', 1);
insert into filme (numeFilm, durataFilm, genFilm, idActor) values ('Star Wars', 120,'scifi', 2);
insert into filme (numeFilm, durataFilm, genFilm, idActor) values ('Titanic', 100,'scifi',2);
select * from filme;

select numeFilm from filme f inner join actor a on f.idActor = a.idActor where a.nume = 'Brad';

create table bilet (
idBilet int primary key auto_increment,
tipBilet varchar (10),
pret int);

create table rezervari (
idRezervare int primary key auto_increment,
idClient int,
loc int,
rand int,
sala varchar (2),
idBilet int,
idProgram int,
constraint fk_idBilet_rezervari foreign key (idBilet) references bilet (idBilet),
constraint fk_idProgram_rezervari foreign key (idProgram) references program (idProgram));
 
drop table rezervari;

create table client (
idClient int primary key auto_increment,
nume varchar (20),
prenume varchar (20),
nrTel int,
varsta int,
numarCard int,
email varchar (30) );

alter table rezervari 
add foreign key fk_idClient_rezervari (idClient) references client (idClient);
 
create table produse (
idProduse int primary key auto_increment,
nume varchar (20),
pret int,
idBilet int,
constraint fk_idBilet_produse foreign key (idBilet) references bilet (idBilet));

insert into bilet (tipBilet, pret) values ('copii', 12);
insert into bilet (tipBilet, pret) values ('elev', 14);
insert into bilet (tipBilet, pret) values ('student', 14);
insert into bilet (tipBilet, pret) values ('normal', 18);
insert into bilet (tipBilet, pret) values ('pensionar', 14);
select * from bilet;

insert into program (idFilm, dataFilm, oraFilm, sala) values (1, '2022-06-30', 15.45, 'A');
insert into program (idFilm, dataFilm, oraFilm, sala) values (1, '2022-06-30', 19.00,'B');
insert into program (idFilm, dataFilm, oraFilm, sala) values (2, '2022-06-30', 20.45, 'D');
insert into program (idFilm, dataFilm, oraFilm, sala) values (2, '2022-07-01', 17.45, 'D');
insert into program (idFilm, dataFilm, oraFilm, sala) values (3, '2022-06-30', 12.30, 'C');
insert into program (idFilm, dataFilm, oraFilm, sala) values (3, '2022-07-01', 21.30, 'A');
select * from program;

insert into rezervari (idClient, loc, rand, sala, idBilet, idProgram) values (1, 16, 15, 'D', 2, 6);
insert into rezervari (idClient, loc, rand, sala, idBilet, idProgram) values (2, 22, 10, 'A', 1, 1);
insert into rezervari (idClient, loc, rand, sala, idBilet, idProgram) values (10, 32, 1, 'D', 2, 6);
insert into rezervari (idClient, loc, rand, sala, idBilet, idProgram) values (10, 12, 5, 'C', 5, 5);
insert into rezervari (idClient, loc, rand, sala, idBilet, idProgram) values (8, 6, 18, 'B', 3, 4);
insert into rezervari (idClient, loc, rand, sala, idBilet, idProgram) values (7, 9, 15, 'D', 2, 3);
insert into rezervari (idClient, loc, rand, sala, idBilet, idProgram) values (6, 8, 20, 'C', 4, 2);
select * from rezervari;

insert into client (nume, prenume, nrTel, varsta, numarCard, email) values ('Ion', 'Ionescu', '0752125896', '35', '1258', 'ion.ionescu@gmail.com');
insert into client (nume, prenume, nrTel, varsta, numarCard, email) values ('Petre', 'Voicu', '0733589639', '25', '1890', 'petre.voicu@yahoo.com');
insert into client (nume, prenume, nrTel, varsta, numarCard, email) values ('Diana', 'Roman', '0755222896', '18', '2596', 'd.roman@gmail.com');
insert into client (nume, prenume, nrTel, varsta, numarCard, email) values ('Ioana', 'Furdui', '0744896253', '55', '3896', 'furdui.ioana@gmail.com');
insert into client (nume, prenume, nrTel, varsta, numarCard, email) values ('Gabriel', 'Sandu', '0745666397', '16', '4890', 'sandu.gabi@yahoo.com');
insert into client (nume, prenume, nrTel, varsta, numarCard, email) values ('Oana', 'Vasilescu', '075212226', '65', '1008', 'oana.vasilescu@gmail.com');
insert into client (nume, prenume, nrTel, varsta, numarCard, email) values ('Gabriela', 'Badescu', '0722155886', '22', '5258', 'gabibadescu@gmail.com');
insert into client (nume, prenume, nrTel, varsta, numarCard, email) values ('Andrada', 'Goga', '0723258886', '44', '3369', 'andrada.goga@yahoo.com');
insert into client (nume, prenume, nrTel, varsta, numarCard, email) values ('Mihai', 'Preda', '0756662356', '28', '5258', 'preda.m@gmail.com');
insert into client (nume, prenume, nrTel, varsta, numarCard, email) values ('Mihaela', 'Ionescu', '0755335896', '33', '5258', 'miha.ionescu@gmail.com');
select * from client;

insert into produse (nume, pret, IdBilet) values ('popcorn mic', 6, 1);
insert into produse (nume, pret, IdBilet) values ('popcorn mediu', 12, 2);
insert into produse (nume, pret, IdBilet) values ('popcorn mare', 14, 3);
insert into produse (nume, pret, IdBilet) values ('nachos mediu', 13, 4);
insert into produse (nume, pret, IdBilet) values ('nachos mare', 16, 5);
select * from produse;

select * from bilet where pret =10;
select * from bilet where pret >10;
select * from bilet where pret <10;
select * from bilet where pret <=10;

select * from program where sala = 'A';
select * from program where sala = 'B';
select * from program where sala = 'C';
select * from program where sala = 'D';

select * from rezervari where idClient = 10;
select * from rezervari where idClient = 2;
select * from rezervari where idClient = 3;
select * from rezervari where idClient = 7;

select * from produse where pret between 10 and 16;

select * from client where nume like 'i%';
select * from client where nume like '%on';
select * from client where nume like '%n%';

select * from program where idFilm = 2;


select idFilm, count(idFilm) from rezervari right join program on rezervari.idProgram = program.idProgram
group by idFilm
having count(idFilm)<5;


select * from rezervari inner join program on rezervari.idProgram = program.dataFilm like '2022%';
select sum(bilet.pret)from rezervari right join program on rezervari. idProgram = program.idProgram
inner join bilet on bilet.idBilet = rezervari.idBilet
where program.dataFilm like '2022%';














