-- to_char : 날짜를 문자로 변환
select first_name, to_char(hire_date, 'mm/yy') as month_hired from employees
where first_name='Steven';

-- to_char 사용 예시
select first_name, to_char(hire_date, ' yyyy"년" mm"월" dd"일" ') hire_date from employees;

-- 월을 한글이 아닌 영어로 나타낼 수도 있다.
select first_name, 
    to_char(hire_date, 'fmDdspth "of" Month YYYY fmHH:MI:SS AM',
            'NLS_DATE_LANGUAGE=english') hiredate 
from employees;

-- 
select first_name, last_name, to_char(salary, '$999,999') salary
from employees
where first_name='David';

--
select first_name, last_name, to_char(salary, '$099,999') salary
from employees
where first_name='David';


-- 표시하는 자리보다 값이 더 클 경우 #으로 표시됨
select to_char(2000000, '$999,999') salary from dual;

-- to_char에 .99하면 round함수를 쓰지 않아도 자리수를 소수점 이하로 지정하면 반올림 해줌
select first_name, last_name, salary*0.123456 salary1,
    to_char(salary*0.123456, '$999,999.99') salary2 from employees
where first_name='David';

-- to_number

-- 묵시적 형변환
select '5500' - 4000 from dual;

-- 콤마나, 달러등의 숫자로 변환할 수 없는 기호가 들어 갈 경우는 묵시적 형변환 안됨
select '5,500' - 4000 from dual;
select '$5,500.00' - 4000 from dual;

-- to_number 이용해서 문자를 숫자로 변환 후 계산 
select to_number('$5,500.00', '$99,999.99') - 4000
from dual;

select first_name, hire_date from employees
where hire_date=to_date('2003/06/17', 'yyyy/mm/dd');

select first_name, salary+salary*commission_pct from employees;

-- null값은 연산이 되지 않기 때문에, 연산하고자 한다면 
-- null을 다른 값으로 대체해야함 
-- 그걸 해주는게 nvl
-- 첫번째 인수 값이 널일경우 다음 인수 값을 반환한다.
select first_name, salary+salary*nvl(commission_pct, 0) from employees;

-- nvl2 : 첫번째 인수가 널이 아니면 앞에 괄호, 널이면 salary
select first_name, nvl2(commission_pct, 
                    (salary+salary*commission_pct), salary) ann_sal
                    from employees;

-- coalesce :
select first_name, coalesce(salary+(salary*commission_pct), salary) as ann_sal
from employees;

-- lnnvl
-- 조건절에서 (salary*commission_pct >= 650);식이 트루면 lnnvl을 걸어 false로 바꿈
-- 만약 식이 false일 경우 true로 바꿈

select first_name, coalesce(salary*commission_pct, 0) as bonus from employees
where lnnvl(salary*commission_pct >= 650);


-- decode
select job_id, salary, decode(job_id, 'IT_PROG', salary*1.10,
                                      'FI_MGR', salary*1.15,
                                      'FI_ACCOUNT', salary*1.2,
                                      salary)
                                      as revised_salary
from employees;

-- case ~ when ~ then
select job_id, salary,
case job_id when 'IT_PROG' then salary*1.10
            when 'FI_MGR' then salary*1.15
            when 'FI_ACCOUNT' then salary*1.2
            else salary
    end as revised_salary
    from employees;
                                      

-- 문제 
-- 1월부터 12월까지 각 월의 마지막 날짜를 출력하세요
-- 1/31, 2/28, 3/31, 4/30, 5/31, 6/30, 7/31, 8/31, 9/30, 10/31, 11/30, 12/31
















