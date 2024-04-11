CREATE DATABASE LinkedIn;

USE LinkedIn;

CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Username VARCHAR(50),
    Password VARCHAR(128)
);

CREATE TABLE Schools (
    SchoolID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Type ENUM('Primary', 'Secondary', 'Higher Education'),
    Location VARCHAR(100),
    FoundedYear INT
);

CREATE TABLE Companies (
    CompanyID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Industry ENUM('Technology', 'Education', 'Business'),
    Location VARCHAR(100)
);

CREATE TABLE UserSchools (
    UserID INT,
    SchoolID INT,
    StartDate DATE,
    EndDate DATE,
    Degree VARCHAR(50),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (SchoolID) REFERENCES Schools(SchoolID)
);

CREATE TABLE UserCompanies (
    UserID INT,
    CompanyID INT,
    StartDate DATE,
    EndDate DATE,
    Position VARCHAR(50),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (CompanyID) REFERENCES Companies(CompanyID)
);

CREATE TABLE Connections (
    User1ID INT,
    User2ID INT,
    FOREIGN KEY (User1ID) REFERENCES Users(UserID),
    FOREIGN KEY (User2ID) REFERENCES Users(UserID)
);
