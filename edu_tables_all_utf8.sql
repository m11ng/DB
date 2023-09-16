/*------------------------------------------------------------------------------
-- 개체 이름: student.S_CUSTOMER
-- 만든 날짜: 2017-08-23 오후 10:05:01
-- 마지막으로 수정한 날짜: 2017-08-23 오후 10:06:26
-- 상태: VALID
------------------------------------------------------------------------------*/
DROP TABLE student.S_CUSTOMER CASCADE CONSTRAINTS;

CREATE TABLE student.S_CUSTOMER (
  ID               NUMBER(7)               NOT NULL, 
  NAME             VARCHAR2(50 BYTE)       NOT NULL, 
  PHONE            VARCHAR2(25 BYTE)           NULL, 
  ADDRESS          VARCHAR2(50 BYTE)           NULL, 
  ZIP_CODE         VARCHAR2(10 BYTE)           NULL, 
  CREDIT_RATING    VARCHAR2(9 BYTE)            NULL, 
  SALES_REP_ID     NUMBER(7)                   NULL, 
  REGION_ID        NUMBER(7)                   NULL, 
  COMMENTS         NVARCHAR2(100)         NULL
)
TABLESPACE SYSTEM
PCTFREE    10
PCTUSED    40
INITRANS   1
MAXTRANS   255
STORAGE (
    INITIAL     64K
    NEXT        1M
    MINEXTENTS  1
    MAXEXTENTS  UNLIMITED
    FREELISTS   1
    FREELIST GROUPS 1
)
LOGGING
NOCACHE
MONITORING
NOPARALLEL
;

ALTER TABLE student.S_CUSTOMER ADD
(
    CONSTRAINT PK_S_CUSTOMER
    PRIMARY KEY ( ID )
        USING INDEX
        TABLESPACE SYSTEM 
        PCTFREE 10
        INITRANS 2
        MAXTRANS 255
        STORAGE (
            INITIAL 64K
            NEXT 1M
            MINEXTENTS 1
            MAXEXTENTS UNLIMITED
            FREELISTS 1
            FREELIST GROUPS 1
        )
);


/*------------------------------------------------------------------------------
-- 개체 이름: student.S_EMP
-- 만든 날짜: 2017-08-23 오후 12:22:27
-- 마지막으로 수정한 날짜: 2017-08-23 오후 10:07:05
-- 상태: VALID
------------------------------------------------------------------------------*/
DROP TABLE student.S_EMP CASCADE CONSTRAINTS;

CREATE TABLE student.S_EMP (
  ID               NUMBER(7)             NOT NULL, 
  NAME             VARCHAR2(25 BYTE)     NOT NULL, 
  MAILID           VARCHAR2(8 BYTE)          NULL, 
  START_DATE       DATE                      NULL, 
  MANAGER_ID       NUMBER(7)                 NULL, 
  TITLE            VARCHAR2(25 BYTE)         NULL, 
  DEPT_ID          NUMBER(7)                 NULL, 
  SALARY           NUMBER(11, 2)             NULL, 
  COMMISION_PCT    NUMBER(4, 2)              NULL
)
TABLESPACE SYSTEM
PCTFREE    10
PCTUSED    40
INITRANS   1
MAXTRANS   255
STORAGE (
    INITIAL     64K
    NEXT        1M
    MINEXTENTS  1
    MAXEXTENTS  UNLIMITED
    FREELISTS   1
    FREELIST GROUPS 1
)
LOGGING
NOCACHE
MONITORING
NOPARALLEL
;

ALTER TABLE student.S_EMP ADD
(
    CONSTRAINT PK_S_EMP
    PRIMARY KEY ( ID )
        USING INDEX
        TABLESPACE SYSTEM 
        PCTFREE 10
        INITRANS 2
        MAXTRANS 255
        STORAGE (
            INITIAL 64K
            NEXT 1M
            MINEXTENTS 1
            MAXEXTENTS UNLIMITED
            FREELISTS 1
            FREELIST GROUPS 1
        )
);

