select *
from departments
where department_name ='IT';

/* departments 테이블에서 department_name이 'IT'인 
department_id와 일치하는 employees테이블의 first_name,
last_name, job_id, salary 를 조회 
*/
select first_name, last_name, job_id, salary 
from EMPLOYEES
where DEPARTMENT_ID = ( 
    select department_id 
    from departments
    where DEPARTMENT_NAME = 'IT');
   
/*
locations 테이블에서 state_province이 'California'인
location_id와 일치하는 departments테이블의  department_id,
department_name을 조회
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