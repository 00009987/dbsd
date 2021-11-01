-- task 1
select ename, sal, deptno
from EMP
where sal between 800 and 1500
go

-- task 2
select distinct job
from EMP
order by job asc
go

-- task 3
select *
from EMP
where deptno in(10,20)
order by ename desc
go

-- task 4
select *
from EMP
where hiredate < '2010-01-01'
order by hiredate desc, ename asc
go
 
-- task 5
-- date format is yyyy-mm-dd
select ename, deptno, hiredate
from EMP
where hiredate between '2006-01-01' and '2006-12-31'
go

-- task 6
select ename "Names start with A or contain L"
from EMP
where ename like 'A%' or ename like '%L%'
go

-- task 7
select ename
from EMP
where ename like '__r%'
go

-- task 8
select ename, job, sal
from EMP
where job in ('Analyst', 'Salesman') and sal > 1250
go

-- task 9
select *
from EMP
where manager in ('7782', '7566', '7902')

select *
from EMP
where manager not in ('7782', '7566', '7902')
go

-- task 10
select ename, job, sal, hiredate
from EMP
where job = 'Clerk' or sal < 1000 or hiredate < '2005-01-01'
go

-- task 11
select ename, job, hiredate, sal, deptno
from EMP
where (job = 'Clerk' and deptno in (20, 30) and sal > 1000) or (job = 'Salesman' and deptno = 30 and sal >= 1500)
go

-- task 12
select ename, job, hiredate, sal, deptno
from emp
where NOT 
     (
      (job = 'Clerk' and deptno in (20,30) and sal > 1000)
      OR
      (job = 'salesman' and deptno = 30 and sal > 1500)
     )
go

select ename, job, hiredate, sal, deptno
from emp
where       
      (job <> 'Clerk' OR deptno not in (20,30) or sal <= 1000)
      AND
      (job <> 'salesman' or deptno <> 30 or sal <= 1500)
go

-- task 13
select ename
from emp
where ename like '%TH' or ename like '%LL%'
order by ename asc
go

-- task 14
select ename
from emp
where len(ename) > 4 and (ename like '%H' or ename like '%T')
go

-- task 15
/*
15.	List names and jobs of all clerks in department 20, format the output to look like “JOHN works as a clerk”. 
Use string concatenation operator “+” or CONCAT() function and LOWER()/UPPER() functions (see examples in Appendix) 
to change job and ename name case. Sort results by job title asc and then by ename desc.
*/

select ename, job, deptno
from emp
where deptno = 20 and job = 'Clerk'
order by job, ename desc
go
