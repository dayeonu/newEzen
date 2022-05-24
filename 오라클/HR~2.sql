select *
from departments
where department_name ='IT';

/* departments ���̺��� department_name�� 'IT'�� 
department_id�� ��ġ�ϴ� employees���̺��� first_name,
last_name, job_id, salary �� ��ȸ 
*/
select first_name, last_name, job_id, salary 
from EMPLOYEES
where DEPARTMENT_ID = ( 
    select department_id 
    from departments
    where DEPARTMENT_NAME = 'IT');
   
/*
locations ���̺��� state_province�� 'California'��
location_id�� ��ġ�ϴ� departments���̺���  department_id,
department_name�� ��ȸ
*/
desc departments;
select department_id, department_name
from departments
where location_id = ( 
    select location_id
    from locations
    where STATE_PROVINCE = 'California');
    
desc countries;


select city, state_province, street_address, country_id
from locations
where country_id in  (
    select country_id
    from countries
    where region_id=3
    );