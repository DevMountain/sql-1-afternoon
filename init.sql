CREATE TABLE Person (
	id INTEGER PRIMARY KEY AUTOINCREMENT
  , Name String 
  ,	Age INTEGER 
  ,	Height INTEGER
  , City TEXT
  , FavoriteColor TEXT
);

INSERT INTO Person (
    Name
  , Age
  ,	Height
  , City
  , FavoriteColor
);

VALUES
	('John Smith', 12, 100, 'Hayden', 'Blue')
 ,	('John Sith', 17, 154, 'Boise', 'Magenta')
 ,	('John Sth', 21, 67, 'Denver', 'Gold')
 ,	('John Sh', 23, 201, 'Pheonix', 'Black')
 ,	('John S', 100, 186, 'Dallas', 'White');
 
SELECT * FROM Person 
ORDER BY Height DESC;

SELECT * FROM Person 
ORDER BY Height ASC;

SELECT * FROM Person 
ORDER BY Age DESC;

SELECT * FROM Person 
WHERE Age > 20;

SELECT * FROM Person 
WHERE Age = 18;

SELECT * FROM Person
WHERE Age > 30 OR Age < 20;

SELECT * FROM Person
WHERE Age != 27;

SELECT * FROM Person
WHERE FavoriteColor != 'red';

SELECT * FROM Person
WHERE FavoriteColor != 'red' AND FavoriteColor != 'blue';

SELECT * FROM Person
WHERE FavoriteColor = 'orange' OR FavoriteColor = 'green';

SELECT * FROM Person
WHERE FavoriteColor IN ('orange', 'green', 'blue');

SELECT * FROM Person
WHERE FavoriteColor IN ('yellow', 'purple');

CREATE TABLE Orders (
  	PersonID INTEGER
  , ProductName TEXT
  , ProductPrice DECIMAL
  , Quantity INT
  );
  
INSERT INTO Orders (
  	PersonID
  , ProductName
  ,	ProductPrice
  , Quantity
)
VALUES 
	(1,'ShamWOW', 19.99, 2)
, (1,'Nutella', 8.99, 1)
, (2, 'Iphone', 1699.99, 1)
, (3, 'Snickers', 1.28, 10)
, (4, 'Red Bull', 2.99, 3);

SELECT * FROM Orders

SELECT SUM(Quantity) FROM Orders;
SELECT SUM(ProductPrice) FROM Orders;
SELECT SUM(ProductPrice) FROM Orders
WHERE PersonID = 1;

INSERT INTO Artist (Name)
VALUES 
('Black Plague')
, ('Black White')
,('Black Black');

SELECT * FROM Artist 
ORDER BY Name DESC LIMIT 10;

SELECT * FROM Artist 
ORDER BY Name ASC LIMIT 5;

SELECT * FROM Artist 
WHERE Name LIKE 'Black%'; 

SELECT * FROM Artist 
WHERE Name LIKE '%Black%'; 

SELECT firstName, lastName FROM Employee
WHERE City = 'Calgary';

SELECT firstName, lastName, BirthDate FROM Employee
ORDER BY BirthDate DESC LIMIT 1

SELECT firstName, lastName, BirthDate FROM Employee
ORDER BY BirthDate ASC LIMIT 1

SELECT * FROM Employee
WHERE ReportsTo = 2;

SELECT count(*) FROM Employee
WHERE City = 'Lethbridge';

SELECT * FROM Invoice
WHERE BillingCountry = 'USA';

SELECT * FROM Invoice
ORDER BY Total DESC LIMIT 1

SELECT * FROM Invoice
ORDER BY Total ASC LIMIT 1

SELECT * FROM Invoice
WHERE Total > 5;

SELECT count(*) FROM Invoice
WHERE Total < 5;

SELECT count(*) FROM Invoice
WHERE BillingState IN ('CA','TX','AZ');

SELECT AVG(Total) FROM Invoice

SELECT SUM(Total) FROM Invoice