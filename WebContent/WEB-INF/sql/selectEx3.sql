SELECT * FROM employee;
SELECT * FROM employee WHERE ename='WARD';
SELECT * FROM employee WHERE ename LIKE 'W%';
SELECT * FROM employee WHERE ename LIKE '%D';
SELECT * FROM employee WHERE ename LIKE '%D%';   
SELECT * FROM employee WHERE ename LIKE '_A__';
SELECT * FROM employee WHERE ename LIKE '_A%_';

--  p55~57

SELECT * FROM employee WHERE ename LIKE 'F%';

--select * from employee where ename = 'F'; 와일드카드를 잘못사용한 예

SELECT * FROM employee WHERE ename LIKE '%M%';

SELECT * FROM employee WHERE ename LIKE '%N';

SELECT * FROM employee WHERE ename LIKE '_A%';

SELECT * FROM employee WHERE ename LIKE '__A%';

SELECT * FROM employee WHERE ename LIKE '%A%';

SELECT ename FROM employee WHERE ename LIKE '%%';

SELECT * FROM employee;
--SELECT * FROM employee WHERE commission = NULL; 잘못된 표현
SELECT * FROM employee WHERE commission IS NULL;
SELECT * FROM employee WHERE commission IS NOT NULL;

-- p58~60

SELECT ename, dno, commission FROM employee;

--SELECT * FROM employee WHERE commission= NULL; 잘못된 예

SELECT * FROM employee WHERE commission IS NULL;

SELECT * FROM employee WHERE commission IS NOT NULL;

SELECT * FROM employee
ORDER BY ename;
SELECT * FROM employee 
ORDER BY eno;
SELECT * FROM employee 
WHERE salary > 2000 
ORDER BY eno;
SELECT * FROM employee 
ORDER BY eno ASC;
SELECT * FROM employee 
ORDER BY eno DESC;
SELECT dno, ename FROM 
employee ORDER BY dno, ename;
SELECT dno, ename FROM 
employee ORDER BY dno DESC, ename ASC;

--page61~ 혼자해보기 나머지

SELECT * FROM employee ORDER BY salary ASC;
SELECT * FROM employee ORDER BY salary;
SELECT * FROM employee ORDER BY salary DESC;
SELECT * FROM employee ORDER BY ename;
SELECT * FROM employee ORDER BY hiredate DESC;
SELECT * FROM employee ORDER BY salary DESC, ename ASC;

-- p07
SELECT ename, dno FROM employee WHERE dno IN(20,30) ORDER BY ename ASC;

-- p08
SELECT ename, salary, dno FROM employee WHERE  salary BETWEEN 2000 AND 3000 AND dno IN(20,30) ORDER BY ename ASC;

-- p09
SELECT ename, hiredate FROM employee WHERE hiredate LIKE '81%';

-- p10
SELECT ename, JOB FROM employee WHERE MANAGER IS NULL;

-- p11
SELECT ename, salary, commission FROM employee WHERE commission IS NOT NULL ORDER BY salary, commission;

-- p12
SELECT ename FROM employee WHERE ename LIKE '__R%';

-- p13

SELECT ename FROM employee WHERE ename LIKE '%A%' AND ename LIKE '%E%';
