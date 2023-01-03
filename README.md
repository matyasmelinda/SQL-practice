This is an SQL database practice from ITF manual testing course. 

In MySQL was created a database named 'cinemaNou' and 7 tables: 

* 'filme'
* 'program'
* 'actor'
* 'bilet'
* 'rezervari'
* 'client'
* 'produse'

The table 'filme' contains column: 'IDfilm', 'numeFilm', 'durataFilm', 'genFilm', 'idActor'. The table 'program' contains column 'idProgram', 'idFilm', 'dataFilm', 'oraFilm', 'sala'. 

The table 'actor' contains column: 'idActor', 'nume', 'prenume', 'dataNasterii'. 

The table 'bilet' contains column> 'idBilet', 'tipBilet', 'pret'. The table 'rezervari' contains column 'idRezervare', 'idClient', 'loc', 'rand', 'sala', 'idBilet', 'idProgram'. 

The table 'client' contains column: 'idClient', 'nume', 'prenume', 'nrTel', 'varsta', numarCard', 'email'. 

The table 'produse' contains column: 'idProduse', 'nume', 'pret', 'idBilet'. 

There were introduced values in each column.

Different queries were performed inside this sql file: [CinemaNou.sql](https://github.com/matyasmelinda/SQL-practice/blob/cda48ecdff2db21390fc755d86049610e43e3dee/Cinema.sql)

