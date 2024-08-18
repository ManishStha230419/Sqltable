CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Address VARCHAR(100),
    MemberType VARCHAR(50),
    JoinDate DATE,
    DOB DATE
);

CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    Name VARCHAR(100),
    Role VARCHAR(50)
);

CREATE TABLE Sessions (
    SessionID INT PRIMARY KEY,
    Day VARCHAR(10),
    StartTime TIME,
    EndTime TIME,
    Type VARCHAR(50),
    Floor INT,
    Price VARCHAR(20)
);

CREATE TABLE SessionStaffDuties (
    DutyID INT PRIMARY KEY,
    SessionID INT,
    StaffID INT,
    FOREIGN KEY (SessionID) REFERENCES Sessions(SessionID),
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);

CREATE TABLE Machines (
    MachineID INT PRIMARY KEY,
    MachineNumber INT,
    GameName VARCHAR(50),
    Year INT,
    Floor INT
);

CREATE TABLE Consoles (
    ConsoleID INT PRIMARY KEY,
    ConsoleName VARCHAR(50)
);

CREATE TABLE ConsoleGames (
    ConsoleGameID INT PRIMARY KEY,
    GameName VARCHAR(50),
    PEGI VARCHAR(10),
    ConsoleID INT,
    ConsoleQty INT,
    FOREIGN KEY (ConsoleID) REFERENCES Consoles(ConsoleID)
);

CREATE TABLE SessionConsoleGames (
    SessionConsoleID INT PRIMARY KEY,
    SessionID INT,
    ConsoleID INT,
    GameName VARCHAR(50),
    Quantity INT,
    Date DATE,
    FOREIGN KEY (SessionID) REFERENCES Sessions(SessionID),
    FOREIGN KEY (ConsoleID) REFERENCES Consoles(ConsoleID)
);

CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY,
    SessionID INT,
    CustomerID INT,
    BookingDate DATE,
    Member CHAR(1),
    Fee VARCHAR(20),
    Prepaid CHAR(1),
    FOREIGN KEY (SessionID) REFERENCES Sessions(SessionID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

