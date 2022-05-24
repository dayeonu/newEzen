
/* any 조건을 하나라도 만족하면 true */

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