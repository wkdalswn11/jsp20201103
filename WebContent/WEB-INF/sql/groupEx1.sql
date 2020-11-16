SELECT commission, nvl(commission, 0) FROM employee;

SELECT SUM(salary) FROM employee;
SELECT AVG(salary) FROM employee;
SELECT MIN(salary) FROM employee;
SELECT MAX(salary) FROM employee;

SELECT COUNT(salary) FROM employee;

SELECT * FROM employee;
SELECT COUNT(*) FROM employee;

SELECT COUNT(commission) FROM employee;
SELECT SUM(commission) FROM employee;
SELECT MAX(commission) FROM employee;
SELECT MIN(commission) FROM employee;
SELECT AVG(commission) FROM employee;

SELECT COUNT(JOB) FROM employee;
SELECT DISTINCT JOB FROM employee;
SELECT COUNT(DISTINCT JOB) FROM employee;

--SELECT ename, SUM(salary) FROM employee;
--SELECT ename, MAX(salary) FROM employee;

SELECT ename FROM employee WHERE salary = (SELECT MAX(salary) FROM employee);



--page 144~145

SELECT SUM(salary) AS "급여총액",
        AVG(salary) AS "급여평균",
        MIN(salary) AS "최대급여",
        MAX(salary) AS "최소급여"
FROM employee;

SELECT MAX(hiredate),
        MIN(hiredate)
FROM employee;

SELECT SUM(commission) AS "커미션 총액"
FROM employee;

--page 146 ~ 147

SELECT COUNT(*) AS "사원의 수"
FROM employee;

SELECT COUNT(commission) AS "커미션 받는 사원 수"
FROM employee;

--SELECT COUNT(*) AS "커미션 받는 사원수"
--FROM employee
--WHERE commission IS NOT NULL; COUNT 함수는 null값을 세지않기때문에 위와 같은뜻

SELECT COUNT(DISTINCT JOB) AS "직업 종류의 개수"
FROM employee;