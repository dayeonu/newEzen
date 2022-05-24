select *
from emp
where deptno in (20,30);

select *
from emp
where sal in (select Max(sal) 
    from emp
    group by deptno);
    
select max(sal)
from emp
group by deptno;

select *
from emp
    where sal = any(select max(sal)
    from emp
    group by deptno
);

select *
from emp
where sal = some (select Max(sal)
    from emp
    group by DEPTNO);

--30���μ� ������� �ִ� �޿����� ���� �޿��� �޴� ������� ����ϱ�--
select *
from emp
where sal < any (select sal 
    from emp
    where deptno = 30)
order by sal, empno;

--�μ� ��ȣ�� 30�� ������� �޿� ����ϱ�--
select sal
from emp
where deptno=30;

--30�� �μ� ������� �ּұ޿����� ���� �޿��� �޴� ��� ���� ����ϱ�--
select *
from emp
where sal > any (select sal
        from emp
        where deptno = 30);
