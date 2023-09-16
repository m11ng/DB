
create sequence e_enp_id
increment by 1
start with 26
maxvalue 9999999
nocache
nocycle
;

select * from user_sequences;


select rowid, id, name from s_dept;

create index ide_dept on s_dept(name); -- 네임컬럼에다가 index만든거

--create view vw_dept region as
--select d.*, r.naem city


--14 부터 
-- 연봉 상위 6위 ~ 10위를 오름 차순으로 출력하시오
-- 일단 연봉 나열해보자

--select *
--from (select id, name, title, salary from s_emp);

--7-3
select * from s_emp;

select name, title, dept_id
from s_emp
where dept_id = (select dept_id
                 from s_emp
                 where name='김정미');










