/* 집합 연산자 union, union all, intersect */

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

-- 50보다 크고 100보다 작은 값 필터--
select employee_id, first_name, department_id 
from EMPLOYEES
where DEPARTMENT_ID <= 100
intersect 
select employee_id, first_name, department_id 
from EMPLOYEES
where DEPARTMENT_ID >= 50;

--jobs 테이블에서 job_title기준으로 정렬하여 작업 조회
select *
from jobs
order by job_title;

--countries 테이블에서 country_name 기준 내림차순으로 정렬하여 조회
select *
from countries
order by country_name desc;