SELECT sysdate FROM dual;
SELECT sysdate + 1 FROM dual;
SELECT sysdate - 1 FROM dual;

SELECT ename, hiredate, sysdate - hiredate FROM employee;
SELECT ename, hiredate, ROUND(sysdate - hiredate) FROM employee;

SELECT ROUND(sysdate) FROM dual;
SELECT ROUND(sysdate, 'YEAR') FROM dual;
SELECT ROUND(sysdate, 'MONTH') FROM dual;

SELECT TRUNC(sysdate, 'YEAR') FROM dual;
SELECT TRUNC(sysdate, 'MONTH') FROM dual;

SELECT ROUND(MONTHS_BETWEEN(SYSDATE,hiredate)) FROM employee;

SELECT MONTHS_BETWEEN(TO_DATE('2019-10-13', 'yyyy-mm-dd') , SYSDATE) FROM dual;

SELECT ADD_MONTHS(sysdate, 12) FROM dual;
SELECT ADD_MONTHS(sysdate, 6) FROM dual;
SELECT ADD_MONTHS(sysdate, -12) FROM dual;

SELECT NEXT_DAY(sysdate, '토요일') FROM dual;
SELECT NEXT_DAY(sysdate, '금요일') FROM dual;
SELECT NEXT_DAY(sysdate, 6) FROM dual;

SELECT LAST_DAY(SYSDATE) FROM dual;
SELECT LAST_DAY(ADD_MONTHS(SYSDATE, -9)) FROM dual;
--PAGE 117~ 119

SELECT sysdate
FROM dual;

SELECT SYSDATE-1 어제,
        SYSDATE 오늘,
        SYSDATE+1 내일
FROM dual;

SELECT ROUND(SYSDATE - HIREDATE) 근무일수
FROM employee;

--PAGE 120~121

SELECT hiredate,
        TRUNC(HIREDATE,'MONTH')
FROM employee;

SELECT ename, sysdate, hiredate,
        TRUNC(MONTHS_BETWEEN(SYSDATE,HIREDATE))
FROM employee;

--page 120 아래부터  121

SELECT ename, sysdate, hiredate,
        TRUNC(MONTHS_BETWEEN (SYSDATE, HIREDATE))
FROM employee;

SELECT ename, hiredate, 
        ADD_MONTHS(HIREDATE, 6)
FROM employee;

--PAGE 122~123

SELECT SYSDATE,
        NEXT_DAY(SYSDATE, '토요일')
FROM dual;

SELECT ename, hiredate,
        LAST_DAY(HIREDATE)
FROM employee;