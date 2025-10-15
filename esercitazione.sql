DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS Iscrizione;
DROP TABLE IF EXISTS Corso;
DROP TABLE IF EXISTS Istruttore;

-- Creazione Tabella Istruttore
CREATE TABLE Istruttore(
    Codice_Identificativo INT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Cognome VARCHAR(50) NOT NULL,
    Specializzazione VARCHAR(80) NOT NULL
);

-- Creazione Tabella Corso
CREATE TABLE Corso(
    Codice INT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Descrizione VARCHAR(200) NOT NULL,
    Codice_Istruttore INT,
    FOREIGN KEY (Codice_Istruttore) REFERENCES Istruttore(Codice_Identificativo)
);

-- Creazione Tabella Iscrizione
CREATE TABLE Iscrizione(
    ID_Iscrizione INT PRIMARY KEY,
    Data_Iscrizione DATE NOT NULL,
    Quota_Pagata INT NOT NULL,
    Codice_Corso INT,
    FOREIGN KEY(Codice_Corso) REFERENCES Corso(Codice)
);

-- Creazione Tabella Cliente
CREATE TABLE Cliente(
    ID_Cliente INT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Cognome VARCHAR(50) NOT NULL,
    Data_Nascita DATE NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Codice_Iscrizione INT,
    FOREIGN KEY(Codice_Iscrizione) REFERENCES Iscrizione(ID_Iscrizione)
);

-- Inserimento Istruttori
INSERT INTO Istruttore (Codice_Identificativo, Nome, Cognome, Specializzazione) VALUES
(1, 'Luca', 'Bianchi', 'Yoga'),
(2, 'Marco', 'Rossi', 'Pilates'),
(3, 'Anna', 'Verdi', 'Crossfit'),
(4, 'Elena', 'Neri', 'Cardio'),
(5, 'Paolo', 'Gialli', 'Sollevamento Pesi'),
(6, 'Francesca', 'Moretti', 'Nuoto'),
(7, 'Giovanni', 'Esposito', 'Ciclismo'),
(8, 'Sara', 'Ferrari', 'Danza'),
(9, 'Davide', 'Ricci', 'Arti Marziali'),
(10, 'Chiara', 'Romano', 'Aerobica'),
(11, 'Matteo', 'Fontana', 'Pilates'),
(12, 'Laura', 'Costa', 'Yoga'),
(13, 'Alessandro', 'Rinaldi', 'Crossfit'),
(14, 'Elisa', 'Marini', 'Cardio'),
(15, 'Roberto', 'Pellegrini', 'Nuoto'),
(16, 'Valentina', 'Sartori', 'Danza'),
(17, 'Simone', 'Gatti', 'Ciclismo'),
(18, 'Martina', 'Barbieri', 'Aerobica'),
(19, 'Federico', 'Conti', 'Arti Marziali'),
(20, 'Giulia', 'Bellini', 'Sollevamento Pesi');

-- Inserimento Corsi
INSERT INTO Corso (Codice, Nome, Descrizione, Codice_Istruttore) VALUES
(101, 'Yoga Base', 'Corso di yoga per principianti', 1),
(102, 'Pilates Avanzato', 'Pilates per livelli avanzati', 2),
(103, 'Crossfit Intensivo', 'Allenamento crossfit ad alta intensità', 3),
(104, 'Cardio Fitness', 'Corso di allenamento cardiovascolare', 4),
(105, 'Pesi e Forza', 'Sollevamento pesi per aumentare la forza', 5),
(106, 'Nuoto Principianti', 'Corso di nuoto base', 6),
(107, 'Ciclismo Indoor', 'Ciclismo su cyclette', 7),
(108, 'Danza Moderna', 'Corso di danza contemporanea', 8),
(109, 'Arti Marziali Base', 'Introduzione alle arti marziali', 9),
(110, 'Aerobica Energica', 'Lezioni di aerobica', 10),
(111, 'Pilates Intermedio', 'Pilates livello intermedio', 11),
(112, 'Yoga Avanzato', 'Yoga per praticanti esperti', 12),
(113, 'Crossfit Base', 'Corso base di crossfit', 13),
(114, 'Allenamento Cardio', 'Allenamenti per la resistenza', 14),
(115, 'Nuoto Avanzato', 'Nuoto per nuotatori esperti', 15),
(116, 'Danza Classica', 'Corso di danza classica', 16),
(117, 'Ciclismo Outdoor', 'Ciclismo su strada', 17),
(118, 'Aerobica Base', 'Aerobica per principianti', 18),
(119, 'Arti Marziali Avanzate', 'Tecniche avanzate di arti marziali', 19),
(120, 'Pesi Base', 'Introduzione al sollevamento pesi', 20);

