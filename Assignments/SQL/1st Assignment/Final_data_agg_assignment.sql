SELECT*FROM orders
SELECT*FROM return_order

---1- write a query to get region wise count of return orders
SELECT o.region, COUNT(r.Return_Reason) AS returned_orders
FROM orders o
JOIN return_order r
ON o.order_id = r.Order_Id
GROUP BY o.region

---2- write a query to get category wise sales of orders that were not returned
SELECT o.category,SUM(o.sales) AS Total_sale
FROM orders o
LEFT JOIN return_order r
ON o.order_id=r.Order_Id
WHERE r.Return_Reason IS NULL
GROUP BY o.category

---3- write a query to print dep name and average salary of employees in that dep .
SELECT * FROM dept
SELECT * FROM employee

SELECT d.dep_name, AVG(e.salary)
FROM dept d
JOIN employee e
ON d.dep_id=e.dept_id
GROUP BY d.dep_name

---4- write a query to print dep names where none of the emplyees have same salary. ............?

SELECT d.dep_name
FROM dept d
JOIN employee e
ON d.dep_id=e.dept_id
GROUP BY d.dep_name
HAVING COUNT(e.salary)=COUNT(DISTINCT(e.salary))

---5- write a query to print sub categories where we have all 3 kinds of returns (others,bad quality,wrong items).......?
SELECT o.sub_category
FROM orders o
JOIN return_order r
ON o.order_id=r.Order_Id
WHERE r.Return_Reason IN ('others','bad quality','wrong items')
GROUP BY o.sub_category
HAVING COUNT(DISTINCT(r.return_reason))=3


---6- write a query to find cities where not even a single order was returned.
SELECT DISTINCT(o.city)
FROM orders o
FULL JOIN return_order r
ON o.order_id=r.Order_Id
WHERE r.Order_Id IS NULL


---7- write a query to find top 3 subcategories by sales of returned orders in east region

SELECT TOP (3)o.sub_category,SUM(o.sales) AS LOSS_IN_EAST_REGION
FROM orders o
JOIN return_order r
ON o.order_id=r.Order_Id
WHERE o.region= 'east'
GROUP BY o.sub_category 
ORDER BY SUM(o.sales) DESC

---8- write a query to print dep name for which there is no employee
SELECT * FROM dept
SELECT * FROM employee

SELECT d.dep_name
FROM dept d
FULL JOIN employee e
ON d.dep_id=e.dept_id
WHERE e.emp_id IS NULL


---9- write a query to print employees name for dep id is not avaiable in dept table

SELECT e.emp_name
FROM dept d
FULL JOIN employee e
ON d.dep_id=e.dept_id
WHERE d.dep_id IS NULL