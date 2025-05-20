
SELECT * FROM Book;

SELECT Title, Genre, Availability_Status FROM Book;

SELECT Name, Email, Membership_Start_Date FROM Member;
SELECT Title, Price AS BookPrice FROM Book;

SELECT * FROM Book WHERE Price > 250;
SELECT * FROM Member WHERE YEAR(Membership_Start_Date) < 2023;

SELECT s.Full_Name, s.Position
FROM Staff s
JOIN Library l ON s.Library_ID = l.Library_ID
WHERE l.Name = 'Zamalek Branch';

SELECT l.Name
FROM Library l
JOIN Staff s ON s.Library_ID = l.Library_ID
WHERE s.Staff_ID = 3008;


SELECT Title, ISBN
FROM Book
WHERE Library_ID = 2;

INSERT INTO Member (Name, Email, Phone, Membership_Start_Date)
VALUES ('mohammed', 'moha@gmail.com', '5168715', GETDATE());

INSERT INTO Loan (Book_ID, Member_ID, Payment_ID, Loan_Date, Due_Date, Status)
VALUES (2, 6, NULL, GETDATE(), DATEADD(DAY, 14, GETDATE()), 'Issued');

INSERT INTO Member (Name, Email, Phone, Membership_Start_Date)
VALUES ('Test Member', 'test@gmail.com', '9999999ti99', GETDATE());

UPDATE Loan SET Return_Date = GETDATE()
WHERE Member_ID = 405 AND Book_ID = 1011;