GRANT SELECT ON student.S_EMP TO TEST WITH GRANT OPTION;

GRANT INSERT ON student.S_EMP TO TEST WITH GRANT OPTION;



/*------------------------------------------------------------------------------
-- 개체 이름: student.SALGRADE
-- 만든 날짜: 2017-08-23 오후 10:00:38
-- 마지막으로 수정한 날짜: 2017-08-30 오전 11:34:57
-- 상태: VALID
------------------------------------------------------------------------------*/
DROP TABLE student.SALGRADE CASCADE CONSTRAINTS;

CREATE TABLE student.SALGRADE (
  GRADE    CHAR(1 BYTE)          NULL, 
  LOSAL    NUMBER(11, 2)         NULL, 
  HISAL    NUMBER(11, 2)         NULL
)
TABLESPACE SYSTEM
PCTFREE    10
PCTUSED    40
INITRANS   1
MAXTRANS   255
STORAGE (
    INITIAL     64K
    NEXT        1M
    MINEXTENTS  1
    MAXEXTENTS  UNLIMITED
    FREELISTS   1
    FREELIST GROUPS 1
)
LOGGING
NOCACHE
MONITORING
NOPARALLEL
;


/*------------------------------------------------------------------------------
-- 개체 이름: student.S_DEPT
-- 만든 날짜: 2017-08-23 오전 10:36:02
-- 마지막으로 수정한 날짜: 2017-08-23 오후 10:06:40
-- 상태: VALID
------------------------------------------------------------------------------*/
DROP TABLE student.S_DEPT CASCADE CONSTRAINTS;

CREATE TABLE student.S_DEPT (
  ID           NUMBER(7)             NOT NULL, 
  NAME         VARCHAR2(25 BYTE)     NOT NULL, 
  REGION_ID    NUMBER(7)                 NULL
)
TABLESPACE SYSTEM
PCTFREE    10
PCTUSED    40
INITRANS   1
MAXTRANS   255
STORAGE (
    INITIAL     64K
    NEXT        1M
    MINEXTENTS  1
    MAXEXTENTS  UNLIMITED
    FREELISTS   1
    FREELIST GROUPS 1
)
LOGGING
NOCACHE
MONITORING
NOPARALLEL
;

ALTER TABLE student.S_DEPT ADD
(
    CONSTRAINT PK_S_DEPT
    PRIMARY KEY ( ID )
        USING INDEX
        TABLESPACE SYSTEM 
        PCTFREE 10
        INITRANS 2
        MAXTRANS 255
        STORAGE (
            INITIAL 64K
            NEXT 1M
            MINEXTENTS 1
            MAXEXTENTS UNLIMITED
            FREELISTS 1
            FREELIST GROUPS 1
        )
);

/*------------------------------------------------------------------------------
-- 개체 이름: student.S_ITEM
-- 만든 날짜: 2017-08-23 오후 12:14:12
-- 마지막으로 수정한 날짜: 2017-08-23 오후 10:05:44
-- 상태: VALID
------------------------------------------------------------------------------*/
DROP TABLE student.S_ITEM CASCADE CONSTRAINTS;

CREATE TABLE student.S_ITEM (
  ORD_ID          NUMBER(7)         NOT NULL, 
  ITEM_ID         NUMBER(7)         NOT NULL, 
  PRODUCT_ID      NUMBER(7)         NOT NULL, 
  SALES_REP_ID    NUMBER(11, 2)         NULL, 
  PRICE           NUMBER(11, 2)         NULL, 
  QUANTITY        NUMBER(9)             NULL
)
TABLESPACE SYSTEM
PCTFREE    10
PCTUSED    40
INITRANS   1
MAXTRANS   255
STORAGE (
    INITIAL     64K
    NEXT        1M
    MINEXTENTS  1
    MAXEXTENTS  UNLIMITED
    FREELISTS   1
    FREELIST GROUPS 1
)
LOGGING
NOCACHE
MONITORING
NOPARALLEL
;

