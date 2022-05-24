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

--30번부서 사원들의 최대 급여보다 적은 급여를 받는 사원정보 출력하기--
select *
from emp
where sal < any (select sal 
    from emp
    where deptno = 30)
order by sal, empno;

--부서 번호가 30인 사원들의 급여 출력하기--
select sal
from emp
where deptno=30;

--30번 부서 사원들의 최소급여보다 많은 급여를 받는 사원 정보 출력하기--
select *
from emp
where sal > any (select sal
        from emp
        where deptno = 30);
