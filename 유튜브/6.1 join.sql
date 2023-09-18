-- cartesian product : where없이 진행했을 때.
-- 모든 행을 조합한 결과가 나오게 됨 => 구구단 처럼
select first_name, department_name
from employees, departments;

-- 두 테이블의 이름이 같을 경우, 테이블 명시해주기 
select first_name, employees.department_id, department_name
from employees, departments;

-- 별칭을 줄 수 있음
select first_name, e.department_id, department_name
from employees e, departments d;

-- equi join : where절에 join의 조건을 둔다.
select first_name, e.department_id, department_name
from employees e, departments d
where e.department_id = d.department_id;

-- where 절에는 일반조건과 조인조건을 함께 가질 수 있음.
select first_name, department_name
from employees, departments 
where employees.department_id = departments.department_id
and employees.department_id=60;

-- 내가 어려워 하는 부분, 일반조건과 조인조건을 함께 가질 수 있음. and 사용
select e.first_name, m.first_name
from employees e, employees m
where e.manager_id = m.employee_id
and e.employee_id = 103;


-- non-equi join : 동등 연산자(=)가 아닌 다른 연산자를 이용해서 join하는 것 
select e.first_name, e.salary, j.job_title from employees e, jobs j
where e.salary
between j.min_salary and j.max_salary;

-- outer join : 조인 조건을 만족하지 않는 행들도 보기 위해서 조인 하는 것.
-- (+) 연산자를 이용함 * 데이터가 없는 쪽에 (+)를 붙임!!!

select * from job_history; 
-- 모든 사원의 정보를 조회하면서, 사원의 직무 변경 기록이 있을 경우 해당 기록도 출력해야하는 경우
-- 아래와 같이 하면 직무 변경 기록이 있는 사원만 조회가 됨
select e.employee_id, e.first_name, e.hire_date,
    j.start_date, j.end_date, j.job_id, j.department_id
from employees e, job_history j
where e.employee_id = j.employee_id
order by j.employee_id;

-- outer join => 직무변경이 없는 사원은 null 로 표시가 됨 
select e.employee_id, e.first_name, e.hire_date,
    j.start_date, j.end_date, j.job_id, j.department_id
from employees e, job_history j
where e.employee_id = j.employee_id (+)
order by j.employee_id;














