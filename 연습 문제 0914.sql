-- 1. 직원 테이블(s_emp)의 모든 행을 삭제하는 문장을 적으시오
select * from s_emp;
delete from s_emp;
rollback;
 
-- 2. 직원 테이블에 존재하는 모든 직급(title)을 '중복없이' 출력하시오
select * from s_emp;
select distinct title from s_emp;

-- 3. 직원 테이블을 부서별(dept_id) 내림차순 / 연봉(salary) 오름차순으로 정렬하시오
select * from s_emp 
order by dept_id desc, salary;

-- 4. 직원 테이블에서 2015년도 이전에 입사한 직원의 수를 출력하시오
-- 조회먼저
select * from s_emp;
select start_date from s_emp
order by start_date;

select * from s_emp -- start_date
where start_date < TO_DATE('2016-01-01', 'YYYY-MM-DD');

-- 5. 연봉이 1000이상 5000이하인 '직원'을 모두 출력하시오
select salary, name from s_emp -- salary
where salary between 1000 and 5000
order by salary;

-- 6. 각 부서(dept_id)별 평균 급여를 계산해서 보여주시오
select * from s_emp;
select dept_id, avg(salary) from s_emp
group by dept_id;

-- 7. 각 부서(dept_id)별로 직책이 사원인 직원들의
-- 평균 급여를 계산해서 보여주시오
select dept_id, title, avg(salary) from s_emp
where title = '사원'
group by dept_id, title
; -- having title = '사원'; 왜 얘로 못하는거지

-- 8. 각 지역(region_id)별로 몇 개의 부서가 있는지를 나타내시오 count(*)
select * from s_region; -- 5행
select * from s_dept; -- region_id 
-- 부서를 숫자로
select region_id 지역, count(id) 부서 from s_dept
group by region_id
order by region_id asc -- 정렬
; 

-- 9. 각 부서별로 평균 급여를 구하되, 평균 급여가 2000 이상인 부서만 나타내시오
select * from s_emp;

select dept_id, avg(salary) from s_emp
group by dept_id
having 2000 <= avg(salary);

-- 10. 각 직책별로 급여의 총합을 구하되 직책이 부장인 사람은 제외
--     단, 급여총합이 8000만원 이상인 직책만 나타내며, 급여 총합에 대한 오름차순으로 정렬하시오
select * from s_emp;

select title, sum(salary) from s_emp
where title not like '%부장'
group by title
having sum(salary) >= 8000
order by sum(salary);

-- 11. 각 부서별로 직책이 사원인 직원들에 대해서만 평균급여를 구하시오
--        dept_id   title                          avg(salary)
select * from s_emp;
select distinct dept_id, title from s_emp
order by title;

select dept_id, title, avg(salary) from s_emp
group by dept_id, title
having title ='사원'
;
-- 12. 각 부서내에서 각 직책별로 몇 명의 인원이 있는지를 나타내시오
--     dept_id          title      sum(dept_id)
select dept_id, title, count(dept_id) from s_emp
group by dept_id, title
;

-- 13. 각 부서내에서 몇 명의 직원이 근무하는지를 나타내시오
--       dept_id            count(dept_id)
-- 정렬 먼저
select * from s_emp
order by dept_id;

select dept_id, count(*) from s_emp
group by dept_id
order by dept_id
;

-- 14. 각 부서별로 급여의 최소값과 최대값을 나타내시오. dept_id, min(salary), max(salary)
-- 단 최소값과 최대값이 같은 부서는 출력하지 마시오 -- 조건 min ==
select * from s_emp;

select dept_id, min(salary), max(salary) from s_emp
group by dept_id
having min(salary) != max(salary)
;

-- 15. 직원(s_emp)테이블과 부서(s_dept)테이블을 join하여, 사원의 이름과 부서, 부서명을 나타내시오
select * from s_emp; -- name dept_id
select * from s_dept; -- name

select e.name 사원명, e.dept_id 부서, d.name 부서명 from s_emp e, s_dept d
where e.dept_id = d.id
;

-- 16-1 직원(s_emp)테이블과 부서(s_dept)테이블을 join하여, 사원의 이름과 부서, 부서명을 나타내시오
select * from s_emp; -- dept_id
select * from s_dept; -- id / region_id
select * from s_region; -- id

select e.name, e.dept_id, d.name 부서명 from s_emp e, s_dept d
where e.dept_id = d.id
;
-- 16. 서울 지역에 근무하는 사원에 대해 각 사원의 이름과 근무하는 부서명을 나타내시오
select * from s_dept; -- region_id
select * from s_region; -- id, name
select * from s_emp;

