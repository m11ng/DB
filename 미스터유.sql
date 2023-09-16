select level *2 -1 from dual 
connect by level <= 5;


select level -10 from dual
connect by level <= 5;

select level *6 from dual 
connect by level <= 11;


select sysdate, level -12 from dual
connect by level <= 11;


--select to_char(sysdate, , level -12 from dual
--connect by level <= 11;

-- 카페에 있는 월별 입사자 수
-- 입사자가 없는 달은 0으로 



