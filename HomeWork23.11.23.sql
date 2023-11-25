-- 1.Вывести самый дорогой товар из категории 4
USE w3schools
SELECT * 
FROM products
WHERE `CategoryID`=4
ORDER BY `Price` DESC
LIMIT 1

--2.Вывести страны поставщиков, кроме поставщика 1
SELECT `Country`
FROM suppliers
WHERE `SupplierID`<>1

--3.Вывести клиентов из Germany, имена которых начинаются на t
SELECT *
FROM customers
WHERE `Country` = 'Germany' AND `CustomerName` LIKE 'T%'

--4.Вывести телефоны перевозчиков
SELECT `Phone`
FROM shippers
