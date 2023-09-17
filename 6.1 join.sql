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




















