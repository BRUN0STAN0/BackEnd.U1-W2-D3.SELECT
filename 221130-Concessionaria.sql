CREATE TABLE Autista (
	ID_Autista INT PRIMARY KEY IDENTITY NOT NULL,
	Nome NVARCHAR(20) NOT NULL,
	Cognome NVARCHAR(20) NOT NULL,
	DataNascita DATE NOT NULL,
	
)

CREATE TABLE Autovettura (
	ID_Auto INT PRIMARY KEY IDENTITY NOT NULL,
	Marca NVARCHAR(20) NOT NULL,
	Modello NVARCHAR (20) NOT NULL,
	Cilindrata SMALLINT,
	VelocitaMax SMALLINT NOT NULL,
	AriaCondizionata BIT DEFAULT 1,
	PaeseProduzione NVARCHAR (20),

	ID_Autista INT NOT NULL,

	CONSTRAINT FK_Autovettura_Autista FOREIGN KEY (ID_Autista) REFERENCES Autista (ID_Autista)

)

INSERT INTO Autista VALUES ('Bruno','Stano','1994-10-14')
INSERT INTO Autista VALUES ('Daniela','Di Filippo','1989-06-11')
INSERT INTO Autista VALUES ('Giuseppe','De Gregorio','1980-10-23')
INSERT INTO Autista VALUES ('Francesco','Solazzo','1971-01-02')

INSERT INTO Autovettura VALUES ('BMW','E46','2200','220',1,'Germany', 1)
INSERT INTO Autovettura VALUES ('Mercedes Benz','Classe C','1600','200',1,'Germany', 2)
INSERT INTO Autovettura VALUES ('Ford','Fiesta','1300','180', 1,'Stati Uniti', 3)
INSERT INTO Autovettura VALUES ('Fiat','Grande Punto','1300','180',1,'Italia', 1)

SELECT * FROM Autovettura WHERE Cilindrata > 1500
SELECT * FROM Autovettura WHERE VelocitaMax > 150
SELECT * FROM Autovettura WHERE (Cilindrata > 1500) AND (PaeseProduzione != 'Italia')
SELECT * FROM Autovettura WHERE PaeseProduzione = 'Germany'
SELECT * FROM Autovettura WHERE PaeseProduzione = 'Italia' OR PaeseProduzione = 'Francia'
SELECT * FROM Autovettura WHERE AriaCondizionata = 1