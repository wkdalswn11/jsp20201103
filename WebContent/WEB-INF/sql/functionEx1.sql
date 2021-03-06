SELECT sysdate FROM dual;

SELECT LOWER(ename) AS NAME FROM employee;
SELECT UPPER(ename) AS NAME FROM employee;
SELECT initcap(ename) AS NAME FROM employee;
SELECT initcap('oracle mania') AS NAME FROM dual;

-- page 102~104

SELECT  'Oracle mania',
         UPPER('Oracle mania'),
         LOWER('Oracle mania'),
         initcap('Oracle maina')
FROM dual;

SELECT ename, LOWER(ename), JOB, initcap(JOB)
FROM employee;

--SELECT eno, ename, dno FROM employee
--WHERE ename='scott'; 대소문자 구별을 잘못했음

SELECT eno, ename, dno 
FROM employee
WHERE LOWER(ename)='scott';

SELECT eno,ename,dno
FROM employee
WHERE INITCAP(ename)='Scott';

SELECT * FROM employee WHERE LOWER(ename) LIKE '%a%';

SELECT ename, LENGTH(ename) as length FROM employee;
SELECT ename, LENGTH(ename) length FROM employee;

SELECT LENGTH('웹프로그래밍') length FROM dual;

SELECT ename, LENGTHB(ename) lan FROM employee;
SELECT LENGTHB('웹프로그래밍') FROM dual;

-- page 105

SELECT LENGTH('OracleMania'), LENGTH('오라클매니아')
FROM dual;

SELECT LENGTHB('OracleMania'), LENGTHB('오라클매니아')
FROM dual;

SELECT CONCAT(ename, job) FROM employee;
SELECT ename || job FROM employee;
SELECT ename || ', ' ||  job FROM employee;

SELECT ename, SUBSTR(ename, 1, 2) FROM employee;
SELECT ename, SUBSTR(ename, -2, 2) FROM employee;

-- page 106~107

SELECT 'Oracle', 'mania', CONCAT('Oracle', 'mania') 
FROM dual;

SELECT SUBSTR('Oracle mania', 4, 3),
        SUBSTR('Oracle maina', -4, 3)
FROM dual;

SELECT * FROM employee
WHERE SUBSTR(ename, -1, 1) ='N';

SELECT *
FROM employee
WHERE SUBSTR(hiredate, 1, 2)='87';

SELECT * FROM employee WHERE SUBSTR(TO_CHAR(hiredate, 'YYYY-MM-DD'), 1, 4) = '1987';

SELECT ename, INSTR(ename, 'A') FROM employee;
SELECT  INSTR('Tiger Tea Tire Ton' , 'T', 2, 2) FROM dual;

-- page 109~110

SELECT INSTR('Oracle mania', 'a')
FROM dual;

SELECT INSTR('Oracle mania', 'a',5,2)
FROM dual;

SELECT INSTR('오라클매니아', '라'),
        INSTRB('오라클매니아', '라')
FROM dual;

SELECT *
FROM employee
WHERE INSTR(ename, 'R', 3, 1)=3;

SELECT LPAD(salary, 10, '*')
FROM employee;

SELECT RPAD(salary, 10, '*')
FROM employee;

-- 

SELECT ename, LPAD(ename, 10, '#') FROM employee;

SELECT ename, RPAD(ename, 10, '#') FROM employee;

SELECT TRIM('   ABC   ') FROM dual;
SELECT RTRIM('   ABC   ') FROM dual;
SELECT LTRIM('   ABC   ') FROM dual;

-- page 112~113

SELECT ' Oracle mania ',
        LTRIM('  Oracle mania  '),
        RTRIM('  Oracle mania  ')
FROM dual;

SELECT 'Oracle mania',
        TRIM('O' FROM 'Oracle mania')
FROM dual;

SELECT TRIM('  Oracle mania  ')
FROM dual;
