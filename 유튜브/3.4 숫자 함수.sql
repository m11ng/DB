-- round 반올림
-- trunc 소수점 버림
-- ceil 올림
-- floor 내림
select round(3.4), trunc(3,4), ceil(3.4), floor(3.4) from dual; -- 3 3 4 3 
select round(3.6), trunc(3,6), ceil(3.6), floor(3.6) from dual; -- 4 3 4 3

select round(-3.4), trunc(-3,4), ceil(-3.4), floor(-3.4) from dual; -- -3 -3 -3 -4
select round(-3.6), trunc(-3,6), ceil(-3.6), floor(-3.6) from dual; -- -4 -3 -3 -4

select round(45.923,2), round(45.923, 0), round(45.923, -1) from dual; -- 45.92, 46, 50
select trunc(45.923,2), trunc(45.923), trunc(45.923, -1) from dual; -- 45.92, 45, 40