ALTER TABLE student.S_ITEM ADD
(
    CONSTRAINT PK_S_ITEM
    PRIMARY KEY ( ORD_ID, ITEM_ID )
        USING INDEX
        TABLESPACE SYSTEM 
        PCTFREE 10
        INITRANS 2
        MAXTRANS 255
        STORAGE (
            INITIAL 64K
            NEXT 1M
            MINEXTENTS 1
            MAXEXTENTS UNLIMITED
            FREELISTS 1
            FREELIST GROUPS 1
        )
);

/*------------------------------------------------------------------------------
-- 개체 이름: student.S_ORD
-- 만든 날짜: 2017-08-23 오후 10:02:48
-- 마지막으로 수정한 날짜: 2017-08-23 오후 10:06:05
-- 상태: VALID
------------------------------------------------------------------------------*/
DROP TABLE student.S_ORD CASCADE CONSTRAINTS;

CREATE TABLE student.S_ORD (
  ID              NUMBER(7)            NOT NULL, 
  CUSTOMER_ID     NUMBER(7)            NOT NULL, 
  DATE_ORDERED    DATE                     NULL, 
  SALES_REP_ID    NUMBER(7)                NULL, 
  TOTAL           NUMBER(11, 2)            NULL, 
  PAYMENT_TYPE    VARCHAR2(6 BYTE)         NULL
)
TABLESPACE SYSTEM
PCTFREE    10
PCTUSED    40
INITRANS   1
MAXTRANS   255
STORAGE (
    INITIAL     64K
    NEXT        1M
    MINEXTENTS  1
    MAXEXTENTS  UNLIMITED
    FREELISTS   1
    FREELIST GROUPS 1
)
LOGGING
NOCACHE
MONITORING
NOPARALLEL
;

ALTER TABLE student.S_ORD ADD
(
    CONSTRAINT PK_S_ORD
    PRIMARY KEY ( ID )
        USING INDEX
        TABLESPACE SYSTEM 
        PCTFREE 10
        INITRANS 2
        MAXTRANS 255
        STORAGE (
            INITIAL 64K
            NEXT 1M
            MINEXTENTS 1
            MAXEXTENTS UNLIMITED
            FREELISTS 1
            FREELIST GROUPS 1
        )
);

/*------------------------------------------------------------------------------
-- 개체 이름: student.S_PRODUCT
-- 만든 날짜: 2017-08-23 오후 9:59:21
-- 마지막으로 수정한 날짜: 2017-08-23 오후 10:07:20
-- 상태: VALID
------------------------------------------------------------------------------*/
DROP TABLE student.S_PRODUCT CASCADE CONSTRAINTS;

CREATE TABLE student.S_PRODUCT (
  ID            NUMBER(7)              NOT NULL, 
  NAME          VARCHAR2(50 BYTE)      NOT NULL, 
  SHORT_DESC    VARCHAR2(255 BYTE)         NULL
)
TABLESPACE SYSTEM
PCTFREE    10
PCTUSED    40
INITRANS   1
MAXTRANS   255
STORAGE (
    INITIAL     64K
    NEXT        1M
    MINEXTENTS  1
    MAXEXTENTS  UNLIMITED
    FREELISTS   1
    FREELIST GROUPS 1
)
LOGGING
NOCACHE
MONITORING
NOPARALLEL
;

ALTER TABLE student.S_PRODUCT ADD
(
    CONSTRAINT PK_S_PRODUCT
    PRIMARY KEY ( ID )
        USING INDEX
        TABLESPACE SYSTEM 
        PCTFREE 10
        INITRANS 2
        MAXTRANS 255
        STORAGE (
            INITIAL 64K
            NEXT 1M
            MINEXTENTS 1
            MAXEXTENTS UNLIMITED
            FREELISTS 1
            FREELIST GROUPS 1
        )
);

/*------------------------------------------------------------------------------
-- 개체 이름: student.S_REGION
-- 만든 날짜: 2017-08-23 오전 10:37:32
-- 마지막으로 수정한 날짜: 2017-08-23 오후 10:07:32
-- 상태: VALID
------------------------------------------------------------------------------*/
DROP TABLE student.S_REGION CASCADE CONSTRAINTS;

