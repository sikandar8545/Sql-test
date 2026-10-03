 CREATE TABLE departments (  department_id INT PRIMARY KEY, department_name VARCHAR(50), location VARCHAR(50) );

CREATE TABLE employees (  employee_id INT PRIMARY KEY, employee_name VARCHAR(100),
age INT, gender VARCHAR(10),  salary NUMERIC(10,2),
department_id INT REFERENCES departments(department_id), 
city VARCHAR(50), joining_date DATE, manager_id INT, bonus NUMERIC(10,2) ); 

 INSERT INTO departments (department_id, department_name, location) 
VALUES (1,'IT','Bangalore'), (2,'HR','Delhi'), (3,'Finance','Mumbai'), 
(4,'Marketing','Pune'), (5,'Sales','Hyderabad'), (6,'Operations','Chennai');



INSERT INTO employees (employee_id, employee_name, age, gender, salary, department_id, city, joining_date, manager_id, bonus) 
VALUES (101,'Aarav',28,'Male',65000,1,'Bangalore','2022-03-15',105,5000),
(102,'Priya',32,'Female',72000,2,'Delhi','2020-07-10',108,8000), 
(103,'Rahul',25,'Male',45000,1,'Pune','2023-01-20',105,NULL),
(104,'Sneha',29,'Female',58000,3,'Mumbai','2021-11-05',109,4000),
(105,'Vikram',40,'Male',95000,1,'Bangalore','2018-06-12',NULL,15000), 
(106,'Neha',27,'Female',52000,4,'Pune','2022-09-01',110,3000),
(107,'Karan',35,'Male',80000,5,'Hyderabad','2019-04-18',111,10000), 
(108,'Ananya',38,'Female',90000,2,'Delhi','2017-12-25',NULL,12000),
(109,'Rohit',31,'Male',67000,3,'Mumbai','2020-02-14',108,NULL),
(110,'Pooja',26,'Female',48000,4,'Pune','2023-06-30',106,2500), 
(111,'Amit',42,'Male',105000,5,'Hyderabad','2016-08-22',NULL,20000),
(112,'Isha',30,'Female',61000,1,'Delhi','2021-05-17',105,4500),
(113,'Manish',24,'Male',39000,6,'Chennai','2024-02-01',114,NULL),
(114,'Kavita',37,'Female',85000,6,'Chennai','2018-10-09',NULL,11000), 
(115,'Suresh',33,'Male',75000,3,'Mumbai','2019-09-23',109,7000),
(116,'Meera',29,'Female',56000,2,'Lucknow','2022-01-11',108,NULL), 
(117,'Arjun',36,'Male',88000,NULL,'Jaipur','2017-04-05',105,9000), 
(118,'Divya',28,'Female',63000,4,'Delhi','2021-08-19',110,3500),
(119,'Nitin',41,'Male',98000,5,'Hyderabad','2018-03-27',111,NULL), 
(120,'Riya',23,'Female',35000,6,'Chennai','2024-07-15',114,1500)


-- question 1
SELECT employee_id, employee_name, salary, city 
FROM employees
WHERE salary>60000
ORDER BY employees DESC;

-- question 2
SELECT employee_name,age
FROM employees
WHERE age>25 AND age<35;

-- question 3
SELECT department_name
FROM departments,
WHERE department_name IN ('IT', 'HR');

-- question 4
SELECT employee_name
FROM employees
WHERE employee_name LIKE 'A%';

-- question 5
SELECT employee_name, salary, manager_id, bonus
FROM employees
WHERE bonus IS NULL;
