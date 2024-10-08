
-- 회원테이블에 성별 컬럼 추가
ALTER TABLE CUSTOMER ADD GENDER VARCHAR(9);	-- 컬럼 추가

-- 성별 컬럼의 크기 변경
ALTER TABLE CUSTOMER MODIFY GENDER VARCHAR(100);

-- 성별 컬럼 자료형과 NOT NULL 변경
ALTER TABLE CUSTOMER MODIFY GENDER INT NOT NULL; -- INT, NOT NULL

-- 성별 컬럼에 설명 추가
ALTER TABLE CUSTOMER MODIFY GENDER INT NOT NULL COMMENT '성별';  -- 설명 달기

-- 컬럼의 이름은 MODIFY로 변경이 안됨..
-- 성별 컬럼의 이름 변경
ALTER TABLE CUSTOMER RENAME COLUMN GENDER TO GEN; -- 이름만 변경할 때 사용

ALTER TABLE CUSTOMER CHANGE COLUMN GEN GENDER VARCHAR(9); -- 이름과 다른 옵션을 한번에 변경할 때 사용


-- 이름, 주소, 성별 컬럼 삭제
ALTER TABLE CUSTOMER DROP COLUMN NAME;
ALTER TABLE CUSTOMER DROP COLUMN ADDRESS;
ALTER TABLE CUSTOMER DROP COLUMN GENDER;

-- Q1. CUSTOMER 테이블 변경
ALTER TABLE CUSTOMER ADD NAME VARCHAR(20) NOT NULL;
ALTER TABLE CUSTOMER ADD ADDRESS VARCHAR(100);
ALTER TABLE CUSTOMER ADD GENDER VARCHAR(9);

-- Q2. ORDERS 테이블 변경 
ALTER TABLE ORDERS RENAME COLUMN SALESMAN_ID TO SALESMAN_NAME; -- 판매자아이디 컬럼의 이름을 변경
ALTER TABLE ORDERS DROP COLUMN ORDER_DATE;

-- Q3. LOCATION 테이블 변경
ALTER TABLE LOCATION MODIFY LOCATION_ID INT COMMENT '위치번호'; -- PK는 테이블의 속성으로 설정되었기 때문에 생략 가능
ALTER TABLE LOCATION MODIFY ADDRESS VARCHAR(255) NOT NULL COMMENT '주소';
ALTER TABLE LOCATION MODIFY POSTAL_CODE VARCHAR(20) COMMENT '우편번호';
ALTER TABLE LOCATION MODIFY CITY VARCHAR(50) COMMENT '도시명';

-- Q4. CURRICULUM 테이블 변경
ALTER TABLE CURRICULUM RENAME COLUMN NO TO CURRICULUM_NO;
ALTER TABLE CURRICULUM CHANGE COLUMN NAME CURRICULUM_NAME VARCHAR(30) NOT NULL COMMENT '과목명';
ALTER TABLE CURRICULUM CHANGE COLUMN POINTS CURRICULUM_POINTS INT NOT NULL COMMENT '학점';
ALTER TABLE CURRICULUM CHANGE COLUMN PROFID CURRICULUM_PROFID INT NOT NULL COMMENT '교수 번호';

-- Q5. EMP 테이블 변경 
ALTER TABLE EMP ADD SALARY INT NOT NULL COMMENT '월급';
ALTER TABLE EMP MODIFY EMP_NO INT COMMENT '직원번호'; -- PK는 테이블의 속성으로 설정되었기 때문에 생략 가능
ALTER TABLE EMP MODIFY DEPT_NO INT COMMENT '부서번호';
ALTER TABLE EMP MODIFY EMP_NAME VARCHAR(10) COMMENT '직원이름';
ALTER TABLE EMP MODIFY HDATE DATE COMMENT '입사일';
