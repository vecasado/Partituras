DROP DATABASE IF EXISTS partitura;
DROP TABLE IF EXISTS partitura.instrumento;
DROP TABLE IF EXISTS partitura.cancion;

CREATE DATABASE partitura DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE partitura;

-- Creamos la tabla de instrumentos
CREATE TABLE partitura.instrumento (
codInstrumento INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR( 30) NOT NULL,
PRIMARY KEY ( codInstrumento ) 
);

-- Creamos la tabla de canciones

CREATE TABLE partitura.cancion (
codCancion INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR( 30) NOT NULL ,
grupo VARCHAR( 50 ) NOT NULL ,
url VARCHAR( 50 ) NOT NULL ,
codInstrumento INT NOT NULL ,
PRIMARY KEY ( codCancion ) ,
CONSTRAINT fk_codInstrumento FOREIGN KEY (codInstrumento) REFERENCES instrumento (codInstrumento) ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- Insertamos los datos de instrumentos
INSERT INTO partitura.instrumento (nombre) VALUES ('Piano');
INSERT INTO partitura.instrumento (nombre) VALUES ('Violin');
INSERT INTO partitura.instrumento (nombre) VALUES ('Guitarra');
INSERT INTO partitura.instrumento (nombre) VALUES ('Flauta');

-- Insertamos los datos de canciones PIANO
-- INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('','','', 1);

INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('Sarias Song','BSO The Legend of Zelda: Ocarina of Time','https://www.youtube.com/watch?v=QUc6jyzND0U',1);
INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('The Scientist','Coldplay','https://www.youtube.com/watch?v=KdGEjOabtcU', 1);
INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('Dont stop me now X Bohemian Rhapsody','Queen','https://www.youtube.com/watch?v=W35w8pTIKH8', 1);
INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('Gladiator','Hans Zimmer','https://www.youtube.com/watch?v=uMRYkjPgM1o', 1);
INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('The Force Theme','BSO Star Wars','https://www.youtube.com/watch?v=Iq6g_4AwUWs', 1);
INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('All of Me','John Legend','https://www.youtube.com/watch?v=b3E6E6hYSSI', 1);
INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('Easy On Me','Adele','https://www.youtube.com/watch?v=Xo_7HAb__FY', 1);


-- Insertamos los datos de canciones VIOLIN
-- INSERT INTO partitura.canciones (nombre, grupo, url, codInstrumento) VALUES ('','','', 2);
INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('Zombie','The Cranberries','https://www.youtube.com/watch?v=I7rfVF3xrhE', 2);
INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('He is a pirate','Hans Zimmer','https://www.youtube.com/watch?v=_Wp3LT5ZKLs', 2);
INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('Hedwigs Theme','BSO Harry Potter','https://www.youtube.com/watch?v=WFDxEaxUbgI', 2);
INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('Mad World','Gary Jules','https://www.youtube.com/watch?v=ren7yBf1zeY', 2);
INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('Halleluya','Leonard Cohen','https://www.youtube.com/watch?v=Uujw413Ety0', 2);
INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('Cant help falling in love','Elvis Presley','https://www.youtube.com/watch?v=GC7S-Xdg3o8', 2);
-- INSERT INTO partitura.canciones (nombre, grupo, url, codInstrumento) VALUES ('','','', 2);

-- Insertamos los datos de canciones GUITARRA
-- INSERT INTO partitura.canciones (nombre, grupo, url, codInstrumento) VALUES ('','','', 3);
INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('Zombie','The Cranberries','https://www.youtube.com/watch?v=O9Zu1ImOeH8', 3);
INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('In the end','Linkin Park','https://www.youtube.com/watch?v=53YsUgtV4Sg', 3);
INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('Perfect','Ed Sheeran','https://www.youtube.com/watch?v=mSiLPNXJU4E', 3);
INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('Lost Boy','Ruth B','https://www.youtube.com/watch?v=Ko7y6eDgCZE', 3);
INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('The bridge','Red hot chili peppers','https://www.youtube.com/watch?v=2STsox6rDb8', 3);
INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('Complicated','Avril Lavigne','https://www.youtube.com/watch?v=zpS402dqLEo', 3);

-- Insertamos los datos de canciones FLAUTA
-- INSERT INTO partitura.canciones (nombre, grupo, url, codInstrumento) VALUES ('','','', 4);
INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('Imagine','John Lennon','https://www.youtube.com/watch?v=87v7uHXvwpk', 4);
INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('Bella Ciao','Cancion popular','https://www.youtube.com/watch?v=Qd8F11KrY3E', 4);
INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('In dreams','BSO El Señor de los anillos','https://www.youtube.com/watch?v=iZb6DwfqQhI', 4);
INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('BSO Juego de Tronos',' ','https://www.youtube.com/watch?v=SXj-pifWGNo', 4);
INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('BSO BraveHeart ',' ','https://www.youtube.com/watch?v=2Kzl1zZIKLs', 4);
INSERT INTO partitura.cancion (nombre, grupo, url, codInstrumento) VALUES ('BSO El mago de Oz',' ','https://www.youtube.com/watch?v=Nyzn1iN0U60', 4);


