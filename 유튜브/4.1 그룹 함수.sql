-- 그룹 함수 : AVG, SUM, MIN, MAX, COUNT, STDDEV, VARIANCE
-- 사원아이디가 SA%로 시작하는 직무, 사원들에 대한 평균,최대,최소,합계를 출력 
select avg(salary), max(salary), min(salary), sum(salary)
from employees
where job_id like 'SA%'; -- SA 대문자 주의


-- 날짜 타입도 가능
select min(hire_date), max(hire_date) from employees;
-- 문자 타입도 가능
select min(first_name), max(last_name) from employees;
-- 가장 많이 받는 급여액
select max(salary) from employees;

-- count 함수
select count(*) from employees; -- 모든 사원의 수를 출력
-- 아래 두문장은 같은 뜻임
-- null은 연산이 안된다!!!!!!!
select count(commission_pct) from employees; -- 35
select count(*) from employees where commission_pct is not null; -- 35





























