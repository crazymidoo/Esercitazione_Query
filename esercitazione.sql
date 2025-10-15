-- Creazione Tabelle da Modello E-R
Drop Table If Exists Cliente;
Drop Table If Exists Iscrizione;


-- Creazione Tabella Cliente
Create Table Cliente(
    ID_Cliente Int Primary Key,
    Nome Varchar(50) Not Null,
    Cognome Varchar(50) Not Null,
    Data_Nascita Date Not Null,
    Email Varchar(50) Not Null,
    Codice_Iscrizione Int,
    Foreign Key(Codice_Iscrizione) references Iscrizione(ID_Iscrizione)
);

-- Creazione Tabella Iscrizione
Create Table Iscrizione(
    ID_Iscrizione Int Primary Key,
    Data_Iscrizione Date Not Null,
    Quota_Pagata Int Not Null,
    Codice_Corso Int,
    Foreign Key(Codice_Corso) references Corso(Codice)
)


INSERT INTO Iscrizione (ID_Iscrizione, Data_Iscrizione, Quota_Pagata, CodiceCorso) VALUES
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


INSERT INTO Corso (Codice, Nome, Descrizione, CodiceIstruttore) VALUES
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