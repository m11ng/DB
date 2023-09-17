-- 날짜 함수
select sysdate from dual;
select systimestamp from dual;

-- 오늘날짜에서 입사일을 뺀 후 7로 나눔. => 지금까지 입사한지 몇 주나 됐는지.
select first_name, (sysdate - hire_date)/7 as weeks from employees
where department_id=60;

-- months_between : 두 날짜 사이에 월을 출력, 다이아나가 몇달이나 일했는지 출력하기
select first_name, sysdate, hire_date, months_between(sysdate, hire_date) as workmonth 
from employees
where first_name='Diana'; -- 199개월 근무

-- add_months : 입사 후 100개월째 되는 날짜가 언제인지 출력하기
select first_name, sysdate, hire_date, add_months(hire_date, 200)
from employees
where first_name='Diana'; -- 23/10/07일

-- next_day : 지정된 '요일' 찾기
select sysdate, next_day(sysdate, '일') from dual;

-- last_day : 월의 마지막 날짜 반환
select sysdate, last_day(sysdate) from dual;

-- trunc : 숫자도 절삭이 되고, 날짜도 절삭이 됨. 
select sysdate, round(sysdate), trunc(sysdate) from dual;
-- month를 명시하면 월 단위로 절삭
select sysdate, round(sysdate, 'month'), trunc(sysdate, 'month') from dual;

-- round 쓸때 주의 할 점 : ' ' 를 문자로 인식함
select round('17/03/16', 'month') from dual;
-- 변환 함수인 to_date를 적용해줘야함
select round(to_date('17/03/16'), 'month') from dual;





