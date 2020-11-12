SELECT * FROM employee WHERE ename = 'SMITH';
SELECT * FROM employee WHERE salary > 1000;
SELECT * FROM employee WHERE commission < 500;
SELECT * FROM employee WHERE salary >= 3000;
SELECT * FROM employee WHERE salary <= 2000;
SELECT * FROM employee WHERE ename <= 'G';
SELECT * FROM employee WHERE ename != 'SMITH';
SELECT * FROM employee WHERE ename <> 'SMITH';
SELECT * FROM employee WHERE ename != 'SMITH';
SELECT * FROM employee WHERE ename ^= 'SMITH';
SELECT * FROM employee WHERE hiredate = '1981/02/20';
--SELECT * FROM employee WHERE hiredate = '81/02/20'; 

--page 44 ~ 47
SELECT * FROM employee WHERE salary >= 1500;
SELECT * FROM employee WHERE dno = 10;
--SELECT * FROM employee WHERE ename=SCOTT;
SELECT * FROM employee WHERE ename='SCOTT';
SELECT * FROM employee WHERE hiredate <= '1981/01/01';

SELECT * FROM employee WHERE hiredate >= '1981/01/01' AND salary > 3000;

SELECT * FROM  employee WHERE hiredate >= '1981/01/01' OR salary > 3000;

SELECT * FROM employee WHERE NOT salary > 3000;

SELECT * FROM employee WHERE ename > 'C' AND salary > 2000 AND dno <> 30;


-- page 48~51
SELECT * FROM employee WHERE dno = 10 AND JOB='MANAGER';
SELECT * FROM employee WHERE dno = 10 OR JOB='MANAGER';
SELECT * FROM employee WHERE NOT dno = 10;
SELECT * FROM employee WHERE dno <> 10 ;
SELECT * FROM employee WHERE  salary >= 1000 AND salary <= 1500;
SELECT * FROM employee WHERE salary < 1000 OR salary > 1500;
SELECT * FROM employee WHERE commission = 300 OR commission = 500 OR commission = 1400;


SELECT * FROM employee WHERE salary >= 3000 AND salary <= 5000;

SELECT * FROM employee WHERE salary BETWEEN 3000 AND 5000;

SELECT * FROM employee WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';

SELECT * FROM employee
WHERE salary < 3000 OR salary > 5000;

SELECT * FROM employee 
WHERE salary NOT BETWEEN 3000 AND 5000;

SELECT * FROM employee
WHERE dno = 10 OR dno = 20;

SELECT * FROM employee
WHERE dno IN (10, 20);

SELECT 
    *
FROM employee
WHERE dno NOT IN (20);

-- page 51~54

SELECT * FROM employee
WHERE salary BETWEEN 1000 AND 1500;

SELECT * FROM employee
WHERE salary >= 1000 AND salary <=1500;

SELECT * FROM employee
WHERE salary NOT BETWEEN 1000 AND 1500;

SELECT * FROM employee
WHERE salary < 1000 OR salary > 1500;

SELECT * FROM employee
WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';

SELECT * FROM employee
WHERE commission IN(300, 500, 1400);

SELECT * FROM employee
WHERE commission = 300 OR commission = 500 OR commission = 1400;

SELECT * FROM employee
WHERE commission <>300 AND commission<>500 AND commission<>1400;

SELECT * FROM employee
WHERE commission NOT IN(300,500,1400);

-- page 65 È¥ÀÚ ÇØº¸±â

-- p01

SELECT ename, salary , salary + 300 FROM employee;

-- p02
SELECT ename, salary, salary * 12 + 100 FROM employee 
ORDER BY salary*12+100 DESC;

-- p03

SELECT ename, salary FROM employee 
WHERE salary > 2000
ORDER BY salary DESC;

-- p04

SELECT ename, dno FROM employee
WHERE eno = 7788;

-- p05

SELECT ename, salary FROM employee
WHERE salary NOT BETWEEN 2000 AND 3000;

-- p06

SELECT ename, job, hiredate FROM employee
WHERE hiredate BETWEEN '1981/02/20' AND '1981/05/01';

--07
select ename, dno from employee where dno in(20, 30);


-- p14

SELECT  ename, JOB, salary FROM employee
WHERE JOB IN('CLERK','SALESMAN') AND  salary NOT IN(1600, 950, 1300);

-- p15

SELECT ename, salary, commission FROM employee
WHERE commission >= 500;

SELECT ename, salary FROM employee WHERE eno = 7499;