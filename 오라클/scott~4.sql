create table emp_ddl(
    empno number(4),
    ename varchar2(10),
    job varchar2(9),
    mgr number(4),
    hiredate date,
    sal number(7,2),
    comm number(7,2),
    deptno number(2)
    );

desc emp_ddl;
select * from emp_ddl;

create table dept_ddl as select * from dept;
select * from dept_ddl;

create table emp_ddl_30 as select * from emp 
where deptno = 30;

select * from emp_ddl_30;

create table empdept_ddl as
select e.EMPNO, e.ENAME, e.JOB, e.MGR, e.HIREDATE, e.sal, e.comm, d.DEPTNO, d.DNAME, d.loc
from emp e, dept d
where 1 <> 1;

desc emp_alter;

select * from emp;
select * from empdept_ddl;

create table emp_alter
as select * from emp;

select * from emp_alter;

alter table emp_alter
add hp varchar2(20);

alter table emp_alter
rename column hp to tel;

alter table emp_alter
MODIFY empno NUMBER(5);

alter table emp_alter
drop column tel;

rename emp_alter to emp_rename;

desc emp_rename;

delete from emp_rename;

TRUNCATE TABLE emp_rename;
select * from emp_rename;
rollback;