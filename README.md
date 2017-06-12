<img src="https://devmounta.in/img/logowhiteblue.png" width="250" align="right">

# Project Summary

In this project we will be practicing inserting and querying data using SQL. We'll make use of a handy online tool called Chinook that we'll use to write SQL online. <a href="http://jxs.me/chinook-web/">Click me</a>

On the left are the Tables with their fields, the right is where we will be writing our queries, and the bottom is where we will see our results.  

Any new tables or records that we add into the database will be removed after you refresh the page.

Use [www.sqlteaching.com](http://www.sqlteaching.com/) or [sqlbolt.com](http://sqlbolt.com/) as resources for the missing keywords you'll need.

## Table - People

### Instructions
1. Create a table called Person that records a person's Name, Age, Height, City, FavoriteColor, and Id. 
    * Id should be an auto-incrementing id/primary key - Use type: INTEGER PRIMARY KEY AUTOINCREMENT
2. Add 5 different people into the Person database. 
    * Remember to not include the Id because it should auto-increment.
3. List the people in the Person table by Height from tallest to shortest (descending)
4. List the people in the Person table by Height from shortest to tallest (ascending)
5. List all the people in the Person table by oldest first
6. List all the people in the Person table older than age 20.
7. List all the people in the Person table that are exactly 18.
8. List all Person that are less than 20 and older than 30.
9. List all Person that are not 27 (Use not equals)
10. List all Person where their favorite color is not red
11. List all Person where their favorite color is not red or blue
12. List all Person where their favorite color is orange or green
13. List all Person where their favorite color is orange, green or blue (use IN)
14. List all Person where their favorite color is yellow or purple



## Table - Order
4. Create a table called Orders that records the productName, productPrice, Quantity, and personId  
5. Add 5 Orders to Order table
6. Select all the records from the Order table

  * Calculate the total number of products Ordered
  * Calculate the total Order Price
  * Calculate the total Order Price By personId (If you only made orders for 1 person, go add more for the other people)

## Table - Artists
7. Add 3 new Artists to the Artist table 

 * Select the top 10 artists in reverse alphabetical order
 * Select the top 5 artists in alphabetical order
 * Select all artists that start with the word Black
 * Select all artists that contain the word Black

## Table - Employee
8. Add 2 new Employees to the Employee table

* List all Employee first and last names only that live in Calgary
* Find the first and last name for the youngest employee
* Find the first and last name for the oldest employee
* Find everyone that reports to Nancy Edwards (Use the ReportsTo column)
* Count how many people live in Lethbridge

## Table - Invoice 
9. Use the Invoice table for the following

* Count how many orders were made from the USA
* Find the largest order total amount
* Find the smallest order total amount
* Find all orders bigger than $5
* Count how many orders were smaller than $5
* Count how many orders were in CA, TX, or AZ (use IN)
* Get the average total of the orders
* Get the total sum of the orders

## Contributions

If you see a problem or a typo, please fork, make the necessary changes, and create a pull request so we can review your changes and merge them into the master repo and branch.

## Copyright

© DevMountain LLC, 2017. Unauthorized use and/or duplication of this material without express and written permission from DevMountain, LLC is strictly prohibited. Excerpts and links may be used, provided that full and clear credit is given to DevMountain with appropriate and specific direction to the original content.

<p align="center">
<img src="https://devmounta.in/img/logowhiteblue.png" width="250">
</p>

