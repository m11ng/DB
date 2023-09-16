-- select 절에 집계함수가 올때 일어나는 결과를 알기
-- 집계함수는 전체 테이블에서 하나의 값을 나타내기 때문에
-- 다른 컬럼과 조회가 같이 되지 않음 
-- 왜? 어차피 집계함수는 하나의 값만 나오는데 다른거랑 조회하면 하나? 불필요함
select dept_id, avg(salary)
from s_emp
--where title = '사원'
--group by dept_id
;

-- 그래서


-- 평균 급여
select avg(salary)
from s_emp
;
-- 각 부서별 평균 급여
-- 셀렉절에 그룹함수가 오면 셀렉절에 나머지 칼럼은 그룹바이절에 기술되어야 한다.


-- 5-2-2 각 부서별(dept_id) 평균 급여를 계산해서 보여주시오
select dept_id, avg(salary)
from s_emp
group by dept_id
;

-- 5-2-2 각 부서별로 직책이 사원인 직원들의 평균 급여를 계산해서 보여주시오
select dept_id, title, avg(salary)
from s_emp
where title = '사원'
group by dept_id, title
;

select * from s_emp;

-- 5-3-1 각 지역(region_id)별로 몇 개의 부서가 있는지를 나타내시오
select * from s_region;
select name from s_region;


-- 5-3-2 각 부서별로 평균 급여를 구하되, 평균 급여가 2000이상인 부서만 나타내시오
select dept_id, avg(salary) 
from s_emp
group by dept_id
having avg(salary) >= 2000
;

-- 5-5 
select * from s_emp;
select title, avg(salary), count(*) as 인원
from s_emp
group by title
having count(*) > 2
;

-- 5-5-1 각 직책별로 급여의 총합을 구하되, 직책이 부장인 사람은 제외하시오
-- 단 급여총합이 8000(만원) 이상인 직책만 나타내며, 급여 총합에 대한 오름차순으로 정렬하시오
select title, sum(salary)
from s_emp
where title not like '%부장'
group by title
having sum(salary) >= 8000
order by sum(salary) desc
;




-- 5-5-2 각 부서별로 직책이 사원인 직원들에 대해서만 평균 급여를 구하시오
select * from s_emp;

select dept_id, avg(salary)
from s_emp
where title = '사원'
group by dept_id
order by dept_id
;

-- 사원만 나온게 맞는지 확인하고 싶었음
select dept_id
from s_emp
where title = '사원'
order by dept_id
;



-- 5-6 group을 subgroup으로 세분화 하기
select dept_id, title, count(*)
from s_emp
group by dept_id, title
;



-- 5-6-1 각 부서내에서 각 직책별로 몇명의 인원이 있는지를 나타내시오
select dept_id, title, count(*)
from s_emp
group by dept_id, title
;
-- 5-6-2 각 부서내에서 몇 명의 직원이 근무하는지를 나타내시오
select dept_id as 부서, count(*)
from s_emp
group by dept_id
;

-- 5-6-3 각 부서별로 급여의 최소값과 최대값을 나타내시오
-- 단 최소값과 최대값이 같은 부서는 출력하지 마시오 -- 중복제거
select dept_id, min(salary) as 최소값, max(salary) as 최대값
from s_emp
group by dept_id
having min(salary) != max(salary)
;
-- distinct쓰려고 했는데 안돼! 그러면 ..

-- 6-4 직원(s_emp)테이블과 부서(s_dept)테이블을 join하여, 사원의 이름과 부서, 부서명을 나타내시오
select * from s_emp;
select * from s_dept;

select e.name, e.dept_id, d.name 부서명
from s_emp e, s_dept d
where e.dept_id = d.id
;

-- 6-5 칼럼과 테이블의 alias 사용
-- 서울 지역에 근무하는 사원에 대해 
-- 각 사원의 이름과 근무하는 부서명을 나타내시오
select * from s_dept;
select * from s_region;
select * from s_emp;

select d.region_id, r.name, d.name
from s_region r, s_dept d
where r.id = d.region_id
--(select
--)
--group by d.region_id, r.name, d.name
--having r.name = '서울특별시'
; 



select  r.id, d.region_id, d.name 
from s_region r, s_dept d
where r.name = '서울특별시'
--group by r.name
--having d.name
;


-- 6.6 non-equijoin
-- 서로 일치하지 않는 데이터 (join 할 수 없는 경우)
select e.name, e.salary, g.grade 급여동급
from s_emp e, salgrade g
where e.salary between g.losal and g.hisal;

-- 6-6 직원 테이블(s_emp)과 급여테이블(salgrade)을 join하여 사원의 이름과 급여, 
-- 그리고 해당급여 등급을 나타내시오
select * from s_emp;
select * from salgrade;

select * from s_emp e, salgrade s
;










