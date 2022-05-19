select first_name, lower(first_name), 
upper(first_name), initcap(first_name)
from EMPLOYEES;

--substr(���ڿ�������, ������ġ, �������)
--substr(���ڿ�������, ������ġ) 0�ڸ����� ���� 4��° ��ġ
select job_id, substr(job_id,1,2)as str1, substr(job_id, 4) as str2
from EMPLOYEES;

--replace(���ڿ�������, ���������ڿ�, �����ҹ��ڿ�)
select job_id, replace(job_id, 'MGR', 'MANAGER')
from EMPLOYEES;

select job_id, replace(job_id, 'PROG','PROGRAMMER')
from EMPLOYEES;

--concat ���ڿ��� ���ڿ��� ��ġ��?
select first_name, last_name, concat(first_name, concat(' ',last_name)) as fName
from EMPLOYEES;

--���ڿ� ���̰� 
select first_name, length(first_name)
from EMPLOYEES;

-- ���ڿ� 'a'�� ��ġ �� 
select first_name, instr(first_name, 'a')
from EMPLOYEES;

-- �� ������ ä��� 
select LPAD(first_name, 10, '*'), RPAD(first_name, 10, '*')
from EMPLOYEES;

-- ltrim ���ʿ��� Ư�� ���ڿ��� ���� 
-- rtrim �����ʿ��� Ư�� ���ڿ��� ���� 
select job_id, ltrim(job_id, 'A'), rTrim(job_id, 'T') 
from EMPLOYEES;

-- trim ���� ���� �����Ͽ� ���
select length(trim('   �浿    ')), length(trim(' ��� �� �� ��'))
from dual;

-- jobs ���̺��� job_title�� �ҹ��ڿ� �빮�ڸ� ��ȯ�� job_title�� ��ȸ
select job_title, upper(job_title), lower(job_title)
from jobs;

--employees ���̺��� first_nameù1 ���ڿ� last_name ��ȸ 
select substr(first_name,1,1)as name, last_name
from employees;

--employees ���̺��� job_id�� 'REP'�� �κ��� 'REPRESENTATIVE'�� �ٲ㼭 ���
select job_id, REPLACE(job_id,'REP','REPRESENTATIVE')
from employees;

--employees���̺��� first_nameù 1���ڿ� last_name�� �߰��� ������ �ΰ� �ϳ��� �����Ͽ� ����
select concat(substr(first_name,1,1), concat(' ',last_name))
from employees;

--employees���̺��� first_name�� last_name�� ���ڿ� ���̸� ���ļ� ��ȸ
select length(concat(first_name, last_name)) as len
from employees;

--job_id, job_id�� 'A'���� ��ġ ��ȸ 
select job_id, instr(job_id, 'A')
from employees;

--locations ���̺��� city�� 15�ڸ� ���ڿ��� �ٲٰ�, �� ������ '.'���� ǥ��
select lpad(city, 15, '.')
from locations;

--locations ���̺��� city�� ���ʺ��� 's'���ڸ� ���� �Ͱ� �����ʺ��� 'e'�� ���� �� 
select city, ltrim(city, 's'),rtrim(city,'e')
from locations;

--       ���� �ø�        ���� ����    �ݿø�(������ǥ��, �Ҽ���ǥ��)    ����  ������    �ŵ�����   ������      ���1 0 ���� -1
select ceil(12.345), floor(12.345), round(1462.345,-3), trunc(12.175,1), mod(12,5),power(3,3),sqrt(9), sign(0), sign(-5)
from dual;

-- ���� ��¥ , ���ϱ� ��¥ 
select sysdate, sysdate+1, sysdate+100
from dual;

--�Ի��Ϸκ��� ������� 227������ ������ �Ѥ�
select sysdate, MONTHS_BETWEEN(sysdate, hire_date)
from EMPLOYEES
where employee_id = 100;

select * from EMPLOYEES;

select hire_date, add_months(hire_date,2), add_months(hire_date, -2)
from employees;

-- to_char : ���ڳ� ��¥�� ���ڵ����ͷ� ��ȯ 
-- to_number : ���ڸ� ���ڵ����ͷ� ��ȯ 
-- to_date : ���ڵ����͸� ��¥�����ͷ� ����
--                      ���� ���� �б�
select to_char(sysdate, 'CC AD Q')
from dual;

select to_char(sysdate, 'YYYY-MM-DD')
from dual;

select sysdate
from dual;


select to_char(sysdate, 'YYYY-MON-ddd')
from dual;

--���ڿ��� ����Ǿ���?? ?!
select salary, to_char(salary, '9,999,999')
from EMPLOYEES;