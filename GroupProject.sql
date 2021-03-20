CREATE DATABASE Example;
USE Example;
CREATE TABLE Alum (
  AlumID INT NOT NULL AUTO_INCREMENT,
  FirstName VARCHAR(255) NOT NULL,
  LastName VARCHAR(255) NOT NULL,
  GradYear INT NOT NULL,
  PRIMARY KEY (AlumID)
);
CREATE TABLE Career (
  AlumID INT NOT NULL AUTO_INCREMENT,
  Name VARCHAR(255) NOT NULL,   --First Last
  Industry VARCHAR(255) NOT NULL,
  Company VARCHAR(255) NOT NULL,
  Title VARCHAR(255) NOT NULL,
  Year_Started INT NOT NULL,
  Year_Ended INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (AlumID) REFRENCES Alum(AlumID),
  FOREIGN KEY (Name) REFRENCES Alum(FIrstName)
);


ALTER TABLE Career
  CONSTRAINT validIndustry check (Industry in ('Medicine', 'Finance', 'Education', 'Technology', 'Law', 'Social Services', 'Counseling', 'Business', 'Agriculture', 'Manufacturing', 'Operations', 
                                               'Healthcare', 'Sales', 'Marketing', 'Administration', 'Information Technology', 'Support', 'Arts', 'Design', 'Media', 'Communication', 'Human Resources','engineering'));
