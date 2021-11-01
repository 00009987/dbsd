-- task 1
select *
from emp
where deptno = (
		select deptno
		from emp
		where job = 'president'
	)
and job <> 'president'
go

-- task 2
select *
from emp
where sal in (
		select hisal
		from salgrade
	)
go

-- task 3
select *
from emp
where sal = (
		select min(sal)
		from emp	
	)
go

-- task 4
select *
from emp
where sal > any (
		select sal
		from emp
		where deptno = 20
	)
and deptno != 20
go

-- task 5
select *
from emp
where sal > all (
		select sal
		from emp
		where job = 'salesman'
	)
and job <> 'salesman'
go

-- task 6
select	e.ename 'Emp name', e.job 'Emp job title', e.manager "Manager Id", coalesce((select m.ename from emp m where m.empno= e.manager), 'No manager') "Manager name"
from emp e
go

-- task 7
select *
from dept
where not exists (select * from emp where emp.deptno = dept.deptno)
go

-- task 8
select ename, job, sal, (select avg(sal) from emp e2 where e2.deptno = e.deptno) 'average salary'
from emp e
where e.sal > (select avg(sal) from emp e2 where e2.deptno = e.deptno)
go