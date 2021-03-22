CREATE DATABASE Example;
USE Example;
CREATE TABLE Alum (
  AlumID INT NOT NULL AUTO_INCREMENT,
  FirstName VARCHAR(255) NOT NULL,
  LastName VARCHAR(255) NOT NULL,
  Phone INT(10) UNSIGNED ZEROFILL NOT NULL,
  
-- Mike15James-patch-1
  Address VARCHAR(255) NOT NULL,
  Email VARCHAR(255) NOT NULL,
  LinkedIn VARCHAR(255) NOT NULL,
-- main
  
  PRIMARY KEY (AlumID)
);

CREATE TABLE Career (
  AlumID INT NOT NULL AUTO_INCREMENT,
  Industry VARCHAR(255) NOT NULL,
  Company VARCHAR(255) NOT NULL,
  Title VARCHAR(255) NOT NULL,
  Year_Started INT NOT NULL,
  Year_Ended INT NOT NULL,
  Location VARCHAR(255) NOT NULL,
  PRIMARY KEY (AlumID),
  FOREIGN KEY (AlumID) REFERENCES Alum(AlumID)
);
ALTER TABLE Career 
  CONSTRAINT validIndustry check (Industry in ('Medicine', 'Finance', 'Education', 'Technology', 'Law', 'Social Services', 'Counseling', 'Business', 'Agriculture', 'Manufacturing', 'Operations', 
                                               'Healthcare', 'Sales', 'Marketing', 'Administration', 'Information Technology', 'Support', 'Arts', 'Design', 'Media', 'Communication', 'Human Resources','engineering'))
