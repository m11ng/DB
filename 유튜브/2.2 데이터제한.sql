-- 2.1 기본 문법
--  [ ] 쳐진 건 생략 가능,
-- SELECT [DISTINCT] {*| column[[AS] alias], ...} FROM table;

-- 열 헤딩에 별칭을 줄 때 쌍따옴표를 쓰면 대/소문자를 구별하게 바꿀 수 있다.
SELECT
    first_name   "Employee Name",
    salary * 12  "Annual Salary"
FROM
    employees;

-- 컬럼 더하기 ||
SELECT
    first_name
    || ' '
    || last_name
    || '''s salary is $'
    || salary AS " Employee Details"
FROM
    employees;
    
-- 중복 제거 distinct
SELECT DISTINCT department_id FROM employees;

-- 주의 : 한 행의 모든 열값이 다른행과 같아야 한다.
-- department_id를 한번만 나오게 하고 싶어서 썼지만, salary에는 조건을 안줬으므로 겹치는 부분 발생
SELECT DISTINCT department_id, salary FROM employees;

-- rownum과 rowid
SELECT ROWID, ROWNUM, employee_id, first_name FROM employees;


-- 2.2 데이터 제한
-- WHERE절로 선택된 행을 제한 할 수 있다.
-- SELECT [DISTINCT] {*, column [[AS] alias],
-- FROM table
-- [WHERE condition(s)];

-- 조건을 주는 방법, 유의 : 대소문자가 구별된다.
SELECT first_name,job_id,department_id FROM employees
WHERE job_id = 'IT_PROG';
--WHERE job_id = 'it_prog';

SELECT first_name, last_name, hire_date FROM employees
WHERE last_name = 'King';
--WHERE last_name = 'king';

-- 날짜 형식 알기
select first_name, salary, hire_date from employees
where hire_date='04/01/30'; -- rr/mm/dd

-- 비교연산자는 날짜와 문자도 크기 비교 가능하다.
select first_name, salary, hire_date from employees
where hire_date <= '04/01/30';

select first_name, salary, hire_date from employees
where first_name > 'Steven';

-- 연산자 3가지

-- between : 10000 <= salary <= 12000
select first_name, salary, hire_date from employees
where salary between 10000 and 12000;

-- IN : or와 같음
select employee_id, first_name, salary, manager_id from employees
where manager_id in(101,102,103);

select employee_id, first_name, salary, job_id, department_id from employees
where job_id in('IT_PROG', 'FI_MGR', 'AD_VP');

-- LIKE
select first_name, last_name, job_id, department_id from employees
where job_id like 'IT%';

select first_name, hire_date from employees
where hire_date like '%03%';

-- _
select first_name, email from employees
where email like '_A%';

-- _ 언더스코어를 포함해서 검색을 해야하는 경우는 에스케이프 옵션을 사용한다.
select first_name, job_id from employees
where job_id like 'SA\_M%' escape '\';


-- null은 연산되지 않음.
select first_name, commission_pct from employees
where commission_pct < 0;

select * from employees;
-- 또는
select commission_pct from employees;

-- NULL은 연산되지 않는다.
-- NULL 조회는 IS NULL / IS NOT NULL 로 해야 함

-- 안되는 경우
select first_name, manager_id from employees
where manager_id = NULL;

-- NULL을 조회하고 싶으면 아래와 같이 하면 됨.
select first_name, manager_id from employees
where manager_id is NULL;

-- 보너스를 받는 사람과 받지 않는 사람을 구분할 때

-- 커미션이 널인 사람 출력해주세요
select first_name, job_id, commission_pct from employees
where commission_pct is null;

-- 커미션 피씨티를 받는 사람을 출력해주세요.
select first_name, job_id, commission_pct from employees
where commission_pct is not null;

select first_name, job_id, salary from employees
where job_id='IT_PROG' and salary>=5000;
    
    
-- 논리 연산자
-- and, or, not 등이 비교 연산자와 같이 사용 되는 것.

select first_name, job_id, salary from employees
where job_id='IT_PROG' or salary>=5000;

-- 직무아이디가 IT_PROG이거나 FI_MGR인 사원들 중에서 급여가 6000이상인 사람
select first_name, job_id, salary from employees
where 
(job_id='IT_PROG' OR job_id='FI_MGR')
AND salary >= 6000;

    

    
    
