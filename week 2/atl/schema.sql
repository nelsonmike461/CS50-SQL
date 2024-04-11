-- Create tables
CREATE TABLE Passengers (
    ID INTEGER PRIMARY KEY,
    FirstName TEXT NOT NULL,
    LastName TEXT NOT NULL,
    Age INTEGER NOT NULL
);

CREATE TABLE Airlines (
    ID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Concourses TEXT NOT NULL
);

CREATE TABLE Flights (
    ID INTEGER PRIMARY KEY,
    AirlineID INTEGER,
    FlightNumber TEXT NOT NULL,
    DepartureAirport TEXT NOT NULL,
    ArrivalAirport TEXT NOT NULL,
    DepartureDateTime TEXT NOT NULL,
    ArrivalDateTime TEXT NOT NULL,
    FOREIGN KEY(AirlineID) REFERENCES Airlines(ID)
);

CREATE TABLE CheckIns (
    ID INTEGER PRIMARY KEY,
    PassengerID INTEGER,
    FlightID INTEGER,
    CheckInDateTime TEXT NOT NULL,
    FOREIGN KEY(PassengerID) REFERENCES Passengers(ID),
    FOREIGN KEY(FlightID) REFERENCES Flights(ID)
);

-- Insert data
INSERT INTO Passengers (FirstName, LastName, Age) VALUES ('Amelia', 'Earhart', 39);
INSERT INTO Airlines (Name, Concourses) VALUES ('Delta', 'A, B, C, D, T');
INSERT INTO Flights (AirlineID, FlightNumber, DepartureAirport, ArrivalAirport, DepartureDateTime, ArrivalDateTime) VALUES ((SELECT ID FROM Airlines WHERE Name = 'Delta'), '300', 'ATL', 'BOS', '2023-08-03 18:46', '2023-08-03 21:09');
INSERT INTO CheckIns (PassengerID, FlightID, CheckInDateTime) VALUES ((SELECT ID FROM Passengers WHERE FirstName = 'Amelia' AND LastName = 'Earhart'), (SELECT ID FROM Flights WHERE FlightNumber = '300'), '2023-08-03 15:03');
