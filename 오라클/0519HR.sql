
/* 집계함수 : count, sum, avg, max, min --group by having(조건)
*/
select *
from EMPLOYEES;

select count(salary)
from EMPLOYEES;

select count(first_name), count(*)
from EMPLOYEES;

select sum(SALARY), avg(SALARY)
from EMPLOYEES;

select max(salary), min(salary)
from EMPLOYEES;

select stddev(salary), variance(salary)
from EMPLOYEES; -- 표준편차, 

/* group by 동작순서
1. 테이블에서 where조건식에 맞는 데이터 값만 구분
2. 지정한 열 기준으로 같은 데이터값으로 그룹화 
3. 지정한 열들의 그룹화된 집계 결과 출력
*/
select job_id, sum(salary), avg(salary)
from EMPLOYEES
group by job_id;  -- 동일한 job_id끼리 묶는 것이 그룹화 이다. 

select job_id, salary
from EMPLOYEES; -- 동일한 job_id끼리 묶는 것이 그룹화 이다. 

select job_id, sum(salary), avg(salary)
from EMPLOYEES
where DEPARTMENT_id = 50 
group by job_id;  -- 동일한 job_id끼리 묶는 것이 그룹화 이다. 

select DEPARTMENT_id, job_id, salary
from EMPLOYEES;

select department_id, max(salary), min(salary)
from EMPLOYEES
where hire_date > '20070101' -- 입사일이 20070101 이후인 아이들
group by department_id; 

select country_id, count(country_id)
from locations
group by country_id;

select job_id, department_id, sum(salary), avg(salary)
from EMPLOYEES
group by job_id, department_id; -- 두가지 함께 적어줘 야함 

select job_id, department_id, sum(salary), avg(salary)
from EMPLOYEES
where DEPARTMENT_ID between 50 and 100
group by job_id, department_id; -- 두가지 함께 적어줘 야함

select manager_id, department_id, sum(salary), avg(salary)
from EMPLOYEES
where DEPARTMENT_ID = 50
group by manager_id, DEPARTMENT_ID  -- 두가지 함께 적어줘 야함
order by manager_id;

select department_id, manager_id, job_id, max(salary), min(salary)
from EMPLOYEES
group by department_id, manager_id, job_id
order by job_id, department_id desc;

select job_id, sum(salary), avg(salary)
from EMPLOYEES
group by job_id
having avg(salary) >= 10000; --그룹 자체의 조건을 넣을때  having사용할 것 

select department_id, min(salary), max(salary)
from EMPLOYEES
group by DEPARTMENT_ID
having max(salary) > 7000
order by max(salary);

select country_id, count(country_id)
from LOCATIONS
group by COUNTRY_ID
having count(country_id)>2;

select job_id, department_id, sum(salary), avg(salary)
from EMPLOYEES
where department_id not between 50 and 100
group by job_id, DEPARTMENT_ID
having avg(salary) > 9000
order by avg(salary);

select manager_id, department_id, job_id, sum(salary), avg(salary), max(salary)
from EMPLOYEES
where manager_id in(100,101) -- 100과 101사이만 조회 , 조회할 행을 선별하는 조건
group by manager_id, department_id, job_id;

select manager_id, department_id, job_id, sum(salary), avg(salary), max(salary)
from EMPLOYEES 
having sum(salary) between 10000 and 40000 -- 조건 넣을 때 having 사용 
group by manager_id, department_id, job_id -- 그룹화 열 지정/ 여러개 지정가능함 
order by sum(salary);

select count(salary)
from EMPLOYEES
where salary > 8000;

select count(*)
from employees
where hire_date > '20070101';

select sum(max_salary), avg(max_salary)
from jobs;

select sum(salary), avg(salary)
from employees
where job_id = 'IT_PROG';

select job_id, min(salary), max(salary)
from employees 
where hire_date between '20040101' and '20061231' 
group by job_id;

select department_id, job_id, sum(salary), min(salary), max(salary)
from employees
where department_id in(50, 80)
group by department_id, job_id
order by job_id;

select department_id, job_id, min(salary), max(salary), avg(salary)
from employees
group by department_id, job_id
having avg(salary) > 12000 
order by department_id;

-- nvl() : null 값을 특정한 값으로 치환해라
select department_name, nvl(manager_id, 100) ---null 처리 null자리에 100 넣기 
from departments; 

select nvl(state_province, 'None')---null 처리 null자리에 None 넣기 
from LOCATIONS
order by STATE_PROVINCE;
 
 -- NVL2 : 
select department_name, nvl2(manager_id, '관리자', '무') -- NULL값이 아닌경우,ㅡ 관리자, NULL이면 ㅡ무
from departments;

-- DECODE : min_salary중 2500이면, 1.1 곱하기 해줌 ,아니면 1000 더하기 해줌 ...사칙연산의 형태는 변경이 가능하다 
select min_salary, decode(min_salary, 2500, min_salary*1.1, min_salary+1000)
from jobs;

select min_salary,
    case
        when min_salary < 4000 then min_salary*1.2 -- 앞조건 맞으면 실행 
        when min_salary between 4000 and 6000 then min_salary*1.1 -- 앞조건 맞으면 실행 
        else min_salary -- 나머지 그대로 
    end as  최소급여
    from jobs;
    

select first_name, salary,
    rank() over(order by salary desc) as rank, -- 랭크 오름차순
    dense_rank() over(order by salary desc) as dense_rank, -- 동일 순위 일 경우 
    row_number() over(order by salary desc) as row_rank
from employees;

select *
from employees
where length(job_id) < 6;

select job, substr(job,1,2), substr(job, 3,2), substr(job,5)
FROM
