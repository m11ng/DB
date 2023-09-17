-- rollup : 첫번째 그룹핑에 대한 소계를 만들어 줌
select department_id, job_id, round(avg(salary), 2), count(*) from employees
group by rollup(department_id, job_id)
order by department_id, job_id;

-- cube : 모든 열에 대해 소계로 만들어 줌
select department_id, job_id, round(avg(salary), 2), count(*) from employees
group by cube(department_id, job_id)
order by department_id, job_id;

-- grouping : 소계영역으로 생성됐으면 1을 반환한다.
select 
    nvl2(department_id, department_id||'',
        decode(grouping(department_id), 1, '소계')) as 부서,
    nvl(job_id, decode(grouping(job_id), 1, '소계')) as 직무,
    round(avg(salary), 2) as 평균,
    count(*) as 사원의수
from employees
group by cube(department_id, job_id) order by 부서, 직무;