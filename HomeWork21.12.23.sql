-- Вывести ко-во товаров с ценой от 10 до 250 EUR
SELECT count(*) AS total_products
FROM products

-- Вывести ко-во поставщиков не из UK и не из China
SELECT count(*) AS total_supplier_not_uk_china
FROM Suppliers
WHERE NOT Country IN ('UK','China')

-- Вывести среднюю/MAX/MIN стоимости и ко-во товаров из категорий 3 и 5
SELECT count(*) AS total_products, 
AVG(Products.Price) AS avg_price, 
MAX(Products.Price) AS max_price,
MIN(Products.Price) AS min_price 
FROM Products 
WHERE CategoryID IN(3,5)

-- Вывести общую сумму проданных товаров
SELECT  SUM(Price) AS sum_total_price
FROM Products JOIN ProductID ON Product.ProductID = OrderDetails.ProductID
-- понимаю что с Деталей по заказу нужно через айди продукта посчитать стоимость, но как это записать не пойму

-- Вывести данные о заказах (номерзаказа, имяклиента, странаклиента, фамилияменеджера, названиекомпанииперевозчика)
SELECT Orders.OrderID, Customers.CustomerName, Customers.Country, Employees.LastName, Shippers.ShipperName
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID

-- Вывести сумму, на которую было отправлено товаров клиентам в Germany
SELECT SUM(Products.Price) AS total_sum_customers_from_germany
FROM Products
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE Customers.Country = 'Germany'
-- этот код тоже с ошибкой, не пойму где
