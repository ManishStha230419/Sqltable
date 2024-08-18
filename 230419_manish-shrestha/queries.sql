SELECT c.CustomerID, c.FirstName, c.LastName
FROM Customers c
JOIN Bookings b ON c.CustomerID = b.CustomerID
WHERE b.SessionID = 1 AND b.Prepaid IS NULL;

SELECT * FROM Machines
WHERE Floor = 2
ORDER BY Year DESC;

SELECT SUM(ConsoleQty) AS TotalGames
FROM ConsoleGames
WHERE ConsoleID = 2;

SELECT s.StaffID, s.Name
FROM Staff s
JOIN SessionStaffDuties d ON s.StaffID = d.StaffID
WHERE d.SessionID = 1 AND s.Role = 'Counter';

UPDATE Machines
SET Floor = 2
WHERE GameName = 'Grand Theft Auto';

DELETE FROM Machines
WHERE GameName = 'Mario';