CREATE TABLE student.S_REGION (
  ID      NUMBER(7)             NOT NULL, 
  NAME    VARCHAR2(50 BYTE)         NULL
)
TABLESPACE SYSTEM
PCTFREE    10
PCTUSED    40
INITRANS   1
MAXTRANS   255
STORAGE (
    INITIAL     64K
    NEXT        1M
    MINEXTENTS  1
    MAXEXTENTS  UNLIMITED
    FREELISTS   1
    FREELIST GROUPS 1
)
LOGGING
NOCACHE
MONITORING
NOPARALLEL
;

ALTER TABLE student.S_REGION ADD
(
    CONSTRAINT PK_S_REGION
    PRIMARY KEY ( ID )
        USING INDEX
        TABLESPACE SYSTEM 
        PCTFREE 10
        INITRANS 2
        MAXTRANS 255
        STORAGE (
            INITIAL 64K
            NEXT 1M
            MINEXTENTS 1
            MAXEXTENTS UNLIMITED
            FREELISTS 1
            FREELIST GROUPS 1
        )
);

INSERT INTO student.S_REGION
  (ID, NAME)
VALUES
  (1, '서울특별시');

INSERT INTO student.S_REGION
  (ID, NAME)
VALUES
  (2, '경기도');

INSERT INTO student.S_REGION
  (ID, NAME)
VALUES
  (3, '충청/강원');

INSERT INTO student.S_REGION
  (ID, NAME)
VALUES
  (4, '전라/제주');

INSERT INTO student.S_REGION
  (ID, NAME)
VALUES
  (5, '부산/경상');


INSERT INTO student.S_DEPT
  (ID, NAME, REGION_ID)
VALUES
  (101, '총무부', 1);

INSERT INTO student.S_DEPT
  (ID, NAME, REGION_ID)
VALUES
  (102, '영업부', 1);

INSERT INTO student.S_DEPT
  (ID, NAME, REGION_ID)
VALUES
  (103, '영업부', 2);

INSERT INTO student.S_DEPT
  (ID, NAME, REGION_ID)
VALUES
  (104, '영업부', 3);

INSERT INTO student.S_DEPT
  (ID, NAME, REGION_ID)
VALUES
  (105, '영업부', 4);

INSERT INTO student.S_DEPT
  (ID, NAME, REGION_ID)
VALUES
  (106, '영업부', 5);

INSERT INTO student.S_DEPT
  (ID, NAME, REGION_ID)
VALUES
  (110, '기획부', 1);

INSERT INTO student.S_DEPT
  (ID, NAME, REGION_ID)
VALUES
  (111, '기획부', 2);

INSERT INTO student.S_DEPT
  (ID, NAME, REGION_ID)
VALUES
  (112, '기획부', 3);

INSERT INTO student.S_DEPT
  (ID, NAME, REGION_ID)
VALUES
  (113, '기획부', 4);

INSERT INTO student.S_DEPT
  (ID, NAME, REGION_ID)
VALUES
  (118, '인사부', 1);

INSERT INTO student.SALGRADE
  (GRADE, LOSAL, HISAL)
VALUES
  ('A', 4000, 5999);

INSERT INTO student.SALGRADE
  (GRADE, LOSAL, HISAL)
VALUES
  ('B', 3000, 3999);

INSERT INTO student.SALGRADE
  (GRADE, LOSAL, HISAL)
VALUES
  ('C', 2000, 2999);

INSERT INTO student.SALGRADE
  (GRADE, LOSAL, HISAL)
VALUES
  ('D', 1000, 1999);

INSERT INTO student.SALGRADE
  (GRADE, LOSAL, HISAL)
