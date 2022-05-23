select * from COUNTRIES;
select * from locations;
desc countries;
desc LOCATIONS;

/* countries ���̺�� locations���̺��� 
location�� country_id�� �������� �ܺ������Ͽ� 
country_id,coutry_name, city�� ��ȸ */

select C.country_id, C.country_name, L.city
from COUNTRIES C, locations L
where C.COUNTRY_ID = L.COUNTRY_ID
order by c.country_id;

desc EMPLOYEES;
desc departments;
-- �ܺ� ����: �����ϴ� ���̺��� ���������� �������� �ʴ� �൵ ����ض�.
-- �������� ������ �������� ���ϰ� ������ ���� ����� �� ����Ѵ�. 
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

