CREATE DATABASE ecommerce;
USE ecommerce;

/*Print Distinct City from Table Customers and Print Count
Distinct City from Table Customers.*/
SELECT City, COUNT(*) AS city_count
FROM customers
GROUP BY City;

/*Write a SQL query to get the least number of quantities and the highest 
number of quantities bought by the user consider the OrderDetails Table.*/
SELECT MIN(Quantity) AS least_quanties, MAX(Quantity) AS highest_quantities
FROM order_details;

/*Print the total and an average number of quantities ordered by
users, consider the OrderDetails Table.*/
SELECT SUM(Quantity) AS Total, AVG(Quantity) AS Average
FROM order_details;

/*Print name of the product which is present at the 5th position
till the 15th position from Products table, use LIMIT keyword.*/
SELECT ProductName
FROM products 
LIMIT 4, 11; 

/*Write a SQL query for all the details of the supplier whose
name consists of “A” at the second position from the Suppliers table*/
SELECT * FROM suppliers
WHERE SupplierName LIKE '_a%';


/*Print the details of the customer who doesn’t stay in the USA
and Canada from the Customers table*/
SELECT * FROM Customers
WHERE Country != 'USA' AND Country != 'Canada';

SELECT * FROM Customers
WHERE Country NOT IN ('USA', 'Canada');

/*Print the details of all the orders which were placed between
the year 2020 to 2021 also print the same in descending order
from the OrderDetails table.*/
SELECT * FROM orders o 
INNER JOIN order_details od ON o.OrderID = od.OrderID
WHERE o.OrderDate >= '2020-01-01' AND o.OrderDate <= '2021-12-31'
ORDER BY o.OrderDate DESC;

/*Write a query to show the distinct city and their count from
the Customers table.*/
SELECT City, COUNT(*) AS city_count
FROM customers
GROUP BY City;

/*Write a query to fetch details of all employees excluding the
employees with first names, “Sanjay” and “Sonia” from the
Employees table.*/
SELECT * FROM employees
WHERE FirstName NOT IN('Sanjay', 'Sonia');

/*Duplicate a table as similar to the Suppliers table and name it
as SupplierDetail.*/
CREATE TABLE SupplierDetail 
AS SELECT * FROM suppliers;

/*Delete customer details whose country is Venezuela and print
the rest of the Customer table*/
DELETE FROM customers WHERE Country = 'Venezuela';
SELECT * FROM customers;
