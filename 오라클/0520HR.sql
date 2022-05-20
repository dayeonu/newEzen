select * from employees;
select * from departments;

-- 카티션 곱: 모든 행에 대하여 조인. 
select * from Employees, DEPARTMENTS;

--동등조인 : 조인하는 테이블에서 조인조건이 일치하는 것만 조회  ==> 내부조인
select * from jobs, JOB_HISTORY 
where jobs.JOB_ID = JOB_HISTORY.JOB_ID;

select * 
from countries C, locations L -- 이름 단축함 'C',   'L'
where C.COUNTRY_ID = L.country_id;

--ORA-00918: column ambiguously defined  모호하다 라는 에러뜸 
-- 00918. 00000 -  "column ambiguously defined"
select region_id ,  Location_id, COUNTRY_ID
from countries C, locations L -- 이름 단축함 'C',   'L'
where C.COUNTRY_ID = L.country_id;


select C.region_id ,  L.Location_id, L.COUNTRY_ID
from countries C, locations L -- 이름 단축함 'C',   'L'
where C.COUNTRY_ID = L.country_id;


select *
from Employees e, departments d
where e.department_id = d.DEPARTMENT_ID;

select * from EMPLOYEES;
select * from jobs;
-- job_id가 겹친다.

select * from employees;

select e.salary, min_salary, max_salary
from EMPLOYEES e, jobs j
where e.salary between j.min_salary and j.max_salary;

select e.first_name, e.hire_date, j.start_date, j.end_date 
from employees e, job_history j
where e.hire_date between j.start_date and j.end_date;

select hire_date
from employees
where hire_date between '20070101' and '20071231';

select start_date, end_date
from JOB_HISTORY;


-- 외부 조인: 조인하는 테이블에서 조인조건을 만족하지 않는 행도 출력해라.
-- 동등조인 조건을 만족하지 못하고 누락된 행을 출력할 때 사용한다. 

select *
from jobs j, JOB_HISTORY h
where j.JOB_ID = h.JOB_ID(+);

select *
from JOB_HISTORY;

select *
from COUNTRIES c , LOCATIONS l
where c.country_id = l.COUNTRY_ID(+);
 
select *
from COUNTRIES c , LOCATIONS l;

select E1.empno, e1.ename, e1.mgr, e2.empno, as mgr_empno, e2.ename as mgr_ename
from emp e1, emp e2
where e1.mgr = e2.empno(+)
order by e1.empno;

select *
from countries c, locations l
where c.country_id = l.country_id(+);

select * from EMPLOYEES;

select a.first_name, a.last_name, b.first_name, b.last_name
from EMPLOYEES a, EMPLOYEES b
where a.manager_id = b.EMPLOYEE_ID;

select C.country_name, L.state_province, L.street_address
from countries C, locations L 
where C.country_id =L.country_id;

select *
from Jobs, JOB_HISTORY;

select J.job_id, J.job_title, H.start_date, H.end_date
from Jobs J, JOB_HISTORY H
where J.job_id = H.JOB_ID;

select * from DEPARTMENTS;

-- 별칭이 꼭 들어가야 하는 상황
select E.first_name, E.last_name, D.DEPARTMENT_NAME, J.job_title
from employees E  , departments D , jobs J
where E.job_id = J.job_id and E.department_id = D.department_id;

select * from LOCATIONS;

select C.COUNTRY_ID, C.COUNTRY_NAME, L.CITY
from countries C , locations L
where C.COUNTRY_ID =  L.COUNTRY_ID(+);