/*------------------------------------------------------------------------------
-- ��ü �̸�: student.S_CUSTOMER
-- ���� ��¥: 2017-08-23 ���� 10:05:01
-- ���������� ������ ��¥: 2017-08-23 ���� 10:06:26
-- ����: VALID
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
  COMMENTS         VARCHAR2(100 CHAR)         NULL
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
-- ��ü �̸�: student.S_EMP
-- ���� ��¥: 2017-08-23 ���� 12:22:27
-- ���������� ������ ��¥: 2017-08-23 ���� 10:07:05
-- ����: VALID
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


/*------------------------------------------------------------------------------
-- ��ü �̸�: student.SALGRADE
-- ���� ��¥: 2017-08-23 ���� 10:00:38
-- ���������� ������ ��¥: 2017-08-30 ���� 11:34:57
-- ����: VALID
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
-- ��ü �̸�: student.S_DEPT
-- ���� ��¥: 2017-08-23 ���� 10:36:02
-- ���������� ������ ��¥: 2017-08-23 ���� 10:06:40
-- ����: VALID
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
-- ��ü �̸�: student.S_ITEM
-- ���� ��¥: 2017-08-23 ���� 12:14:12
-- ���������� ������ ��¥: 2017-08-23 ���� 10:05:44
-- ����: VALID
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
-- ��ü �̸�: student.S_ORD
-- ���� ��¥: 2017-08-23 ���� 10:02:48
-- ���������� ������ ��¥: 2017-08-23 ���� 10:06:05
-- ����: VALID
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
-- ��ü �̸�: student.S_PRODUCT
-- ���� ��¥: 2017-08-23 ���� 9:59:21
-- ���������� ������ ��¥: 2017-08-23 ���� 10:07:20
-- ����: VALID
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
-- ��ü �̸�: student.S_REGION
-- ���� ��¥: 2017-08-23 ���� 10:37:32
-- ���������� ������ ��¥: 2017-08-23 ���� 10:07:32
-- ����: VALID
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
  (1, '����Ư����');

INSERT INTO student.S_REGION
  (ID, NAME)
VALUES
  (2, '��⵵');

INSERT INTO student.S_REGION
  (ID, NAME)
VALUES
  (3, '��û/����');

INSERT INTO student.S_REGION
  (ID, NAME)
VALUES
  (4, '����/����');

INSERT INTO student.S_REGION
  (ID, NAME)
VALUES
  (5, '�λ�/���');


INSERT INTO student.S_DEPT
  (ID, NAME, REGION_ID)
VALUES
  (101, '�ѹ���', 1);

INSERT INTO student.S_DEPT
  (ID, NAME, REGION_ID)
VALUES
  (102, '������', 1);

INSERT INTO student.S_DEPT
  (ID, NAME, REGION_ID)
VALUES
  (103, '������', 2);

INSERT INTO student.S_DEPT
  (ID, NAME, REGION_ID)
VALUES
  (104, '������', 3);

INSERT INTO student.S_DEPT
  (ID, NAME, REGION_ID)
VALUES
  (105, '������', 4);

INSERT INTO student.S_DEPT
  (ID, NAME, REGION_ID)
VALUES
  (106, '������', 5);

INSERT INTO student.S_DEPT
  (ID, NAME, REGION_ID)
VALUES
  (110, '��ȹ��', 1);

INSERT INTO student.S_DEPT
  (ID, NAME, REGION_ID)
VALUES
  (111, '��ȹ��', 2);

INSERT INTO student.S_DEPT
  (ID, NAME, REGION_ID)
VALUES
  (112, '��ȹ��', 3);

INSERT INTO student.S_DEPT
  (ID, NAME, REGION_ID)
VALUES
  (113, '��ȹ��', 4);

INSERT INTO student.S_DEPT
  (ID, NAME, REGION_ID)
VALUES
  (118, '�λ��', 1);

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
  (1, '����ȣ', '010-1234-1234', '����', '', '', 11, 1, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (2, '������', '010-1212-4321', '��⵵', '', '', 12, 2, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (3, '���ؽ�', '010-999-9999', '��û/����', '', '', 13, 3, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (4, '���븸', '010-111-1111', '����/����', '', '', 14, 4, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (5, '���ֿ�', '010-4321-4321', '����/����', '', '', 14, 4, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (6, '��â��', '010-1234-1212', '�λ�/���', '', '', 15, 5, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (7, '�ְ���', '010-4444-1111', '�λ�/���', '', '', 15, 6, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (8, '����ȯ', '010-2222-1111', '����', '', '', 0, 1, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (9, '���¿�', '010-3535-1515', '����', '', '', 11, 1, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (10, '����', '010-1414-5151', '����', '', '', 11, 1, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (11, '��ȣ��', '010-3333-4444', '����', '', '', 11, 1, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (12, '�Ű�ȭ', '010-2222-1111', '��⵵', '', '', 12, 2, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (13, '�ѽŵ�', '010-6666-9999', '�λ�/���', '', '', 15, 5, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (14, '������', '010-7777-7777', '�λ�/���', '', '', 15, 5, '');

INSERT INTO student.S_CUSTOMER
  (ID, NAME, PHONE, ADDRESS, ZIP_CODE, CREDIT_RATING, SALES_REP_ID, REGION_ID, COMMENTS)
VALUES
  (15, '�迵ö', '010-8787-4545', '�λ�/���', '', '', 15, 5, '');

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (1, '�ڱ���', 'kugon', to_date('2015-03-03 00:00:00','YYYY-MM-DD HH24:MI:SS'), 0, '����', 118, 5000, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (2, '�ո�', 'myoungs', to_date('2015-03-08 00:00:00','YYYY-MM-DD HH24:MI:SS'), 1, '��ȹ����', 110, 3000, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (3, '������', 'eunsun', to_date('2016-06-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 1, '��������', 102, 3500, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (4, '����ȫ', 'euihong', to_date('2015-04-07 00:00:00','YYYY-MM-DD HH24:MI:SS'), 1, '�ѹ�����', 101, 3000, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (5, '��ɼ�', 'simsun', to_date('2015-03-04 00:00:00','YYYY-MM-DD HH24:MI:SS'), 1, '�λ����', 118, 3200, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (6, '������', 'jiyoung', to_date('2016-01-18 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '����', 110, 2400, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (7, '������', 'jungmi', to_date('2015-05-14 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '����', 111, 2400, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (8, '�ű��', 'kiwoong', to_date('2015-04-07 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '����', 112, 2100, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (9, '�̻���', 'sanghun', to_date('2016-06-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '����', 113, 2300, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (10, '�ּ�ö', 'soonchul', to_date('2016-02-27 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '����', 113, 2300, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (11, '������', 'jungsun', to_date('2016-06-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 1, '������ǥ�̻�', 102, 2450, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (12, '������', 'eunkyung', to_date('2016-06-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 1, '������ǥ�̻�', 103, 0, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (13, '�輮��', 'sukwoo', to_date('2016-02-18 00:00:00','YYYY-MM-DD HH24:MI:SS'), 1, '������ǥ�̻�', 104, 2650, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (14, '�ڼ���', 'sungkyu', to_date('2016-06-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 1, '������ǥ�̻�', 105, 0, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (15, '������', 'jongpil', to_date('2016-10-09 00:00:00','YYYY-MM-DD HH24:MI:SS'), 1, '������ǥ�̻�', 106, 0, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (16, '�̱�ö', 'kichul', to_date('2016-06-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '���', 110, 0, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (17, '������', 'gsmith', to_date('2016-06-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '���', 110, 940, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (18, '������', 'jungju', to_date('2016-02-09 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '���', 111, 1200, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (19, '��âȯ', 'chwan', to_date('2016-06-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '���', 111, 795, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (20, '������', 'jungsuk', to_date('2016-06-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '���', 112, 750, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (21, '����ö', 'hyunchul', to_date('2016-06-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '���', 112, 850, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (22, '������', 'hyesook', to_date('2016-06-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '���', 113, 800, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (23, '������', 'kangbum', to_date('2016-06-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 15, '���', 106, 795, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (24, '������', 'eunk', to_date('2016-03-17 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '���', 113, 860, 0);

INSERT INTO S_EMP
  (ID, NAME, MAILID, START_DATE, MANAGER_ID, TITLE, DEPT_ID, SALARY, COMMISION_PCT)
VALUES
  (25, '�̿�ȣ', 'yongho', to_date('2016-05-09 00:00:00','YYYY-MM-DD HH24:MI:SS'), 2, '���', 113, 1100, 0);

