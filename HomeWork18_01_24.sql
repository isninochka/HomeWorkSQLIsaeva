1. В рамках БД "песочница" выведите З/П каждого менеджера, исходя из ставки в 5% от суммы заказов
  
SELECT OrderDetails.OrderID AS order_id, 
SUM((OrderDetails.Quantity * Products.Price) * 0.005) AS salary
OrderDetails.OrderID
FROM OrderDetails
JOIN Orders ON Orders.OrderID = OrderDetails.OrderID
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY OrderDetails.OrderID

Используя MySQL WorkBench (или аналогичный инструмент) создайте БД music (сервис онлайн-музыки) и в рамках нее таблицы users, tracks с полями на Ваше усмотрение

CREATE DATABASE music;
USE music;

CREATE TABLE users (
id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100) NOT NULL
);

CREATE TABLE tracks (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    artist VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    duration INT,
    price DECIMAL(8,2) NOT NULL DEFAULT 0.00
);
