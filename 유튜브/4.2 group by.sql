-- group by : 그룹핑은 하나 이상으로  그룹핑 할 수 있다.
select department_id, round(avg(salary))
from employees  
group by department_id;

select department_id, job_id, sum(salary)
from employees
group by department_id, job_id;

select department_id, count(first_name) from employees
group by department_id;

-- 그룹바이 절에 없는 열은 select절에 직접 올 수 없다.(그룹함수와 같이 올수 있다)
-- 그룹함수로 행을 제한하기 위해 where 절에 사용할 수 없다.
select department_id, avg(salary) from employees
where avg(salary) > 2000
group by department_id;

-- 4.3 having
select department_id, round(avg(salary), 2) from employees
group by department_id 
having avg(salary) > 8000;


-- 일반적인 행을 제한하는 조건과 그룹핑을 제한하는 조건 같이 올 수 있다.
select job_id, avg(salary) payroll from employees
where job_id not like 'SA%' 
group by job_id
having avg(salary) > 8000
order by avg(salary);












