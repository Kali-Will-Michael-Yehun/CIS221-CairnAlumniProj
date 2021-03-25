CREATE DATABASE AlumniTracker;
USE AlumniTracker;

--Michael
CREATE TABLE Alum (
  AlumID INT NOT NULL AUTO_INCREMENT,
  FirstName VARCHAR(255) NOT NULL,
  LastName VARCHAR(255) NOT NULL,
  Phone INT(10) UNSIGNED ZEROFILL,
  Address VARCHAR(255),
  Email VARCHAR(255) NOT NULL,
  LinkedIn VARCHAR(255) NOT NULL,
  PRIMARY KEY (AlumID)
);

--Will
CREATE TABLE IF NOT EXISTS Degrees (
	DegreeID int not null auto_increment primary key 
  ,FOREIGN KEY (AlumID) REFERENCES Alum (AlumID)
	,Und/Master char(1)
	,DegreeLevel varchar(255) not null
  ,School varchar(255) not null
  ,GradDate DATE not null
  ,InternshipCompany varchar(255)
  ,InternshipPosition varchar(255)
  ,IntershipDuration int
);
-- Dual-Level degrees can be found by determining which students received a BS in Business and MBA from Cairn --
-- IntershipDuration: measured in terms of weeks --

--Michael
CREATE TABLE Career (
  AlumID INT NOT NULL AUTO_INCREMENT,
  Industry VARCHAR(255) NOT NULL,
  Company VARCHAR(255) NOT NULL,
  Title VARCHAR(255) NOT NULL,
  Year_Started INT NOT NULL,
  Year_Ended INT,
  Location VARCHAR(255),
  PRIMARY KEY (AlumID),
  FOREIGN KEY (AlumID) REFERENCES Alum(AlumID)
);

--Yehun
CREATE TABLE GuestSpeakers (
	SpeechID INT NOT NULL,
	Speech_Date DATE,
	Event VARCHAR(255) NOT NULL, 
	Topic VARCHAR(255) NOT NULL,
	Description VARCHAR(255),
  AlumID INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (SpeechID), 
	FOREIGN KEY (AlumID) REFERENCES Alum(AlumID)
);

--Kali
CREATE TABLE IF NOT EXISTS Comments(
	AlumID int not null Primary Key
	,OtherDetails text 
	,Foreign Key(AlumID)REFERENCES Alum(AlumID)
	,UNIQUE(AlumID)		--https://www.w3schools.com/sql/sql_unique.asp
)Engine = InnoDB;

ALTER TABLE Career 
  CONSTRAINT validIndustry check (Industry in ('Medicine', 'Finance', 'Education', 'Technology', 'Law', 'Social Services', 'Counseling', 'Business', 'Agriculture', 'Manufacturing', 'Operations', 
                                               'Healthcare', 'Research', 'Sales', 'Marketing', 'Administration', 'Information Technology', 'Support', 'Arts', 'Design', 'Media', 'Communication', 'Human Resources','Engineering'))
