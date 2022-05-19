/* ���� ������ union, union all, intersect */

select employee_id, first_name, department_id 
from EMPLOYEES
where DEPARTMENT_ID=60
union
select employee_id, first_name, department_id 
from EMPLOYEES
where DEPARTMENT_ID=100

select employee_id, first_name, department_id 
from EMPLOYEES
where DEPARTMENT_ID <= 160
union
select employee_id, first_name, department_id 
from EMPLOYEES
where DEPARTMENT_ID >= 140;

select employee_id, first_name, department_id 
from EMPLOYEES
where DEPARTMENT_ID <= 100
minus
select employee_id, first_name, department_id 
from EMPLOYEES
where DEPARTMENT_ID >= 50;

-- 50���� ũ�� 100���� ���� �� ����--
select employee_id, first_name, department_id 
from EMPLOYEES
where DEPARTMENT_ID <= 100
intersect 
select employee_id, first_name, department_id 
from EMPLOYEES
where DEPARTMENT_ID >= 50;

--jobs ���̺��� job_title�������� �����Ͽ� �۾� ��ȸ
select *
from jobs
order by job_title;

--countries ���̺��� country_name ���� ������������ �����Ͽ� ��ȸ
select *
from countries
order by country_name desc;