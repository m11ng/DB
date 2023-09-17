-- 그룹 함수 : AVG, SUM, MIN, MAX, COUNT, STDDEV, VARIANCE
-- count(*)를 제외한 모든 그룹함수는 null 값을 제외하고 계산

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

-- count(*) 함수 : null값과 중복되는 행 모두를 포함하여 리턴
select count(*) from employees; -- 모든 사원의 수를 출력 

-- count(칼럼) 함수 : null이 아닌 행의 수를 리턴
-- count(*)를 제외한 모든 함수는 null은 연산이 안된다, 아래 두 문장은 같은 뜻임.
select count(commission_pct) from employees; -- 35
select count(*) from employees where commission_pct is not null; -- 35

-- STDDEV 표준편차, VARIANCE 함수
select sum(salary) as 합계,
    round(avg(salary), 2) as 평균, -- 소수점이하 두번째 자리까지 출력 
    round(stddev(salary), 2) as 표준편차, -- 분산의 제곱근
    round(variance(salary), 2) as 분산 -- 평균과 데이터와의 차이를 제곱해서 평균을 냄
from employees;

select round(stddev(salary), 2) as 표준편차,
       round(stddev_samp(salary), 2) as 표본표준편차, -- /n-1 -> 오라클에서 보통 사용
       round(stddev_pop(salary), 2) as 모표준편차 -- /n
from employees;

-- 다시 한번
-- 그룹 함수와 null 값 : count(*)를 제외한 모든 그룹 함수는 열에 있는 널값을 무시합니다.
select round(avg(salary*commission_pct), 2) as avg_bonus from employees; 
-- 널값을 무시하니, 원하는 결과값이 나오지 않을 수도 있음. 

select round(sum(salary*commission_pct), 2) as sum_bonus,
       count(*) count, -- count(*)를 제외한 모든 그룹함수는 null을 제외한다.
       round(avg(salary*commission_pct), 2) as avg_bonus1,
       -- 널값이 아닌 것만 가지고 평균이 계산됨.
       round(sum(salary*commission_pct)/count(*), 2) as avg_bunus2
--소수점 2자리(합계(널이 아닌 사원들  / 모든 사원들, 2)
       -- 합계는 널을 제외하고(제외해도되지 널 필요없잖아)/ 모든사원수로 나누면 원하는 결과가 나온다.
from employees;

-- nvl함수를 이용해서 null 값을 0으로 대체한 후 계산해도 됨.
-- 위 쿼리문과 비교해보기
select avg(nvl(salary*commission_pct, 0)) from employees;
























