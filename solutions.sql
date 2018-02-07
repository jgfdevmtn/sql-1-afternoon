Table: People
1: CREATE TABLE Person (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  Name string,
  Age integer,
  Height integer,
  City string,
  FavoriteColor string
);
2: INSERT INTO Person (Name, Age, Height, City, FavoriteColor)
VALUES ("Hayden", 20, 200, "Dallas", "Blues"), 
("Haylolden", 21, 300, "AAallas", "Blgreenes"), 
("Hayasbfen", 20, 175, "Dalsankfkas", "Bkasfjues"), 
("Haydeen", 190, 120, "Dalles", "Blaes"), 
("Haeden", 25, 190, "Ballas", "Glues")
3: SELECT * FROM Person ORDER BY Height DESC
4: SELECT * FROM Person ORDER BY Height
5: SELECT * FROM Person ORDER BY Age DESC
6: SELECT * FROM Person WHERE Age > 20
7: SELECT * FROM Person WHERE Age = 18
8: SELECT * FROM Person WHERE Age < 20 AND Age > 30
9: SELECT * FROM Person WHERE Age != 27
10: SELECT * FROM Person WHERE FavoriteColor != "red"
11: SELECT * FROM Person WHERE FavoriteColor != "red" AND FavoriteColor != "blue"
12: SELECT * FROM Person WHERE FavoriteColor = "orange" OR FavoriteColor = "green"
13: SELECT * FROM Person WHERE FavoriteColor IN ("orange", "green", "blue")
14: SELECT * FROM Person WHERE FavoriteColor IN ("yellow", "purple")

Table: Orders
1: CREATE TABLE Orders (
  PersonID integer, 
  ProductName string,
  ProductPrice integer,
  Quantity integer
)
2: INSERT INTO Orders (PersonID, ProductName, ProductPrice, Quantity)
VALUES ( 1, "a", 100, 5),
( 2, "b", 500, 1),
( 3, "c", 60, 50),
( 4, "d", 20, 100),
( 5, "e", 10, 2)
3: SELECT * FROM Orders
4: SELECT SUM(Quantity) FROM Orders
5: SELECT SUM(ProductPrice * Quantity) FROM Orders
6: SELECT SUM(ProductPrice * Quantity) FROM Orders WHERE PersonID = 1

Table: Artist
1: INSERT INTO Artist (Name)
VALUES ( "Hello World"),
( "Hello World2"),
( "Hello World3"),
( "Hello World4"),
( "Hello World5")
2: SELECT * FROM Artist ORDER BY Name DESC LIMIT 10;
3: SELECT * FROM Artist ORDER BY Name LIMIT 5;
4: SELECT * FROM Artist WHERE Name LIKE 'Black%'
5: SELECT * FROM Artist WHERE Name LIKE '%Black%'

Table: Employee
1: SELECT FirstName, LastName FROM Employee WHERE City = "Calgary"
2: SELECT FirstName, LastName, BirthDate FROM Employee ORDER BY BirthDate DESC LIMIT 1
3: SELECT FirstName, LastName, BirthDate FROM Employee ORDER BY BirthDate LIMIT 1
4: SELECT * FROM Employee WHERE ReportsTo = 2
5: SELECT COUNT(*) FROM Employee WHERE City = "Lethbridge"

Table: Invoice
1: SELECT COUNT(*) FROM Invoice WHERE BillingCountry = "USA"
2: SELECT * FROM Invoice ORDER BY Total DESC LIMIT 1
3: SELECT * FROM Invoice ORDER BY Total LIMIT 
4: SELECT * FROM Invoice WHERE Total > 5
5: SELECT COUNT(*) FROM Invoice WHERE Total < 5
6: SELECT COUNT(*) FROM Invoice WHERE BillingState IN ("CA", "TX", "AZ")
7: SELECT AVG(Total) FROM Invoice
8: SELECT SUM(Total) FROM Invoice
