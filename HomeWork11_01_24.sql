-- 1.Найти мин/стоимость товаров для каждой категории

SELECT Categories.CategoryName, 
MIN(Products.Price) AS min_price, 
MAX(Products.Price) AS max_price
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
GROUP BY Products.CategoryID

-- 2. Вывести названия категорий, в которых более 10 товаров

SELECT Categories.CategoryName, COUNT(*)
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
GROUP BY Products.CategoryID
HAVING COUNT(*) > 10

-- 3. Вывести три самых дешевых заказа
  
SELECT OrderID, 
SUM(Products.Price * OrderDetails.Quantity) AS min_order_sum
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY OrderID
ORDER BY min_order_sum
LIMIT 3  

-- 4. Вывести имена и фамилии (и ко-во заказов) менеджеров, у которых ко-во заказов менее 15
-- (не было таких заказов, поэтому сделала больше 15)
  
SELECT Employees.FirstName, Employees.LastName, 
COUNT(Orders.OrderID) AS orders_count
FROM Orders
JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY Employees.LastName
HAVING COUNT(Orders.OrderID) > 15
LIMIT 3

-- 5. Вывести ТОП-1 стран по ко-ву клиентов
-- (видимо опечатка. Вывожу топ-3)
  
SELECT Customers.Country, COUNT(*) AS customer_count
FROM Customers
GROUP BY Customers.Country
ORDER BY customer_count DESC
LIMIT 3
