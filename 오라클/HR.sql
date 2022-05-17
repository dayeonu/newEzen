/*
Like 연산자 >> 문자열 속성에서 부분적으로 일치히나느 데이터만 출력 할 때 사용
% >> 0개 이상의 문자(문자의 내용과 객수는 상관 없음)
_ >> 1개의 문자

Like 'data%'  >> data로 시작하는 문자열 
Like '%data' >> data로 끝나는 문자열
Like '%data% >> data가 포함된 문자열
Like 'data____' >> 언더바 4개침,  data로 시작하는 8개짜리 문자열 
Like '____data; >> 언더바 4개침, data로 끝나는 8개짜리 문자열
*/

select *
from EMPLOYEES
where COMMISSION_PCT is not null; -- is not null 공백이 아닌 애들만 필터링 

select *
from EMPLOYEES
where COMMISSION_PCT is null; -- is null인 애들만 필터링 


select *
from EMPLOYEES
where first_name in('Steven', 'John' ); --in 연산자

select *
from COUNTRIES
where COUNTRY_ID in('US', 'IL', 'SG'); --in 연산자

select *
from COUNTRIES
where COUNTRY_ID not in('US', 'IL', 'SG'); --in not 연산자 


--between >> 두 값의 범위에 해당하는 데이타만 출력할 때 사용하는 확장 연산자이다.
select *
from EMPLOYEES
where EMPLOYEE_ID BETWEEN 120 and 130; -- 120이상 130이하 조회

select *
from EMPLOYEES
where JOB_ID = 'IT_PROG' and SALARY > 5000;


select JOB_TITLE
from jobs
where MIN_SALARY >= 4000 and MAX_SALARY <= 10000;

select JOB_TITLE
from jobs
where MIN_SALARY> 8000; --jobs 테이블에서 최소 월급이 8000 초과인 직업 조회


select *
from EMPLOYEES
where first_name = 'David'; -- employees 테이블에서 first_name이 'David'인 직원조회

select *
from EMPLOYEES
where last_name = 'Weiss' or last_name = 'Russell'; -- 대 소문자 구별함

select *
from EMPLOYEES
where not DEPARTMENT_ID = 50; -- 50이 아닌 아이들 모두 조회 

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
where employee_id >= 120 and employee_id <=130; -- 120부터 130까지 조회 

select *
from employees
where manager_id = 100 or manager_id =120; -- 100 또는 120 만 조회 

select*
from EMPLOYEES
where EMPLOYEE_ID < 110; -- 109 번호 까지 조회 

select * 
from EMPLOYEES
where EMPLOYEE_ID = 110;  -- 원하는 번호만 조회 

select *
from EMPLOYEES
where EMPLOYEE_ID <> 110; -- 110번 빼고 전부 조회

select *
from EMPLOYEES
where EMPLOYEE_ID != 110; -- 110번 빼고 전부 조회



/* 연산자
산술 연산자 ( + - * /  사칙연산자 존재한다.
비교 연산자  ( = <> != > >= < <= )
논리 연산자 ( and, or, not )
집합 연산자 ( union, union all, minus, intetsect 교집합 )
SQL 연산자 ( beteen in, like, is null)

숫자뿐만 아니라 문자나 날짜 값을 비교하는 것도 가능하다.
ex)  'A'  작은 따옴표 사용함 'C'
    '2020-10-10' < ' 2022-05-17'
    
*/
 
 
 select * from countries tab;
 
 -- countries 테이블에서 컬럼명 country_id를 국가ID, country_name을 국가명으로 조회
 select country_id as 국가ID, country_name as 국가명
 from countries;
 
 --countries 테이블에서 region_id를 중복제외하고 조회 
select * from countries;
select distinct region_id from countries;
select DISTINCT country_id, country_name from countries;
select DISTINCT region_id from countries;                                               

-- jobs 테이블에서 job_title, min_salary, max_salary 컬럼을 
-- 최소연봉과 최대연봉을 10% 인상된 상태로 조회

select * from jobs;
select job_title, min_salary*1.1 as 최소연봉, max_salary*1.1 as 최대연봉 from jobs;