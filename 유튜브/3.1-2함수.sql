-- dual 테이블 (더미 테이블) 이용하기
-- hr 계정이 가지고 있는게 아니고, 
-- sys라는 계정이 가지면서, 누구든지 사용할 수 있도록 public 권한인 테이블
-- 문자열 함수를 더미테이블 가지고 연습 해보면 된다.

-- 더미란 열에, x라는 값 1개 밖에 없는 애
select * from dual;

-- initcap() : 첫 문자만 대문자로, 나머지는 소문자로 출력해주는 함수 
select initcap('javaspacialist') from dual;

-- lowr : 소문자 출력 
-- upper: 대문자 출력
select last_name, lower(last_name), initcap(last_name), upper(last_name)
from employees;

-- austin
-- 정확히 이름의 대소문자를 알면 아래와 같이 찾으면 됨
select * from employees 
where last_name='Austin';


-- 그러나 이름만 알고 대소문자를 모르는 경우 혹은 그 반대 일 때
-- 열에 함수를 입혀서 내가 아는 오스틴과 데이터베이스에 저장된 오스틴이 일치하는지 
-- 즉 소문자 대 소문자로 바꿔서 조회하는 거 
-- 값에다 씌우면 의미 없음 열에 씌워야 의미있다는 걸 알고 가기.
-- 원본데이터인 last_name에 함수를 씌워 소문자로 바꿔준 후 내가 알고있는 소문자값과 비교하게끔 
select * from employees
where lower(last_name)='austin';

-- length : 길이
-- instr  : 값에 a가 들어있는 위치, 0이면 없다는 뜻.
select first_name, length(first_name), instr(first_name, 'a')
from employees;


-- concat : 문자열 결합
select first_name, substr(first_name, 1, 3), concat(first_name, last_name) from employees;

-- rpad : 10자리를 출력하는데 공백은 -로 채워주세요
-- lpad : 10자리를 출력하는데 공백은 *로 채워주세요
select rpad(first_name, 10, '-')as name, lpad(salary, 10, '*') as sal
from employees;

-- ltrim : 해당 문자열에 Jav가 있나? 있으면 제거 
select ltrim('Javaspecialist', 'Java') from dual; -- 이 두문장은 서로 같음.
select ltrim('Javaspecialist', 'Jav') from dual;

select ltrim(' javaspecialist') from dual; -- 왼쪽 공백 제거 
select rtrim('   javaspecialist ') from dual; -- 오른쪽 공백 제거 
select trim('   javaspecialist ') from dual; -- 양쪽 공백 제거 

-- replace : 해당 문자를 다른 문자로 바꾸기
select replace('Javaspecialist', 'Java', 'Bigdata') from dual;

-- translate : 해당 문자에 abcdef를 1234로 바꾸기
select translate('javaspecialist', 'abcdef', '1234') from dual;

-- 문제 1. 
select * from employees;

select rpad( substr(first_name, 1, 3),length(first_name), '*' ) as name, 
lpad(salary, 10, '*') as salary 
from employees
where lower(job_id) = 'it_prog';




