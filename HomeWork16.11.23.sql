В рамках БД "интернет-магазин (песочница)" напишите след/запросы:
Вывести товары из категорий 1 и 4 с ценой от 50 до 150 EUR
  
  SELECT * 
  FROM Products
  WHERE CategoryID IN (1,4) AND Price BETWEEN 50 AND 150

Вывести товары (проекция: название, ценасоскидкой0.5процента)
  
  SELECT ProductName, Price, Price*.995 AS "Price with discount 0.5%"
  FROM Products
  
Вывести заказы менеджеров 2 и 5
  SELECT * FROM Orders
  WHERE EmployeeID IN (2,5)
  
Дайте короткий ответ на вопрос: что такое проекция в БД и зачем она нужна?
Проекция помогает работать с конкретными данными выбраными из БД, что помогает не загружать систему загрузкой лишних данных.

