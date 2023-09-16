-- 데이터 정렬
-- 기본 ASC 생략 가능 : 오름 차순 1 2 3 4 5
select first_name, hire_date from employees
order by hire_date ASC
;

-- DESC : 내림 차순 5 4 3 2 1
select first_name, hire_date from employees
order by hire_date ASC
;

select first_name, salary*12 as annsal
from employees
order by annsal; -- order by에 열별칭 가능 


select first_name, salary*12 as annsal
from employees
order by 2; -- select 절에 컬럼 순을 숫자를 부여해서 정렬 조회도 가능
-- 열에 순서를 이용해서도 조회가 가능하다는 뜻 


select first_name, salary*12 as annsal
from employees
order by 2, first_name; -- 정렬에 여러개의 열이 올 수 있음

-- 입사일 내림차순, 이름 오름차순
select first_name, hire_date from employees
order by hire_date desc, first_name asc; -- asc생략가능 












