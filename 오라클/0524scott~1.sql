
/* any ������ �ϳ��� �����ϸ� true */

select sal
from emp
where sal < any(select sal
    from emp
    where deptno = 30);
    
select sal
from emp
where sal > all (select sal 
                from emp
                where deptno = 30);
                
   select sal 
   from emp
   where deptno = 30;


select *
from emp
where (deptno,sal) in(select deptno, max(sal)
                from emp
                group by deptno);