-- 1. Создать таблицу students(1)
    firstname varchar not null
    lastname varchar not null

    age integer
    subject varchar not null
    mark numeric(2, 1) от 0 до 5

  create table students1(
        firstname varchar(128) not null,
        lastname varchar(128) not null,
        age int,
        subject varchar(64) not null,
        mark numeric(2,1) check(mark between 0 and 5)
);

-- 2.Добавить поле id уникальное значение, не null, автозаполнение в начало таблицы 
 
alter table students1
 add id integer primary key auto_increment not null first;

-- 3.Изменить тип mark на integer

alter table students1
 modify column mark int;

-- 4.Удалить поле age

alter table students1
 modify column mark int;

-- 5.Добавить поле class integer от 1 до 10, вставить после lastname

alter table students1
 modify column mark int;

-- 6.Заполнить таблицу строками (10 шт)

insert into students1(firstname, lastname, class, subject, mark)
values('Aleksey','Fedorov',9,'Mathematics', 3),
			('Anna','Smirnova',6,'History', 4),
            ('Ivan','Petrov',10,'Physics', 5),
            ('Ekaterina','Volkova',8,'Chemistry', 4),
            ('Maxim','Ivanov',7,'Geography', 2),
            ('Maria','Koslova',9,'Literature', 5),
            ('Aleksandr','Nikolaev',5,'Foreign language', 3),
            ('Olga','Semionova',7,'Biology', 4),
            ('Dmitriy','Krilov',8,'Geometry', 4),
             ('Elena','Andreeva',10,'Economics', 5);

-- 7.Удалить из таблицы студентов, у которых оценка 0

    delete from students1
             where mark = 0;


-- 8.Найти всех студентов, у которых оценка выше 3

   select * 
             from students1
             where mark >3;

-- 9.Найти всех студентов, которые учатся в первом классе и у них оценка меньше 3

   select * 
             from students1
             where class =1 and mark <3;

-- 10.Удалить из таблицы этих студентов

   
			delete
             from students1
             where class =1 and mark <3;

-- 11.Найти всех студентов, у которых длина имени больше 4 букв

select*
             from students1
             where length(firstname) >4;



-- 12.Найти всех студентов, у которых фамилия начинается с буквы "a" и имеет длину не менее 3 символов.

      select*
             from students1
             where lastname like 'A%' and length(lastname) >=3;

-- 13.Удалить таблицу.

  drop table students1;
