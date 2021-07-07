-- Multi-Table Query Practice






-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT p.ProductName, c.CategoryName 
FROM "Product" as p
JOIN "Category" as c
ON c.Id = p.CategoryId

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT o.Id, sh.CompanyName
From "Order" as o
JOIN "Shipper" as sh
ON o.ShipVia = sh.Id
WHERE OrderDate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT p.ProductName, ord.Quantity
FROM "OrderDetail" as ord
JOIN "Product" as p
ON ord.ProductId = p.Id
WHERE OrderId = 10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT o.Id, c.CompanyName, e.LastName
FROM "Order" as o
JOIN "Customer" as c, "Employee" as e
WHERE o.CustomerId = c.Id 
AND o.EmployeeId = e.Id



