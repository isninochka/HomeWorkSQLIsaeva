-- 1.Найти количество сотрудников в каждом департаменте. Вывести departmentid и employeescnt
SELECT department_id, COUNT(*) AS employeescnt
FROM employees
GROUP BY department_id


-- 2.Найти количество сотрудников в каждом департаменте. Вывести departmentname и employeescnt
SELECT departments.department_name, COUNT(*) AS employeescnt
FROM employees 
JOIN departments  ON employees.department_id = departments.department_id
GROUP BY departments.department_name


-- 3.Найти количество сотрудников у каждого менеджера. Вывести managerid и employeescnt
SELECT manager_id, COUNT(*) AS employeescnt
FROM employees
GROUP BY manager_id


-- 4.Найти количество сотрудников у каждого менеджера. Вывести firstname,  lastname и employees_cnt
SELECT employees.first_name, employees.last_name, COUNT(*) AS employees_cnt
FROM employees
JOIN
			( SELECT manager_id, COUNT(*) m_cnt
            FROM employees
            GROUP BY manager_id) managers 
ON employees. manager_id = managers.manager_id
GROUP BY employees.first_name, employees.last_name


-- 5.Найти максимальную зарплату в каждом департаменте. Вывести departmentid и maxsalary
SELECT employees.department_id, MAX(employees.salary) AS max_salary
FROM employees
GROUP BY employees.department_id


-- 6.Найти сотрудников, у которых наибольшая зарплата в их департаменте
SELECT employees.last_name, employees.first_name,  employees.salary, employees.department_id
FROM employees
  JOIN (SELECT employees.department_id, MAX(employees.salary) max_salary
               FROM employees
               GROUP BY employees.department_id) AS employee_salary
               ON employee_salary.department_id = employees.department_id
WHERE employees.salary = employee_salary.max_salary


-- 7.Найти департаменты, в которых больше 10 сотрудников. Вывести department_name
SELECT departments.department_name
FROM departments
        JOIN (SELECT employees.department_id, COUNT(*) cnt
               FROM employees
               GROUP BY employees.department_id) AS department
               ON department.department_id = departments.department_id
WHERE department.cnt > 10
