/* 서브 쿼리 
>> 단일 행 서브 쿼리
 = , >, >=, <, <=, <> , !=
*/

select *
from EMPLOYEES
where PHONE_NUMBER = '515.123.4567';
--전화번호로 찾기 --

select phone_number
from EMPLOYEES
where employee_id = 100;

select *
from EMPLOYEES
where PHONE_NUMBER = (
    select phone_number
    from EMPLOYEES
    where employee_id = 100
);

select *
from EMPLOYEES
where hire_date = '03/06/17';

select hire_date
from EMPLOYEES
where email = 'SKING';

select * 
from EMPLOYEES
where hire_date = (
    select hire_date
    from EMPLOYEES
    where email = 'SKING'
);

select * 
from EMPLOYEES
where hire_date <(
    select hire_date
    from EMPLOYEES
    where email = 'SKING'
);

select first_name, salary
from EMPLOYEES
where salary < (
    select salary
     from EMPLOYEES
    where EMPLOYEE_ID = 100
);

--hire_date 06/01/03 --> salary
select *
from EMPLOYEES
where salary > (
    select salary 
    from EMPLOYEES 
    where hire_date = '06/01/03'
    order by salary
);

select salary 
from EMPLOYEES 
where hire_date = '06/01/03';
