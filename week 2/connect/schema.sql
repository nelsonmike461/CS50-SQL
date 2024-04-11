-- Create tables
CREATE TABLE Users (
    ID INTEGER PRIMARY KEY,
    FirstName TEXT NOT NULL,
    LastName TEXT NOT NULL,
    Username TEXT NOT NULL,
    Password TEXT NOT NULL
);

CREATE TABLE Schools (
    ID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Type TEXT NOT NULL,
    Location TEXT NOT NULL,
    FoundedYear INTEGER NOT NULL
);

CREATE TABLE Companies (
    ID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Industry TEXT NOT NULL,
    Location TEXT NOT NULL
);

CREATE TABLE Connections (
    ID INTEGER PRIMARY KEY,
    UserID1 INTEGER,
    UserID2 INTEGER,
    FOREIGN KEY(UserID1) REFERENCES Users(ID),
    FOREIGN KEY(UserID2) REFERENCES Users(ID)
);

CREATE TABLE SchoolAffiliations (
    ID INTEGER PRIMARY KEY,
    UserID INTEGER,
    SchoolID INTEGER,
    StartDate TEXT NOT NULL,
    EndDate TEXT,
    Degree TEXT NOT NULL,
    FOREIGN KEY(UserID) REFERENCES Users(ID),
    FOREIGN KEY(SchoolID) REFERENCES Schools(ID)
);

CREATE TABLE CompanyAffiliations (
    ID INTEGER PRIMARY KEY,
    UserID INTEGER,
    CompanyID INTEGER,
    StartDate TEXT NOT NULL,
    EndDate TEXT,
    Title TEXT NOT NULL,
    FOREIGN KEY(UserID) REFERENCES Users(ID),
    FOREIGN KEY(CompanyID) REFERENCES Companies(ID)
);

-- Insert data
INSERT INTO Users (FirstName, LastName, Username, Password) VALUES ('Claudine', 'Gay', 'claudine', 'password');
INSERT INTO Users (FirstName, LastName, Username, Password) VALUES ('Reid', 'Hoffman', 'reid', 'password');
INSERT INTO Schools (Name, Type, Location, FoundedYear) VALUES ('Harvard University', 'University', 'Cambridge, Massachusetts', 1636);
INSERT INTO Companies (Name, Industry, Location) VALUES ('LinkedIn', 'Technology', 'Sunnyvale, California');
INSERT INTO SchoolAffiliations (UserID, SchoolID, StartDate, EndDate, Degree) VALUES ((SELECT ID FROM Users WHERE Username = 'claudine'), (SELECT ID FROM Schools WHERE Name = 'Harvard University'), '1993-01-01', '1998-12-31', 'PhD');
INSERT INTO CompanyAffiliations (UserID, CompanyID, StartDate, EndDate, Title) VALUES ((SELECT ID FROM Users WHERE Username = 'reid'), (SELECT ID FROM Companies WHERE Name = 'LinkedIn'), '2003-01-01', '2007-02-01', 'CEO and Chairman');
