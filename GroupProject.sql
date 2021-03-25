CREATE DATABASE AlumniTracker;
USE AlumniTracker;

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
ALTER TABLE Career 
  CONSTRAINT validIndustry check (Industry in ('Medicine', 'Finance', 'Education', 'Technology', 'Law', 'Social Services', 'Counseling', 'Business', 'Agriculture', 'Manufacturing', 'Operations', 
                                               'Healthcare', 'Sales', 'Marketing', 'Administration', 'Information Technology', 'Support', 'Arts', 'Design', 'Media', 'Communication', 'Human Resources','engineering'))
