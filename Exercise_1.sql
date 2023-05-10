SHOW DATABASES;
CREATE DATABASE hotelmanagementsystem;
USE hotelmanagementsystem;
 
 /*creating a table customers*/
 CREATE TABLE Customers (
 cust_id INT NOT NULL,
 cust_name VARCHAR(50),
 cust_city VARCHAR(50),
 cust_roomno INT,
 checkin_time DATETIME,
 PRIMARY KEY(cust_id)
 );
 
 INSERT INTO customers(cust_id, cust_name, cust_city, cust_roomno, checkin_time)
 VALUES (1, "John", "Chicago", 35, "2023-05-09 14:00:00");
 INSERT INTO customers(cust_id, cust_name, cust_city, cust_roomno, checkin_time)
 VALUES (2, "Alice", "New York", 203, "2023-05-01 16:00:00");
 INSERT INTO customers(cust_id, cust_name, cust_city, cust_roomno, checkin_time)
 VALUES (3, "Mathew", "Dallas", 305, "2022-07-01 01:00:00");
 INSERT INTO customers(cust_id, cust_name, cust_city, cust_roomno, checkin_time)
 VALUES (4, "James", "Los Angeles", 108, "2023-03-19 07:00:00");
 INSERT INTO customers(cust_id, cust_name, cust_city, cust_roomno, checkin_time)
 VALUES (5, "Steven", "San Jose", 5, "2021-02-25 05:00:00");
 
 SELECT * FROM customers;
 
