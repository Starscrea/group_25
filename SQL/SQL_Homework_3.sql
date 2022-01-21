 	select * from salary;
 	select * from employee_salary;
	select * from employees;
	select * from roles;
	select * from roles_employee;
 --1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

	select employee_name, monthly_salary from employee_salary
	join salary on salary_id = salary.id 
	join employees on employee_id = employees.id;

 --2. ������� ���� ���������� � ������� �� ������ 2000.

	select employee_name, monthly_salary from employee_salary
	join salary on salary_id = salary.id 
	join employees on employee_id = employees.id
	where monthly_salary<2000;

 --3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

	select salary_id, monthly_salary, employee_name from employee_salary
	left join employees on employee_id = employees.id 
 	join salary on salary_id = salary.id
 	where employee_name isnull;
 
 --4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
 
 	select salary_id, monthly_salary, employee_name from employee_salary
	left join employees on employee_id = employees.id 
 	join salary on salary_id = salary.id
 	where employee_name isnull and monthly_salary<2000;
 
 --5. ����� ���� ���������� ���� �� ��������� ��.
 
 	select employee_name, salary_id from employees
 	left join employee_salary on employee_id = employees.id
 	where salary_id isnull;
 	
 --6. ������� ���� ���������� � ���������� �� ���������.
 
 	select employee_name, role_name from roles_employee
 	join employees on employee_id = employees.id 
 	join roles on role_id = roles.id;
 
 --7. ������� ����� � ��������� ������ Java �������������.
 
 	select employee_name, role_name from roles_employee
 	join employees on employee_id = employees.id 
 	join roles on role_id = roles.id
 	where role_name like '%Java %';
 
 --8. ������� ����� � ��������� ������ Python �������������.
 	
 	select employee_name, role_name from roles_employee
 	join employees on employee_id = employees.id 
 	join roles on role_id = roles.id
 	where role_name like '%Python %';
 
 --9. ������� ����� � ��������� ���� QA ���������.
 
	select employee_name, role_name from roles_employee
 	join employees on employee_id = employees.id 
 	join roles on role_id = roles.id
 	where role_name like '%QA %';
 
 --10. ������� ����� � ��������� ������ QA ���������.
 
	select employee_name, role_name from roles_employee
 	join employees on employee_id = employees.id 
 	join roles on role_id = roles.id
 	where role_name like '%Manual QA%';
 
 --11. ������� ����� � ��������� ��������������� QA
 
	select employee_name, role_name from roles_employee
 	join employees on employee_id = employees.id 
 	join roles on role_id = roles.id
 	where role_name like '%Automation QA%';
 
 --12. ������� ����� � �������� Junior ������������
 
 	select employee_name, role_name, monthly_salary from roles_employee
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	join employee_salary on employee_salary.employee_id = roles_employee.employee_id
	join salary on salary_id = salary.id
	where role_name like '%Junior%';
  
 --13. ������� ����� � �������� Middle ������������

	select employee_name, role_name, monthly_salary from roles_employee
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	join employee_salary on employee_salary.employee_id = roles_employee.employee_id
	join salary on salary_id = salary.id
	where role_name like '%Middle%';

 --14. ������� ����� � �������� Senior ������������

	select employee_name, role_name, monthly_salary from roles_employee
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	join employee_salary on employee_salary.employee_id = roles_employee.employee_id
	join salary on salary_id = salary.id
	where role_name like '%Senior%';

 --15. ������� �������� Java �������������

	select role_name, monthly_salary from roles_employee
	join roles on roles.id = roles_employee.role_id
	join employee_salary on employee_salary.employee_id = roles_employee.employee_id
	join salary on salary_id = salary.id
	where role_name like '%Java %';

 --16. ������� �������� Python �������������

	select role_name, monthly_salary from roles_employee
	join roles on role_id = roles.id
	join employee_salary on employee_salary.employee_id = roles_employee.employee_id
	join salary on salary_id = salary.id
	where role_name like '%Python%';
	

 --17. ������� ����� � �������� Junior Python �������������

	select employee_name, role_name, monthly_salary from roles_employee
	join roles on role_id = roles.id
	join employees on employees.id = roles_employee.employee_id
	join employee_salary on employee_salary.employee_id = roles_employee.employee_id
	join salary on salary_id = salary.id
	where role_name like '%Junior Python%';
	
 --18. ������� ����� � �������� Middle JS �������������

	select employee_name, role_name, monthly_salary from roles_employee
	join employees on employees.id = roles_employee.employee_id
	join roles on role_id = roles.id
	join employee_salary on employee_salary.employee_id = roles_employee.employee_id
	join salary on salary_id = salary.id
	where role_name like '%Middle JavaS%';

 --19. ������� ����� � �������� Senior Java �������������

	select employee_name, role_name, monthly_salary from roles_employee
	join roles on role_id = roles.id
	join employees on employees.id = roles_employee.employee_id
	join employee_salary on employee_salary.employee_id = roles_employee.employee_id
	join salary on salary_id = salary.id
	where role_name like '%Senior JavaS%';

 --20. ������� �������� Junior QA ���������

	select role_name, monthly_salary from roles_employee
	join roles on roles.id = roles_employee.role_id
	join employee_salary on employee_salary.employee_id = roles_employee.employee_id
	join salary on salary_id = salary.id
	where role_name like 'Junior %QA%';

 --21. ������� ������� �������� ���� Junior ������������
	
	select avg(monthly_salary) as avg_salary_Junior
	from roles_employee
	join salary on salary.id = salary.id
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	join employee_salary on employee_salary.employee_id = roles_employee.employee_id
	where role_name like '%Junior%';

 --22. ������� ����� ������� JS �������������  

	select sum(monthly_salary) from roles_employee
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	join employee_salary on employee_salary.employee_id = roles_employee.employee_id
	join salary on salary_id = salary.id
	where role_name like '%JavaS%';

 --23. ������� ����������� �� QA ���������

	select min(monthly_salary) from roles_employee
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	join employee_salary on employee_salary.employee_id = roles_employee.employee_id
	join salary on salary_id = salary.id
	where role_name like '%QA%';

 --24. ������� ������������ �� QA ���������
	select max(monthly_salary) from roles_employee
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	join employee_salary on employee_salary.employee_id = roles_employee.employee_id
	join salary on salary_id = salary.id
	where role_name like '%QA%';

 --25. ������� ���������� QA ���������

	select count(role_name) as cnt_qa
	from roles_employee 
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	where role_name like '%QA%';

 --26. ������� ���������� Middle ������������.
	
	select count(role_name) as cnt_middle
	from roles_employee 
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	where role_name like '%Middle%';

 --27. ������� ���������� �������������

	select count(role_name) as cnt_developer
	from roles_employee 
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	where role_name like '%developer%';

 --28. ������� ���� (�����) �������� �������������.

	select sum(monthly_salary)
	from roles_employee 
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	join employee_salary on employee_salary.employee_id = roles_employee.employee_id
	join salary on salary_id = salary.id
	where role_name like '%developer%';

 --29. ������� �����, ��������� � �� ���� ������������ �� �����������
	
	select employee_name, role_name, monthly_salary
	from roles_employee 
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	left join employee_salary on employee_salary.employee_id = roles_employee.employee_id
	join salary on salary_id = salary.id
	order by monthly_salary;
	
 --30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300

	select employee_name, role_name, monthly_salary
	from roles_employee 
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	left join employee_salary on employee_salary.employee_id = roles_employee.employee_id
	join salary on salary_id = salary.id
	where monthly_salary >= 1700 and monthly_salary <= 2300
	order by monthly_salary;

 --31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300

select employee_name, role_name, monthly_salary
	from roles_employee 
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	left join employee_salary on employee_salary.employee_id = roles_employee.employee_id
	join salary on salary_id = salary.id
	where monthly_salary < 2300
	order by monthly_salary;

 --32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000

select employee_name, role_name, monthly_salary
	from roles_employee 
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	left join employee_salary on employee_salary.employee_id = roles_employee.employee_id
	join salary on salary_id = salary.id
	where monthly_salary in(1100, 1500, 2000)
	order by monthly_salary;




