 1. Создать БД 'homeworks'
use homeworks

2.В этой бд создать коллекцию workers и заполнить документами со следующими свойствами: id, firstname, lastname, position, salary. Используйте следующие данные:

1 Петр Сергеев CEO 7000
2 Виктор Семенов Web-developer 5000
3 Никита Петров Assistant 4500
4 Инна Орлова Accountant 4500
5 Максим Максимов Assistant 2500
6 Инна Сидрова Accountant 4000

db.workers.insertMany([
  {_id: 1, firstname: Petr, lastname: Sergeev, position: CEO, salary: 7000},
  {_id: 2, firstname: Viktor, lastname: Semionov, position: web-developer, salary: 5000},
  {_id: 3, firstname: Nikita, lastname: Petrov, position: assistant, salary: 4500},
  {_id: 4, firstname: Inna, lastname: Orlova, position: accountant, salary: 4500},
  {_id: 5, firstname: Maxim, lastname: Maximov, position: assistant, salary: 2500},
  {_id: 6, firstname: Inna, lastname: Sidorova, position: accountant, salary: 4000}
])

3.Вывести из этой коллекции сотрудников у которых зарплата выше 4000.
db.workers.find({salary: {$gt: 4000}})

4.Вывести сотрудников, у которых имя входит в список ('Инна', 'Максим', 'Петр')
db.users.find({firstname: {$in:['Inna','Maxim','Petr']}})

5.Вывести сотрудников из отделов Accountant и Assistant, которые зарабатывают меньше 4500.
db.workers.find({$and:[
  {position:{$in:['accountant','assistant']}},
  {salary: {$lt: 4500}}
]})

6.Из коллекции удалить сотрудников с именем Инна.
db.workers.deleteMany({firstname: {$eq: 'Inna'}})
