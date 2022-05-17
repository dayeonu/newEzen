/*
Like ������ >> ���ڿ� �Ӽ����� �κ������� ��ġ������ �����͸� ��� �� �� ���
% >> 0�� �̻��� ����(������ ����� ������ ��� ����)
_ >> 1���� ����

Like 'data%'  >> data�� �����ϴ� ���ڿ� 
Like '%data' >> data�� ������ ���ڿ�
Like '%data% >> data�� ���Ե� ���ڿ�
Like 'data____' >> ����� 4��ħ,  data�� �����ϴ� 8��¥�� ���ڿ� 
Like '____data; >> ����� 4��ħ, data�� ������ 8��¥�� ���ڿ�
*/

select *
from EMPLOYEES
where COMMISSION_PCT is not null; -- is not null ������ �ƴ� �ֵ鸸 ���͸� 

select *
from EMPLOYEES
where COMMISSION_PCT is null; -- is null�� �ֵ鸸 ���͸� 


select *
from EMPLOYEES
where first_name in('Steven', 'John' ); --in ������

select *
from COUNTRIES
where COUNTRY_ID in('US', 'IL', 'SG'); --in ������

select *
from COUNTRIES
where COUNTRY_ID not in('US', 'IL', 'SG'); --in not ������ 


--between >> �� ���� ������ �ش��ϴ� ����Ÿ�� ����� �� ����ϴ� Ȯ�� �������̴�.
select *
from EMPLOYEES
where EMPLOYEE_ID BETWEEN 120 and 130; -- 120�̻� 130���� ��ȸ

select *
from EMPLOYEES
where JOB_ID = 'IT_PROG' and SALARY > 5000;


select JOB_TITLE
from jobs
where MIN_SALARY >= 4000 and MAX_SALARY <= 10000;

select JOB_TITLE
from jobs
where MIN_SALARY> 8000; --jobs ���̺��� �ּ� ������ 8000 �ʰ��� ���� ��ȸ


select *
from EMPLOYEES
where first_name = 'David'; -- employees ���̺��� first_name�� 'David'�� ������ȸ

select *
from EMPLOYEES
where last_name = 'Weiss' or last_name = 'Russell'; -- �� �ҹ��� ������

select *
from EMPLOYEES
where not DEPARTMENT_ID = 50; -- 50�� �ƴ� ���̵� ��� ��ȸ 

select count(*)
from EMPLOYEES
where not DEPARTMENT_ID = 50;

select *
from EMPLOYEES
where not EMPLOYEE_ID = 100 and not EMPLOYEE_ID = 130; 

select *
from EMPLOYEES
where EMPLOYEE_ID >= 50 and not EMPLOYEE_ID = 80; 

select *
from employees
where employee_id >= 120 and employee_id <=130; -- 120���� 130���� ��ȸ 

select *
from employees
where manager_id = 100 or manager_id =120; -- 100 �Ǵ� 120 �� ��ȸ 

select*
from EMPLOYEES
where EMPLOYEE_ID < 110; -- 109 ��ȣ ���� ��ȸ 

select * 
from EMPLOYEES
where EMPLOYEE_ID = 110;  -- ���ϴ� ��ȣ�� ��ȸ 

select *
from EMPLOYEES
where EMPLOYEE_ID <> 110; -- 110�� ���� ���� ��ȸ

select *
from EMPLOYEES
where EMPLOYEE_ID != 110; -- 110�� ���� ���� ��ȸ



/* ������
��� ������ ( + - * /  ��Ģ������ �����Ѵ�.
�� ������  ( = <> != > >= < <= )
�� ������ ( and, or, not )
���� ������ ( union, union all, minus, intetsect ������ )
SQL ������ ( beteen in, like, is null)

���ڻӸ� �ƴ϶� ���ڳ� ��¥ ���� ���ϴ� �͵� �����ϴ�.
ex)  'A'  ���� ����ǥ ����� 'C'
    '2020-10-10' < ' 2022-05-17'
    
*/
 
 
 select * from countries tab;
 
 -- countries ���̺��� �÷��� country_id�� ����ID, country_name�� ���������� ��ȸ
 select country_id as ����ID, country_name as ������
 from countries;
 
 --countries ���̺��� region_id�� �ߺ������ϰ� ��ȸ 
select * from countries;
select distinct region_id from countries;
select DISTINCT country_id, country_name from countries;
select DISTINCT region_id from countries;                                               

-- jobs ���̺��� job_title, min_salary, max_salary �÷��� 
-- �ּҿ����� �ִ뿬���� 10% �λ�� ���·� ��ȸ

select * from jobs;
select job_title, min_salary*1.1 as �ּҿ���, max_salary*1.1 as �ִ뿬�� from jobs;