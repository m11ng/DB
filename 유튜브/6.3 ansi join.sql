-- cross join : 오라클조인에서 cartesian product와 같은 거. 구구단.
select first_name, department_name
from employees
cross join departments;

-- natural join : 모든 같은 이름을 갖는 열에 대해 조인해주는 특징이 있음.
select first_name, department_name
from employees
natural join departments;
-- 사원 수가 107인데 32개만 출력됨 
-- department_id, manager_id : employees테이블과 departments테이블의 공통된 열
-- 네츄럴 조인의 특징 : 모든 공통된 열에 대해 조인
-- 그래서 원하는 결과를 얻지 못할 경우가 있음

-- using join : 오라클조인에서 equi join과 같음
-- 사원테이블과 부서테이블에서 부서아이디를 가지고 조인해주세요. 라는 의미
select first_name, department_name
from employees
join departments -- 조인해주세요 이 테이블을
using (department_id); -- 조인될 열

-- 위 using 절에 공통된 열이 아닐 경우엔 사용할 수 없으니 나온게
-- on 절
select department_name, street_address, city, state_province
from departments d
join locations l
on d.location_id=l.location_id;







