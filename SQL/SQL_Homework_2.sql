--1)Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees(
id serial primary key,
employee_name varchar(50) not null
);
select * from employees;

--2)Наполнить таблицу employee 70 строками.
insert into employees(employee_name)
	values  ('Coe Brandon'),
			('Petrov Matvey'),
			('Johnston Wyatt'),
			('Kerins Rory'),
			('Edmonds Lucas'),
			('Evangelista Luke'),
			('Hardie James'),
			('DelBelBelluz Luca'),
			('Kartye Tye'),
			('Othmann Brennan'),
			('Robertson Tucker'),
			('Tullio Ty'),
			('Morrison Logan'),
			('Russell Mitchell'),
			('Sproule Emmett'),
			('Dickinson Tanner'),
			('Jackson Kyle'),
			('Chromiak Martin'),
			('Frasca Jordan'),
			('Pastujov Sasha'),
			('Diaco George'),
			('Gushchin Danil'),
			('Maggio Matthew'),
			('Mysak Jan'),
			('Arcuri Francesco'),
			('Pinelli Francesco'),
			('MacKay Cole'),
			('Voit Ty'),
			('McGurn Sean'),
			('Cuylle Will'),
			('Hayes Avery'),
			('Avon J.R.'),
			('Wright Shane'),
			('Staios Nathan'),
			('Harrison Brett'),
			('Burke Nolan'),
			('Bloom Josh'),
			('Goure Deni'),
			('Beck Owen'),
			('Tolnai Cameron'),
			('McDonald Kyle'),
			('Petizian Mike'),
			('Cohen Elias'),
			('Clarke Brandt'),
			('Henault Louka'),
			('Stranges Antonio'),
			('Stepien Ryan'),
			('Dann Nolan'),
			('Piercey Riley'),
			('Morgan Cody'),
			('Humphrey Ryan'),
			('Nelson Ty'),
			('Lombardi Amadeus'),
			('Olausson Oskar'),
			('Sapovaliv Matyas'),
			('Serpa Joseph'),
			('Moore Lleyton'),
			('McDonnell Declan'),
			('Calist, Robert'),
			('Bressette Brett'),
			('Zhilkin Danny'),
			('Butler Cameron'),
			('Perrott Andrew'),
			('Ritchie Calum'),
			('Carroll Joe'),
			('Lavoie Zakary'),
			('Thompson Jack'),
			('White Gavin'),
			('McConnell-Barker Bryce'),
			('Pitre Coulson');
			
--3)Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
create table salary(
id serial primary key,
monthly_salary int not null
);
select * from salary;

--4)Наполнить таблицу salary 15 строками:
insert into salary(monthly_salary)
values (1000),
		(1100),
 		(1200),
 		(1300),
 		(1400),
 		(1500),
 		(1600),
 		(1700),
 		(1800),
 		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);
	
--5) Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
	create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
	);
select * from employee_salary;

--6)Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary(employee_id, salary_id)
values  (3, 7),
		(1, 4),
		(5, 9),
		(40, 13),
		(23, 4),
		(11, 2),
		(52, 10),
		(15, 13),
		(26, 4),
		(16, 1),
		(33, 7),
		(19, 5),
		(18, 4),
		(17, 3),
		(4, 2),
		(7, 1),
		(14, 15),
		(13, 14),
		(12, 13),
		(31, 12),
		(10, 11),
		(9, 10),
		(8, 9),
		(49, 8),
		(6, 7),
		(42, 6),
		(65, 5),
		(69, 4),
		(2, 3),
		(58, 1),
		(71, 1),
		(72, 2),
		(73, 3),
		(74, 4),
		(75, 12),
		(76, 6),
		(77, 11),
		(78, 14),
		(79, 16),
		(80, 12);
--7)	Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
	create table roles(
	id serial primary key,
	role_name int not null unique
	);
	select * from roles;
--8)Поменять тип столба role_name с int на varchar(30)
	alter table roles 
	alter column role_name type varchar(30);	
--9)Наполнить таблицу roles 20 строками:
insert into roles(id, role_name)
values  (1, 'Junior Python developer'),
		(2, 'Middle Python developer'),
		(3, 'Senior Python developer'),
		(4, 'Junior Java developer'),
		(5, 'Middle Java developer'),
		(6, 'Senior Java developer'),
		(7, 'Junior JavaScript developer'),
		(8, 'Middle JavaScript developer'),
		(9, 'Senior JavaScript developer'),
		(10, 'Junior Manual QA engineer'),
		(11, 'Middle Manual QA engineer'),
		(12, 'Senior Manual QA engineer'),
		(13, 'Project Manager'),
		(14, 'Designer'),
		(15, 'HR'),
		(16, 'CEO'),
		(17, 'Sales manager'),
		(18, 'Junior Automation QA engineer'),
		(19, 'Middle Automation QA engineer'),
		(20, 'Senior Automation QA engineer');
	
--10)Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
		references employees(id),
foreign key (role_id)
		references roles(id)
		);
select * from roles_employee;
--11)Наполнить таблицу roles_employee 40 строками:

insert into roles_employee (employee_id,role_id)
values  (68, 2),
		(51, 4),
		(63, 9),
		(64, 13),
		(23, 4),
		(32, 2),
		(31, 9),
		(69, 13),
		(57, 3),
		(34, 4),
		(66, 7),
		(29, 9),
		(28, 8),
		(27, 7),
		(26, 6),
		(25, 5),
		(24, 4),
		(58, 3),
		(22, 2),
		(21, 1),
		(20, 1),
		(19, 2),
		(18, 3),
		(17, 4),
		(16, 5),
		(15, 6),
		(14, 7),
		(13, 8),
		(12, 9),
		(11, 10),
		(10, 11),
		(9, 12),
		(8, 13),
		(7, 14),
		(6, 15),
		(5, 16),
		(4, 17),
		(3, 18),
		(2, 19),
		(1, 20);