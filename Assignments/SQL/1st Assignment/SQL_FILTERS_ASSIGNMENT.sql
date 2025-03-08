SELECT * FROM orders

---1- write a update statement to update city as null for order ids :  CA-2020-161389 , US-2021-156909
UPDATE orders
SET city=NULL
WHERE order_id IN ('CA-2020-161389' , 'US-2021-156909')

SELECT * FROM orders
WHERE order_id='US-2021-156909'

---2- write a query to find orders where city is null (2 rows)
SELECT * FROM orders
WHERE city IS NULL

---3- write a query to get total profit, first order date and latest order date for each category

SELECT 
	SUM(profit) AS TOTAL_PROFIT,
	MIN(order_date) AS FIRST_ORDER,
	MAX(order_date) AS LATEST_ORDER
FROM orders
GROUP BY category

---4- write a query to find sub-categories where 
---average profit is more than the half of the max profit in that sub-category

SELECT sub_category,AVG(profit)FROM orders
GROUP BY sub_category
HAVING AVG(profit)>(0.5*MAX(profit))

---5- create the exams table with below script;
--create table exams (student_id int, subject varchar(20), marks int);

---insert into exams values (1,'Chemistry',91),(1,'Physics',91),(1,'Maths',92)
---,(2,'Chemistry',80),(2,'Physics',90)
---,(3,'Chemistry',80),(3,'Maths',80)
---,(4,'Chemistry',71),(4,'Physics',54)
---,(5,'Chemistry',79);

---write a query to find students who have got same marks in Physics and Chemistry.

CREATE TABLE exams (student_id int, subject varchar(20), marks int)


INSERT INTO exams 
VALUES
(1,'Chemistry',91),(1,'Physics',91),(1,'Maths',92)
,(2,'Chemistry',80),(2,'Physics',90)
,(3,'Chemistry',80),(3,'Maths',80)
,(4,'Chemistry',71),(4,'Physics',54)
,(5,'Chemistry',79);

SELECT a.student_id,a.marks
FROM exams a
JOIN exams b
ON a.student_id = b.student_id
WHERE a.subject='Chemistry' AND b.subject='Physics'
AND a.marks=b.marks


---6- write a query to find total number of products in each category.
SELECT * FROM orders

SELECT category, COUNT(product_id) AS total_number_of_products
FROM orders
GROUP BY category

---7- write a query to find top 5 sub categories in west region by total quantity sold
SELECT * FROM orders

SELECT TOP(5)sub_category,SUM(quantity) AS total_quantity_sold
FROM orders
WHERE region = 'west'
GROUP BY sub_category
ORDER BY SUM(quantity) DESC

---8- write a query to find total sales for each region and ship mode combination for orders in year 2020
SELECT * FROM orders
---QUERY 1
SELECT SUM(a.sales),a.region,a.ship_mode
FROM orders a
JOIN orders b
ON a.row_id=b.row_id
where a.order_date between '2020-01-01 00:00:00.000'and'2020-12-31 00:00:00.000' and b.ship_mode in ('same day', 'first class','standrad class','second class')
GROUP BY a.region , a.ship_mode

---QUERY 2

SELECT SUM(sales),region,ship_mode
FROM orders
where order_date between '2020-01-01 00:00:00.000'and'2020-12-31 00:00:00.000'
GROUP BY region , ship_mode

---QUERY 3 FROM COPILOT
SELECT 
    region,
    ship_mode,
    SUM(sales) AS total_sales
FROM 
    orders
WHERE 
    YEAR(order_date) = 2020
GROUP BY 
    region, 
    ship_mode;