VALUES
  ('E', 500, 999);

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (1, '전용호', '010-1234-1234', '서울', '', '', 11, 1, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (2, '정진영', '010-1212-4321', '경기도', '', '', 12, 2, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (3, '엄준식', '010-999-9999', '충청/강원', '', '', 13, 3, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (4, '서용만', '010-111-1111', '전라/제주', '', '', 14, 4, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (5, '정주영', '010-4321-4321', '전라/제주', '', '', 14, 4, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (6, '장창식', '010-1234-1212', '부산/경상', '', '', 15, 5, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (7, '최계윤', '010-4444-1111', '부산/경상', '', '', 15, 6, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (8, '고정환', '010-2222-1111', '서울', '', '', 0, 1, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (9, '정태웅', '010-3535-1515', '서울', '', '', 11, 1, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (10, '장혁', '010-1414-5151', '서울', '', '', 11, 1, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (11, '노호현', '010-3333-4444', '서울', '', '', 11, 1, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (12, '신경화', '010-2222-1111', '경기도', '', '', 12, 2, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (13, '한신동', '010-6666-9999', '부산/경상', '', '', 15, 5, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (14, '강원석', '010-7777-7777', '부산/경상', '', '', 15, 5, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (15, '김영철', '010-8787-4545', '부산/경상', '', '', 15, 5, '');

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (1, '박구곤', 'kugon', to_date('2015-03-03 00:00:00','YYYY-MM-DD HH24:MI:SS'), 0, '사장', 118, 5000, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (2, '손명성', 'myoungs', to_date('2015-03-08 00:00:00','YYYY-MM-DD HH24:MI:SS'), 1, '기획부장', 110, 3000, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (3, '이은선', 'eunsun', to_date('2016-06-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 1, '영업부장', 102, 3500, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (4, '서의홍', 'euihong', to_date('2015-04-07 00:00:00','YYYY-MM-DD HH24:MI:SS'), 1, '총무부장', 101, 3000, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (5, '김심선', 'simsun', to_date('2015-03-04 00:00:00','YYYY-MM-DD HH24:MI:SS'), 1, '인사부장', 118, 3200, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (6, '전지영', 'jiyoung', to_date('2016-01-18 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '과장', 110, 2400, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (7, '김정미', 'jungmi', to_date('2015-05-14 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '과장', 111, 2400, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (8, '신기웅', 'kiwoong', to_date('2015-04-07 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '과장', 112, 2100, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (9, '이상헌', 'sanghun', to_date('2016-06-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '과장', 113, 2300, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (10, '최순철', 'soonchul', to_date('2016-02-27 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '과장', 113, 2300, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (11, '최정선', 'jungsun', to_date('2016-06-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 1, '영업대표이사', 102, 2450, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (12, '안은경', 'eunkyung', to_date('2016-06-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 1, '영업대표이사', 103, 0, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (13, '김석우', 'sukwoo', to_date('2016-02-18 00:00:00','YYYY-MM-DD HH24:MI:SS'), 1, '영업대표이사', 104, 2650, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (14, '박성규', 'sungkyu', to_date('2016-06-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 1, '영업대표이사', 105, 0, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (15, '신종필', 'jongpil', to_date('2016-10-09 00:00:00','YYYY-MM-DD HH24:MI:SS'), 1, '영업대표이사', 106, 0, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (16, '이기철', 'kichul', to_date('2016-06-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '사원', 110, 0, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (17, '구원상', 'gsmith', to_date('2016-06-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '사원', 110, 940, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (18, '서정주', 'jungju', to_date('2016-02-09 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '사원', 111, 1200, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (19, '안창환', 'chwan', to_date('2016-06-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '사원', 111, 795, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (20, '윤정숙', 'jungsuk', to_date('2016-06-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '사원', 112, 750, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (21, '장현철', 'hyunchul', to_date('2016-06-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '사원', 112, 850, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (22, '장혜숙', 'hyesook', to_date('2016-06-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '사원', 113, 800, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (23, '강연범', 'kangbum', to_date('2016-06-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 15, '사원', 106, 795, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (24, '오은경', 'eunk', to_date('2016-03-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '사원', 113, 860, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (25, '이용호', 'yongho', to_date('2016-05-09 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '사원', 113, 1100, 0);

	
