select first_name, lower(first_name), 
upper(first_name), initcap(first_name)
from EMPLOYEES;

--substr(문자열데이터, 시작위치, 추출길이)
--substr(문자열데이터, 시작위치) 0자리부터 시작 4번째 위치
select job_id, substr(job_id,1,2)as str1, substr(job_id, 4) as str2
from EMPLOYEES;

--replace(문자열데이터, 변경전문자열, 변경할문자열)
select job_id, replace(job_id, 'MGR', 'MANAGER')
from EMPLOYEES;

select job_id, replace(job_id, 'PROG','PROGRAMMER')
from EMPLOYEES;

--concat 문자열과 문자열을 합치기?
select first_name, last_name, concat(first_name, concat(' ',last_name)) as fName
from EMPLOYEES;

--문자열 길이값 
select first_name, length(first_name)
from EMPLOYEES;

-- 문자열 'a'의 위치 값 
select first_name, instr(first_name, 'a')
from EMPLOYEES;

-- 빈 공간을 채우기 
select LPAD(first_name, 10, '*'), RPAD(first_name, 10, '*')
from EMPLOYEES;

-- ltrim 왼쪽에서 특정 문자열을 제거 
-- rtrim 오른쪽에서 특정 문자열을 제거 
select job_id, ltrim(job_id, 'A'), rTrim(job_id, 'T') 
from EMPLOYEES;

-- trim 으로 공백 제거하여 출력
select length(trim('   길동    ')), length(trim(' 어사 박 문 수'))
from dual;

-- jobs 테이블에서 job_title의 소문자와 대문자를 변환한 job_title을 조회
select job_title, upper(job_title), lower(job_title)
from jobs;

--employees 테이블에서 first_name첫1 문자와 last_name 조회 
select substr(first_name,1,1)as name, last_name
from employees;

--employees 테이블에서 job_id가 'REP'인 부분을 'REPRESENTATIVE'로 바꿔서 출력
select job_id, REPLACE(job_id,'REP','REPRESENTATIVE')
from employees;

--employees테이블에서 first_name첫 1문자와 last_name을 중간에 공백을 두고 하나로 결합하여 조히
select concat(substr(first_name,1,1), concat(' ',last_name))
from employees;

--employees테이블에서 first_name과 last_name의 문자열 길이를 합쳐서 조회
select length(concat(first_name, last_name)) as len
from employees;

--job_id, job_id에 'A'문자 위치 조회 
select job_id, instr(job_id, 'A')
from employees;

--locations 테이블의 city를 15자리 문자열로 바꾸고, 빈 공간을 '.'으로 표현
select lpad(city, 15, '.')
from locations;

--locations 테이블에서 city의 왼쪽부터 's'문자를 지운 것과 오른쪽부터 'e'를 지운 것 
select city, ltrim(city, 's'),rtrim(city,'e')
from locations;

--       정수 올림        정수 내림    반올림(정수만표시, 소수점표시)    절삭  나머지    거듭제곱   제곱근      양수1 0 음수 -1
select ceil(12.345), floor(12.345), round(1462.345,-3), trunc(12.175,1), mod(12,5),power(3,3),sqrt(9), sign(0), sign(-5)
from dual;

-- 현재 날짜 , 더하기 날짜 
select sysdate, sysdate+1, sysdate+100
from dual;

--입사일로부터 현재까지 227개월이 지났다 ㅡㅡ
select sysdate, MONTHS_BETWEEN(sysdate, hire_date)
from EMPLOYEES
where employee_id = 100;

select * from EMPLOYEES;

select hire_date, add_months(hire_date,2), add_months(hire_date, -2)
from employees;

-- to_char : 숫자나 날짜를 문자데이터로 변환 
-- to_number : 문자를 숫자데이터로 변환 
-- to_date : 문자데이터를 날짜데이터로 변경
--                      세기 서기 분기
select to_char(sysdate, 'CC AD Q')
from dual;

select to_char(sysdate, 'YYYY-MM-DD')
from dual;

select sysdate
from dual;


select to_char(sysdate, 'YYYY-MON-ddd')
from dual;

--문자열로 변경되었다?? ?!
select salary, to_char(salary, '9,999,999')
from EMPLOYEES;