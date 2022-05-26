/*
departments 테이블에서 manager_id가 null이 아닌 (is not null)
department_id와 일치하는 (in) employees테이블의 
 first_name, last_name, job_id, salary 을 조회
*/

desc employees;
desc DEPARTMENTS;

select first_name, last_name, job_id, salary
from employees
where DEPARTMENT_ID in (
    select department_id
    from departments
    where manager_id is not null 
    );


select department_id, department_name
from departments
where location_id in(
    select location_id
    from locations
    where CITY <> 'Seattle'
);


select department_id, department_name
from departments
where location_id not in(
    select location_id
    from locations
    where CITY = 'Seattle'
);

/*
regions 테이블에서 region_name이 'Europe'인 region_id가 일치하는
countries 테이블에서 country_id가 포함된 locations테이블의 
city, state_province, street_address를 조회.
*/
select city, state_province, street_address
from LOCATIONS
where country_id in (
    select COUNTRY_ID
    from countries
    where region_id = (
        select region_id
        from regions
        where region_name = 'Europe'
        )
); 

/*
DML(data manipulation language)
select
insert
update
delete
crud ,, Create & Read & Update 를 묶어서 일컫는다.
*/

desc COUNTRIES;
select * from COUNTRIES;
insert into COUNTRIES
values ('KR', 'North Korea', 3); 

insert into COUNTRIES(COUNTRY_ID, COUNTRY_NAME, region_id)
values ('KP', 'North Korea', 3);

insert into COUNTRIES(COUNTRY_ID, COUNTRY_NAME)
values ('KM', 'South Korea');

commit;
select * from COUN
update countries
set COUNTRY_NAME = 'South Korea'
where COUNTRY_ID = 'KR';

update countries
set COUNTRY_NAME = 'North Korea'
where COUNTRY_ID = 'KR';

select *
from jobs
where job_id = 'IT_PROG';


update jobs
set MIN_SALARY = 00000, MAX_SALARY=20000
where job_id = 'IT_PROG';

select * from countries;

DELETE 
from countries
where coutry_id='KM';

select * from countries
order by COUNTRY_ID;

insert into COUNTRIES(COUNTRY_ID, COUNTRY_NAME, region_id)
values ('TR', 'Turkey', 4);

update COUNTRIES
set region_id = region_id + 10
where country_NAME = 'Austria';