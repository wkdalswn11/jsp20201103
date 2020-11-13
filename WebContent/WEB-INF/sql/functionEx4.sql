SELECT TO_CHAR(sysdate) FROM dual;
SELECT TO_CHAR(sysdate, 'YYYY') FROM dual;
SELECT TO_CHAR(sysdate, 'YY') FROM dual;
SELECT TO_CHAR(sysdate, 'MM') FROM dual;
SELECT TO_CHAR(sysdate, 'DD') FROM dual;
SELECT TO_CHAR(sysdate, 'MON') FROM dual;
SELECT TO_CHAR(sysdate, 'YYYY-MM-DD') FROM dual;

SELECT TO_CHAR(sysdate, 'HH') FROM dual;
SELECT TO_CHAR(sysdate, 'HH24') FROM dual;
SELECT TO_CHAR(sysdate, 'MI') FROM dual;
SELECT TO_CHAR(sysdate, 'SS') FROM dual;
SELECT TO_CHAR(sysdate, 'HH:MI:SS') FROM dual;

SELECT TO_CHAR(sysdate, 'YYYY-MM-DD HH:MI:SS') FROM dual;

--number to char
SELECT TO_CHAR(56789) FROM dual;
SELECT TO_CHAR(123456789, '999,999,999') FROM dual;
SELECT TO_CHAR(23456789, '000,000,000') FROM dual;
SELECT TO_CHAR(9956789, 'L999,999,999') FROM dual;
SELECT TO_CHAR(9956789, 'L999,999,999.999') FROM dual;

-- char to date
SELECT TO_DATE('2020-11-13', 'YYYY-MM-DD') FROM dual;
SELECT TO_DATE('20201113', 'YYYYMMDD') FROM dual;
SELECT
TO_CHAR(
TO_DATE('2020-11-13 01:30:20', 'YYYY-MM-DD HH:MI:SS'),
'YYYY-MM-DD HH:MI:SS')
FROM dual;

--char to number
SELECT TO_NUMBER('200000') FROM dual;
SELECT TO_NUMBER('200,000', '999,999') FROM dual;

-- page 125~126

SELECT ename, hiredate,
        TO_CHAR(HIREDATE, 'YY-MM'),
        TO_CHAR(HIREDATE, 'YYYY/MM/DD DAY')
FROM employee;

SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD, HH24:MI:SS')
FROM dual;

-- page 127

SELECT ename, TO_CHAR(salary, 'L999,999')
FROM employee;

--page 128~129

--SELECT ename, hiredate
--FROM employee
--WHERE hiredate=19810220; 일관성없는 데이터 유형 date가 필요하지면 number 타입임

SELECT ename, hiredate
FROM employee
WHERE hiredate= TO_DATE(19810220, 'YYYYMMDD');

--SELECT '100.000' - '50,000' -- 100,000과 50,000 은 문자형이기때문에 산술 연산이 불가
--FROM dual;

SELECT TO_NUMBER('100,000' , '999,999')
       - TO_NUMBER('50,000', '999,999') 
FROM dual;

--  혼자해보기 p01 ~ 05

-- p01
-- 직원들의 입사년도와 달을 출력하기
SELECT SUBSTR(HIREDATE, 1, 2) 년도,
        SUBSTR(HIREDATE, 4, 2) 달
FROM employee;

-- p02
--4월에 입사한 사원 출력하기
SELECT * FROM employee 
WHERE SUBSTR(HIREDATE, 4, 2) ='04';

-- P03
-- 사번이 짝수인 사원 출력하기
SELECT * FROM employee
WHERE MOD(eno, 2) = 0;

-- p04
-- 입사일 출력하기
SELECT  hiredate,
        TO_CHAR(HIREDATE, 'YY/MON/DY')
FROM employee;

-- p05
-- 올해 며칠이 지났는지 계산하기
SELECT TRUNC(SYSDATE - TO_DATE('2020/01/01', 'YYYY/MM/DD'))
FROM dual;



