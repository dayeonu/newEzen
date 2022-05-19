
/* �����Լ� : count, sum, avg, max, min --group by having(����)
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
from EMPLOYEES; -- ǥ������, 

/* group by ���ۼ���
1. ���̺��� where���ǽĿ� �´� ������ ���� ����
2. ������ �� �������� ���� �����Ͱ����� �׷�ȭ 
3. ������ ������ �׷�ȭ�� ���� ��� ���
*/
select job_id, sum(salary), avg(salary)
from EMPLOYEES
group by job_id;  -- ������ job_id���� ���� ���� �׷�ȭ �̴�. 

select job_id, salary
from EMPLOYEES; -- ������ job_id���� ���� ���� �׷�ȭ �̴�. 

select job_id, sum(salary), avg(salary)
from EMPLOYEES
where DEPARTMENT_id = 50 
group by job_id;  -- ������ job_id���� ���� ���� �׷�ȭ �̴�. 

select DEPARTMENT_id, job_id, salary
from EMPLOYEES;

select department_id, max(salary), min(salary)
from EMPLOYEES
where hire_date > '20070101' -- �Ի����� 20070101 ������ ���̵�
group by department_id; 

select country_id, count(country_id)
from locations
group by country_id;

select job_id, department_id, sum(salary), avg(salary)
from EMPLOYEES
group by job_id, department_id; -- �ΰ��� �Բ� ������ ���� 

select job_id, department_id, sum(salary), avg(salary)
from EMPLOYEES
where DEPARTMENT_ID between 50 and 100
group by job_id, department_id; -- �ΰ��� �Բ� ������ ����

select manager_id, department_id, sum(salary), avg(salary)
from EMPLOYEES
where DEPARTMENT_ID = 50
group by manager_id, DEPARTMENT_ID  -- �ΰ��� �Բ� ������ ����
order by manager_id;

select department_id, manager_id, job_id, max(salary), min(salary)
from EMPLOYEES
group by department_id, manager_id, job_id
order by job_id, department_id desc;

select job_id, sum(salary), avg(salary)
from EMPLOYEES
group by job_id
having avg(salary) >= 10000; --�׷� ��ü�� ������ ������  having����� �� 

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
where manager_id in(100,101) -- 100�� 101���̸� ��ȸ , ��ȸ�� ���� �����ϴ� ����
group by manager_id, department_id, job_id;

select manager_id, department_id, job_id, sum(salary), avg(salary), max(salary)
from EMPLOYEES 
having sum(salary) between 10000 and 40000 -- ���� ���� �� having ��� 
group by manager_id, department_id, job_id -- �׷�ȭ �� ����/ ������ ���������� 
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

-- nvl() : null ���� Ư���� ������ ġȯ�ض�
select department_name, nvl(manager_id, 100) ---null ó�� null�ڸ��� 100 �ֱ� 
from departments; 

select nvl(state_province, 'None')---null ó�� null�ڸ��� None �ֱ� 
from LOCATIONS
order by STATE_PROVINCE;
 
 -- NVL2 : 
select department_name, nvl2(manager_id, '������', '��') -- NULL���� �ƴѰ��,�� ������, NULL�̸� �ѹ�
from departments;

-- DECODE : min_salary�� 2500�̸�, 1.1 ���ϱ� ���� ,�ƴϸ� 1000 ���ϱ� ���� ...��Ģ������ ���´� ������ �����ϴ� 
select min_salary, decode(min_salary, 2500, min_salary*1.1, min_salary+1000)
from jobs;

select min_salary,
    case
        when min_salary < 4000 then min_salary*1.2 -- ������ ������ ���� 
        when min_salary between 4000 and 6000 then min_salary*1.1 -- ������ ������ ���� 
        else min_salary -- ������ �״�� 
    end as  �ּұ޿�
    from jobs;
    

select first_name, salary,
    rank() over(order by salary desc) as rank, -- ��ũ ��������
    dense_rank() over(order by salary desc) as dense_rank, -- ���� ���� �� ��� 
    row_number() over(order by salary desc) as row_rank
from employees;

select *
from employees
where length(job_id) < 6;

select job, substr(job,1,2), substr(job, 3,2), substr(job,5)
FROM
