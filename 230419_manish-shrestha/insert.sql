INSERT INTO Customers (CustomerID, FirstName, LastName, Address, MemberType, JoinDate, DOB) VALUES
(1, 'Saroj', 'Upadhyay', 'Dillibazar, Kathmandu', 'Standard', '2023-09-01', '1998-02-01'),
(2, 'Neha', 'Kakkar', 'Putalisadak, Kathmandu', 'Premium', '2023-06-05', '2000-10-15'),
(3, 'Himani', 'Puri', 'Baneshwor, Kathmandu', 'Premium', '2023-02-29', '2001-07-20'),
(4, 'Ritesh', 'Gurung', 'Gaushala, Kathmandu', 'Standard', '2023-04-05', '1983-05-03'),
(5, 'Rohan', 'Jha', 'Unknown Address', 'Standard', NULL, NULL),
(6, 'Ghanshyam', 'Bhat', 'Unknown Address', 'Standard', NULL, NULL);

INSERT INTO Staff (StaffID, Name, Role) VALUES
(1, 'Sujal Bohara', 'Cafe'),
(2, 'Rajesh Hamal', 'Maintenance'),
(3, 'Rooz Ojha', 'Counter'),
(4, 'Rashi Timsina', 'Counter'),
(5, 'Jack Jones', 'Maintenance');

INSERT INTO Sessions (SessionID, Day, StartTime, EndTime, Type, Floor, Price) VALUES
(1, 'Sunday', '11:00:00', '19:00:00', 'Free', 1, 'Rs 1000'),
(2, 'Sunday', '11:00:00', '19:00:00', 'Free', 2, 'Rs 500'),
(3, 'Saturday', '11:00:00', '19:00:00', 'Free', 1, 'Rs 1000'),
(4, 'Friday', '19:00:00', '22:00:00', 'Special', 2, 'Rs 500');

INSERT INTO SessionStaffDuties (DutyID, SessionID, StaffID) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 4),
(5, 2, 5);

INSERT INTO Machines (MachineID, MachineNumber, GameName, Year, Floor) VALUES
(1, 123, 'Mario', 2005, 1),
(2, 78, 'Grand Theft Auto', 2013, 1),
(3, 12, 'Pokemon', 2016, 2),
(4, 45, 'PUBG Battlegrounds', 2004, 3);

INSERT INTO Consoles (ConsoleID, ConsoleName) VALUES
(1, 'PS1'),
(2, 'PS2'),
(3, 'PS4'),
(4, 'Nintendo Switch'),
(5, 'Xbox 360');

INSERT INTO ConsoleGames (ConsoleGameID, GameName, PEGI, ConsoleID, ConsoleQty) VALUES
(1, 'FIFA 18', 'PG', 1, 3),
(2, 'FIFA 18', 'PG', 2, 2),
(3, 'Horizon Zero Dawn', 'PG', 3, 3),
(4, 'Horizon Zero Dawn', 'PG', 2, 2),
(5, 'Legend of Zelda', 'PG', 4, 2),
(6, 'Halo 3', '15', 5, 4);

INSERT INTO SessionConsoleGames (SessionConsoleID, SessionID, ConsoleID, GameName, Quantity, Date) VALUES
(1, 1, 1, 'FIFA 18', 2, '2023-10-21'),
(2, 2, 2, 'Horizon Zero Dawn', 2, '2023-10-21');

INSERT INTO Bookings (BookingID, SessionID, CustomerID, BookingDate, Member, Fee, Prepaid) VALUES
(1, 1, 1, '2023-10-21', 'Y', NULL, NULL),
(2, 1, 2, '2023-10-21', 'N', 'Rs 1000', 'N'),
(3, 1, 3, '2023-10-21', 'Y', 'Rs 900', 'N'),
(4, 1, 4, '2023-10-25', 'N', 'Rs 1000', 'N'),
(5, 2, 5, '2023-10-21', 'N', 'Rs 450', 'N'),
(6, 4, 6, '2023-10-06', 'Y', 'Rs 450', 'Y');

