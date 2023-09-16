select * from s_emp
order by dept_id;


-- 각 부서별(groupaby dept_id) 평균급여(salary)를 계산해서 보여주시오.
select dept_id, avg(salary) from s_emp
where title = '사원'
group by dept_id
order by dept_id
;

-- 그룹바이할떄는 그룹으로 묶은 것만 와야해.
select name, dept_id, avg(salary) from s_emp
where title = '사원'
group by dept_id
order by dept_id
;

-- select가 print문인거 알기
-- 문자열 뭘 써도 됨. 왜? 프린트니까.
select 'a' dept_id, avg(salary) from s_emp
where title = '사원'
group by dept_id
order by dept_id
;
 
-- printf() = select


-- 각 부서(dept_id)별로 직책이 사원인 직원들의 평균 급여를 계산해서 보여주시오.


-- where title<> '부장'
-- 각 직책별(title) 로 급여의 총합(sum(salary)을 구하되 

-- order by 먼저하고 group by 하기!!!!!!!
select title, sum(salary) as sum from s_emp;
--where title !='부장' 이게 아님!!!!
-- 부장만 지우는게 아니라 기획부장, 00부장도 지워야지.
where title not like '%부장'
group by salary
having sum(salary) >= 8000
order by sum(salary) desc
;
-- 결과를 엑셀에 꼭 붙여넣고 값을 확인해봐!!!
--db잘하려면 엑셀 잘해야함.

Select title, sum(salary), count(*) from s_emp
where title not like '%부장'
group by title
having sum(salary) >= 8000
order by sum(salary)
;

-- 직책이 부장인 사람은 제외하시오


-- 단 급여 총합이 9000이상인 직책


-- 급여 총합에 대한 오름차순 정렬















