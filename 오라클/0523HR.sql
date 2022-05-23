select * from COUNTRIES;
select * from locations;
desc countries;
desc LOCATIONS;

/* countries 테이블과 locations테이블을 
location의 country_id를 기준으로 외부조인하여 
country_id,coutry_name, city를 조회 */

select C.country_id, C.country_name, L.city
from COUNTRIES C, locations L
where C.COUNTRY_ID = L.COUNTRY_ID
order by c.country_id;

desc EMPLOYEES;
desc departments;
-- 외부 조인: 조인하는 테이블에서 조인조건을 만족하지 않는 행도 출력해라.
-- 동등조인 조건을 만족하지 못하고 누락된 행을 출력할 때 사용한다. 
select *
from jobs j, JOB_HISTORY h
where j.JOB_ID = h.JOB_ID(+);

desc EMPLOYEES;
desc departments;

select E.employee_id, E.first_name, E.last_name, D.DEPARTMENT_NAME
from employees E, departments D
where E.DEPARTMENT_ID = D.DEPARTMENT_ID(+)
order by E.EMPLOYEE_ID;

desc EMPLOYEES;
select EMPLOYEE_ID,MANAGER_ID
from EMPLOYEES;
 
select E.first_name || ' ' || E.last_name as employee,
       M.first_name || ' ' || M.last_name as manager
from employees E, employees M
where E.EMPLOYEE_ID = m.manager_id
ORDER BY E.EMPLOYEE_ID;

