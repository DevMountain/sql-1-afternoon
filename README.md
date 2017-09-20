<img src="https://devmounta.in/img/logowhiteblue.png" width="250" align="right">

# Project Summary

In this project we will be practicing inserting and querying data using SQL. We'll make use of a handy online tool called Chinook that we'll use to write SQL online. <a href="http://jxs.me/chinook-web/">Click me</a>

On the left are the Tables with their fields, the right is where we will be writing our queries, and the bottom is where we will see our results.  

Any new tables or records that we add into the database will be removed after you refresh the page.

Use [www.sqlteaching.com](http://www.sqlteaching.com/) or [sqlbolt.com](http://sqlbolt.com/) as resources for the missing keywords you'll need.

## Table - People

### Instructions
1. Create a table called Person that records a person's ID, Name, Age, Height ( in cm ), City, FavoriteColor. 
    * ID should be an auto-incrementing id/primary key - Use type: INTEGER PRIMARY KEY AUTOINCREMENT
2. Add 5 different people into the Person database. 
    * Remember to not include the ID because it should auto-increment.
3. List all the people in the Person table by Height from tallest to shortest.
4. List all the people in the Person table by Height from shortest to tallest.
5. List all the people in the Person table by Age from oldest to youngest.
6. List all the people in the Person table older than age 20.
7. List all the people in the Person table that are exactly 18.
8. List all the people in the Person table that are less than 20 and older than 30.
9. List all the people in the Person table that are not 27 (Use not equals).
10. List all the people in the Person table where their favorite color is not red.
11. List all the people in the Person table where their favorite color is not red and is not blue.
12. List all the people in the Person table where their favorite color is orange or green.
13. List all the people in the Person table where their favorite color is orange, green or blue (use IN).
14. List all the people in the Person table where their favorite color is yellow or purple (use IN).

### Solution

<details>

<summary> <code> SQL Solutions </code> </summary>

<details>

<summary> <code> #1 </code> </summary>

```sql
CREATE TABLE Person ( ID INTEGER PRIMARY KEY AUTOINCREMENT, Name string, Age integer, Height integer, City string, FavoriteColor string );
```

</details>

<details>

<summary> <code> #2 </code> </summary>

```sql
INSERT INTO Person ( Name, Age, Height, City, FavoriteColor ) VALUES ( "First Last", 21, 182, "City", "Color" );
```

</details>

<details>

<summary> <code> #3 </code> </summary>

```sql
SELECT * FROM Person ORDER BY Height DESC;
```

</details>

<details>

<summary> <code> #4 </code> </summary>

```sql
SELECT * FROM Person ORDER BY Height ASC;
```

</details>

<details>

<summary> <code> #5 </code> </summary>

```sql
SELECT * FROM Person ORDER BY Age DESC;
```

</details>

<details>

<summary> <code> #6 </code> </summary>

```sql
SELECT * FROM Person WHERE Age > 20;
```

</details>

<details>

<summary> <code> #7 </code> </summary>

```sql
SELECT * FROM Person WHERE Age = 18;
```

</details>

<details>

<summary> <code> #8 </code> </summary>

```sql
SELECT * FROM Person WHERE Age < 20 OR Age > 30;
```

</details>

<details>

<summary> <code> #9 </code> </summary>

```sql
SELECT * FROM Person WHERE Age != 27;
```

</details>

<details>

<summary> <code> #10 </code> </summary>

```sql
SELECT * FROM Person WHERE FavoriteColor != "red";
```

</details>

<details>

<summary> <code> #11 </code> </summary>

```sql
SELECT * FROM Person WHERE FavoriteColor != "red" AND FavoriteColor != "blue";
```

</details>

<details>

<summary> <code> #12 </code> </summary>

```sql
SELECT * FROM Person WHERE FavoriteColor = "orange" OR FavoriteColor = "green";
```

</details>

<details>

<summary> <code> #13 </code> </summary>

```sql
SELECT * FROM Person WHERE FavoriteColor IN ( "orange", "green", "blue" );
```

</details>

<details>

<summary> <code> #14 </code> </summary>

```sql
SELECT * FROM Person WHERE FavoriteColor IN ( "yellow", "purple" )
```

</details>

</details>

## Table - Orders

### Instructions

1. Create a table called Orders that records: PersonID, ProductName, ProductPrice, Quantity.
2. Add 5 Orders to the Orders table.
    * Make orders for at least two different people.
    * PersonID should be different for different people.
3. Select all the records from the Orders table.
4. Calculate the total number of products ordered.
5. Calculate the total order price.
6. Calculate the total order price by a single PersonID.

### Solution

<details>

<summary> <code> SQL Solutions </code> </summary>

<details>

<summary> <code> #1 </code> </summary>

```sql
CREATE TABLE Orders ( PersonID integer, ProductName string, ProductPrice float, Quantity integer );
```

</details>

<details>

<summary> <code> #2 </code> </summary>

```sql
INSERT INTO Orders ( PersonID, ProductName, ProductPrice, Quantity ) VALUES ( 0, "Product", 12.50, 2 );
```

</details>

<details>

<summary> <code> #3 </code> </summary>

```sql
SELECT * FROM Orders;
```

</details>

<details>

<summary> <code> #4 </code> </summary>

```sql
SELECT SUM(Quantity) FROM Orders;
```

</details>

<details>

<summary> <code> #5 </code> </summary>

```sql
SELECT SUM(ProductPrice * Quantity) FROM Orders;
```

</details>

<details>

<summary> <code> #6 </code> </summary>

```sql
/* The value of PersonID depends on what IDs you used. Use a valid ID from your table */
SELECT SUM(ProductPrice * Quantity) FROM Orders WHERE PersonID = 0;
```

</details>

</details>

## Table - Artist

### Instructions

1. Add 3 new Artists to the Artist table. ( It's already created )
2. Select 10 artists in reverse alphabetical order.
3. Select 5 artists in alphabetical order.
4. Select all artists that start with the word "Black".
5. Select all artists that contain the word "Black".

### Solution 

<details>

<summary> <code> SQL Solutions </code> </summary>

<details>

<summary> <code> #1 </code> </summary>

```sql
INSERT INTO Artist ( Name ) VALUES ( 'artist name' );
```

</details>

<details>

<summary> <code> #2 </code> </summary>

```sql
SELECT * FROM Artist ORDER BY Name Desc LIMIT 10;
```

</details>

<details>

<summary> <code> #3 </code> </summary>

```sql
SELECT * FROM Artist ORDER BY Name ASC LIMIT 5;
```

</details>

<details>

<summary> <code> #4 </code> </summary>

```sql
SELECT * FROM Artist WHERE Name LIKE 'Black%';
```

</details>

<details>

<summary> <code> #5 </code> </summary>

```sql
SELECT * FROM Artist WHERE Name LIKE '%Black%';
```

</details>

</details>

## Table - Employee

### Instructions

1. List all Employee first and last names only that live in Calgary.
2. Find the first and last name and birthdate for the youngest employee.
3. Find the first and last name and birthdate for the oldest employee.
4. Find everyone that reports to Nancy Edwards (Use the ReportsTo column).
5. Count how many people live in Lethbridge.

### Solution

<details>

<summary> <code> SQL Solutions </code> </summary>

<details>

<summary> <code> #1 </code> </summary>

```sql
SELECT FirstName, LastName FROM Employee WHERE City = "Calgary";
```

</details>

<details>

<summary> <code> #2 </code> </summary>

```sql
SELECT FirstName, LastName, Max(BirthDate) FROM Employee;
```

</details>

<details>

<summary> <code> #3 </code> </summary>

```sql
SELECT FirstName, LastName, Min(BirthDate) FROM Employee;
```

</details>

<details>

<summary> <code> #4 </code> </summary>

```sql
SELECT * FROM Employee WHERE ReportsTo = 2;
```

</details>

<details>

<summary> <code> #5 </code> </summary>

```sql
SELECT COUNT(*) FROM Employee WHERE City = "Lethbridge";
```

</details>

</details>

## Table - Invoice 

### Instructions

1. Count how many orders were made from the USA.
2. Find the largest order total amount.
3. Find the smallest order total amount.
4. Find all orders bigger than $5.
5. Count how many orders were smaller than $5.
6. Count how many orders were in CA, TX, or AZ (use IN).
7. Get the average total of the orders.
8. Get the total sum of the orders.

### Solution

<details>

<summary> <code> SQL Solutions </code> </summary>

<details>

<summary> <code> #1 </code> </summary>

```sql
SELECT Count(*) FROM Invoice WHERE BillingCountry = 'USA';
```

</details>

<details>

<summary> <code> #2 </code> </summary>

```sql
SELECT Max(total) FROM Invoice;
```

</details>

<details>

<summary> <code> #3 </code> </summary>

```sql
SELECT Min(total) FROM Invoice;
```

</details>

<details>

<summary> <code> #4 </code> </summary>

```sql
SELECT * FROM Invoice WHERE Total > 5;
```

</details>

<details>

<summary> <code> #5 </code> </summary>

```sql
SELECT COUNT(*) FROM Invoice WHERE Total < 5;
```

</details>

<details>

<summary> <code> #6 </code> </summary>

```sql
SELECT Count(*) FROM Invoice WHERE BillingState in ('CA', 'TX', 'AZ');
```

</details>

<details>

<summary> <code> #7 </code> </summary>

```sql
SELECT AVG(Total) FROM Invoice;
```

</details>

<details>

<summary> <code> #8 </code> </summary>

```sql
SELECT SUM(Total) FROM Invoice;
```

</details>

</details>

## Contributions

If you see a problem or a typo, please fork, make the necessary changes, and create a pull request so we can review your changes and merge them into the master repo and branch.

## Copyright

© DevMountain LLC, 2017. Unauthorized use and/or duplication of this material without express and written permission from DevMountain, LLC is strictly prohibited. Excerpts and links may be used, provided that full and clear credit is given to DevMountain with appropriate and specific direction to the original content.

<p align="center">
<img src="https://devmounta.in/img/logowhiteblue.png" width="250">
</p>

