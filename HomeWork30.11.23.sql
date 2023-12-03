--Вывести название и стоимость в USD одного самого дорогого проданного товара
USE w3schools
SELECT 
`ProductName`,
`Price`
FROM products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
ORDER BY `Price` DESC
LIMIT 1

--Вывести два самых дорогих товара из категории Beverages из USA
SELECT *

FROM products
JOIN categories ON products.CategoryID = categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE `CategoryName` ='Beverages' AND `Country`='USA'
ORDER BY `Price` DESC 
LIMIT 2

--Вывести список стран, которые поставляют морепродукты
SELECT distinct 
`Country`
FROM products
JOIN categories ON products.CategoryID = categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE `CategoryName` = 'Seafood'
