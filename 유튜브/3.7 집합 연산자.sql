-- 집합 연산자 : union 합집합, union all 합집합, intersect 교집합, minus 차집합
-- 첫번째 셀렉트문과 두번째 셀렉트문의 컬럼(열) 개수, 데이터타입이 일치해야 함

-- union :아래 두개의 쿼리문을 하나의 결과로 얻고자 할 때
select employee_id, first_name from employees
where hire_date like '04%';

select employee_id, first_name from employees 
where department_id=20;

-- 2004년도에 입사한 입사자에서 부서번호가 20번인 사원을 조회하는 쿼리문.
select employee_id, first_name from employees
    where hire_date like '04%'
union
select employee_id, first_name from employees 
    where department_id=20;
    
-- 컬럼의 타입1
select employee_id, first_name, 0 from employees
    where hire_date like '04%'
union
select employee_id, first_name, salary from employees 
    where department_id=20;
-- 컬럼의 타입2
select employee_id, first_name from employees
    where hire_date like '04%'
union
select employee_id, salary || ' ' from employees -- 자바에서 string만들때처럼 + " "연결
    where department_id=20;

-- union all : 중복된 데이터도 출력해준다.
select employee_id, first_name from employees
    where hire_date like '04%'
union all
select employee_id, first_name from employees 
    where department_id=20;

-- intersect : 교집합
select employee_id, first_name from employees
    where hire_date like '04%'
intersect
select employee_id, salary || ' ' from employees -- 자바에서 string 만들기 처럼 '' 연결
    where department_id=20;
    
-- minus : 차집합
select employee_id, first_name from employees
    where hire_date like '04%'
minus
select employee_id, first_name from employees 
    where department_id=20;
    
    
    