select e.name 사원명, d.name 부서명, r.name 근무지역 from s_emp e, s_dept d, s_region r
where e.dept_id = d.id and d.region_id = r.id and r.id = 1
;

-- self join
select * from s_emp;

select w.id 사번, w.name 사원명,
       m.id 부서장사번, m.name 부서장명
from s_emp w, s_emp m
where w.manager_id = m.id
;




-- 17. 직원 테이블(s_emp)과 급여 테이블(salgrade)을 join하여 사원의 이름과 급여, 그리고 해당 급여등급을 나타내시오
-- non-equijoin
select * from s_emp;
select * from salgrade;

select e.name, e.salary, s.grade 급여등급 from s_emp e, salgrade s
where e.salary between s.losal and s.hisal
;

-- 18. 직원(s_emp)테이블과 고객(s_customer)테이블에서 사원의 이름과 사번, 그리고 각 사원의 담당고객 이름을 나타내시오
--     단, 고객에 대하여 담당 영업사원이 없더라도 모든 고객의 이름을 나타내고, 사번 순으로 오름차순 정렬하시오
select * from s_emp;
select * from s_customer;

select e.name 사원명, e.id, c.name 고객명 from s_emp e, s_customer c
where e.id (+) = c.sales_rep_id
order by 2 -- e.id -- 정렬
;


-- 19. 직원 중에 '김정미'와 같은 직책(title)을 가지는 사원의 이름과 직책, 급여, 부서번호를 나타내시오(self join을 사용할 것)
--                                    과장
-- self join : 동일 테이블 사이의 조인
select * from s_emp;
order by dept_id;

select title from s_emp
where name = '김정미'
;

select title, name from s_emp where name = '김정미';

select * from s_emp j, s_emp n where j.id = n.id where title = (select title from s_emp where name = '김정미');

select * from s_emp;
select n.title, n.salary, n.dept_id, n.name from s_emp j, s_emp n
where j.id = n.id and n.title = (select title from s_emp
where name = '김정미');

select n.title, n.salary, n.dept_id, n.name from s_emp j, s_emp n
where n.title = j.title
;


-- 구구단으로 돌아간 걸 한번 걸러주는 거. 박구곤 - 박구곤 만 빼고 다 지워
j.name='김정미' 
and j.title = n.title 
and j.salary = n.salary 
and j.dept_id = n.dept_id 
and n.name not like '김정미'-- 같은 직책을 가지는
-- 사원의 이름과 직책, 급여, 부서번호를 나타내시오
;

select e.title, e.name, e.salary, e.dept_id from s_emp e, s_emp n
where e.title = n.title
group by title
having title = '과장'
;

select w.id 사번, w.name 사원명,
       m.id 부서장사번, m.name 부서장명
from s_emp w, s_emp m
where w.manager_id=m.id
;

-- 20. 가장 적은 평균급여를 받는 직책에 대해 그 직책과 평균급여를 나타내시오
--          min(salary)        title                   a  avg(salary)
select * from s_emp;
-- 그룹별 평균 급여 부터 구하기

select title, avg(salary) from s_emp3
group by title
order by avg(salary)
;
select title, min(salary) from s_emp
group by title
order by min(salary)
;





-- 21. s_emp테이블에서 각 사원의 이름과 급여, 급여등급을 나타내시오
--     급여가 4000만원 이상이면 a등급, 3000만원 이상이면 b등급, 2000만원 이상이면 c등급, 1000만원 이상이면 d등급, 
--     (1000만원 미만이면 e등급으로 나타내시오(salgrade 테이블을 사용하지 않고 deocode()를 사용할 것)

-- 22. 자신의 급여가 자신이 속한 부서의 평균 급여보다 적은 직원에 대해 이름, 급여, 부서번호를 출력하시오
-- 23. 본인의 급여가 각 부서별 평균 급여 중 어느 한 부서의 평균급여보다 적은 급여를 받는 직원에 대해 
--     이름, 급여, 부서번호를 출력하시오(any 사용할 것)

-- 24. 본인이 다른 사람의 관리자(manager_id) 로 되어있는 직원의 사번, 이름, 직책, 부서번호를 나타내시오(exist 사용할 것)

-- 25. 직원(s_emp) 테이블에서 이름을 사전순으로 정렬하여 5개의 데이터만 나타내시오.






