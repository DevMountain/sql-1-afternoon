# simple-sql-queries

For today we will be practicing inserting and querying data using SQL.

Here is a website that will let us write queries to interact with some data.  [http://jxs.me/chinook-web/](http://jxs.me/chinook-web/)

On the left are the Tables with their fields.  The right is where we will be writing our queries.  The bottom is where we will see our results.  

Any new tables or records that we add into the database will be removed after you refresh the page.  So if you're wondering where you data went, that may be why.

Use [www.sqlteaching.com](http://www.sqlteaching.com/) or [sqlbolt.com](http://sqlbolt.com/) as resources for the missing keywords you'll need.

## PERSON
1. Create a table called Person that records a person's Name, Age, Height, City, FavoriteColor, and Id.  Id should be an auto-incrementing id/primary key.  
2. Add 5 different people into the Person database.  Remember to not include the Id because it should auto-increment.
3. List the people in the Person table by Height from tallest to shortest (descending)

(For this database to create an auto incrementing field set it's type to INTEGER PRIMARY KEY AUTOINCREMENT)

  * List the people in the Person table by Height from shortest to tallest (ascending)
  * List all the people in the Person table by oldest first
  * List all the people in the Person table older than age 20.
  * List all the people in the Person table that are exactly 18.
  * List all Person that are less than 20 and older than 30.
  * List all Person that are not 27 (Use not equals)
  * List all Person where their favorite color is not red
  * List all Person where their favorite color is not red or blue
  * List all Person where their favorite color is orange or green
  * List all Person where their favorite color is orange or green blue (use IN)
  * List all Person where their favorite color is yellow or purple

## ORDER 
4. Create a table called Orders that records the productName, productPrice, Quantity, and personId  
5. Add 5 Orders to Order table
6. Select all the records from the Order table

  * Calculate the total number of products Ordered
  * Calculate the total Order Price
  * Calculate the total Order Price By personId (If you only made orders for 1 person, go add more for the other people)

## Artists
7. Add 3 new Artists to the Artist table

 * Select the top 10 artists in reverse alphabetical order
 * Select the top 5 artists in alphabetical order

## Employee
8. Add 2 new Employees to the Employee table

* List all Employee first and last names only that live in Calgary
* Find the first and last name for the youngest employee
* Find the first and last name for the oldest employee
* Find everyone that reports to Nancy Edwards (Use the ReportsTo column)
* Count how many people live in Lethbridge

## Invoice 
9. Use the Invoice table for the following

* Count how many orders were made from the USA
* Find the largest order total amount
* Find the smallest order total amount
* Find all orders bigger than $5
* Count how many orders were smaller than $5
* Count how many orders were in CA, TX, or AZ (use IN)
* Get the average total of the orders
* Get the total sum of the orders


## Copyright

© DevMountain LLC, 2016. Unauthorized use and/or duplication of this material without express and written permission from DevMountain, LLC is strictly prohibited. Excerpts and links may be used, provided that full and clear credit is given to DevMountain with appropriate and specific direction to the original content.