-- Inserimento Iscrizioni
INSERT INTO Iscrizione (ID_Iscrizione, Data_Iscrizione, Quota_Pagata, Codice_Corso) VALUES
(1, '2023-01-10', 150, 101),
(2, '2023-02-15', 200, 102),
(3, '2023-03-20', 250, 103),
(4, '2023-04-05', 180, 104),
(5, '2023-05-12', 220, 105),
(6, '2023-06-01', 160, 106),
(7, '2023-06-20', 140, 107),
(8, '2023-07-07', 210, 108),
(9, '2023-07-22', 230, 109),
(10, '2023-08-15', 190, 110),
(11, '2023-09-01', 200, 111),
(12, '2023-09-12', 170, 112),
(13, '2023-10-05', 220, 113),
(14, '2023-10-15', 210, 114),
(15, '2023-11-02', 240, 115),
(16, '2023-11-18', 180, 116),
(17, '2023-12-01', 160, 117),
(18, '2023-12-10', 190, 118),
(19, '2023-12-20', 230, 119),
(20, '2024-01-05', 200, 120);


INSERT INTO Cliente (ID_Cliente, Nome, Cognome, Data_Nascita, Email, Codice_Iscrizione) VALUES
(1, 'Mario', 'Rossi', '1985-04-12', 'mario.rossi@email.com', 1),
(2, 'Luisa', 'Bianchi', '1990-07-23', 'luisa.bianchi@email.com', 2),
(3, 'Carlo', 'Verdi', '1978-11-30', 'carlo.verdi@email.com', 3),
(4, 'Anna', 'Neri', '1992-02-14', 'anna.neri@email.com', 4),
(5, 'Paolo', 'Gialli', '1988-06-06', 'paolo.gialli@email.com', 5),
(6, 'Francesca', 'Moretti', '1995-09-18', 'francesca.moretti@email.com', 6),
(7, 'Giovanni', 'Esposito', '1980-01-25', 'giovanni.esposito@email.com', 7),
(8, 'Sara', 'Ferrari', '1987-03-12', 'sara.ferrari@email.com', 8),
(9, 'Davide', 'Ricci', '1993-12-10', 'davide.ricci@email.com', 9),
(10, 'Chiara', 'Romano', '1991-08-22', 'chiara.romano@email.com', 10),
(11, 'Matteo', 'Fontana', '1984-05-30', 'matteo.fontana@email.com', 11),
(12, 'Laura', 'Costa', '1989-07-15', 'laura.costa@email.com', 12),
(13, 'Alessandro', 'Rinaldi', '1996-10-09', 'alessandro.rinaldi@email.com', 13),
(14, 'Elisa', 'Marini', '1992-11-02', 'elisa.marini@email.com', 14),
(15, 'Roberto', 'Pellegrini', '1983-04-18', 'roberto.pellegrini@email.com', 15),
(16, 'Valentina', 'Sartori', '1986-12-25', 'valentina.sartori@email.com', 16),
(17, 'Simone', 'Gatti', '1994-03-14', 'simone.gatti@email.com', 17),
(18, 'Martina', 'Barbieri', '1987-09-27', 'martina.barbieri@email.com', 18),
(19, 'Federico', 'Conti', '1985-06-03', 'federico.conti@email.com', 19),
(20, 'Giulia', 'Bellini', '1990-01-11', 'giulia.bellini@email.com', 20);


-- Query da Eseguire nel Terminale Codespaces(sqlite3 mydb.sqlite < esercitazione.sql poi sqlite3 mydb.sqlite e ora posso eseguire le quesry che voglio)
