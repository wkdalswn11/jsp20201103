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
--WHERE ename='scott'; ��ҹ��� ������ �߸�����

SELECT eno, ename, dno 
FROM employee
WHERE LOWER(ename)='scott';

SELECT eno,ename,dno
FROM employee
WHERE INITCAP(ename)='Scott';

SELECT * FROM employee WHERE LOWER(ename) LIKE '%a%';

SELECT ename, LENGTH(ename) as length FROM employee;
SELECT ename, LENGTH(ename) length FROM employee;

SELECT LENGTH('�����α׷���') length FROM dual;

SELECT ename, LENGTHB(ename) lan FROM employee;
SELECT LENGTHB('�����α׷���') FROM dual;

-- page 105

SELECT LENGTH('OracleMania'), LENGTH('����Ŭ�ŴϾ�')
FROM dual;

SELECT LENGTHB('OracleMania'), LENGTHB('����Ŭ�ŴϾ�')
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

SELECT INSTR('����Ŭ�ŴϾ�', '��'),
        INSTRB('����Ŭ�ŴϾ�', '��')
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
