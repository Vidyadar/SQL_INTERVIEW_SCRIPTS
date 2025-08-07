
---Nth Highest salary 
select emp_name,emp_salary from (
select *,dense_rank()over(order by emp_salary desc) as a from emp) a
where a=1---please change this input based on interviewr questions

--Nth Lowest Salry 
select emp_name,emp_salary from (
select *,dense_rank()over(order by emp_salary asc) as a from emp) a
where a=1---please change this input based on interviewr questions

--Department wise Nth highet /lowest salary 
select * from (
select *,dense_rank()over(partition by DEPT_ID  order by salary desc) as a from department) a
where  a=1 ---please change this input based on interviewr questions
