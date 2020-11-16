SELECT * FROM employee;
SELECT MAX(salary) FROM employee;
SELECT JOB, MAX(salary) FROM employee
GROUP BY JOB;

-- page 149~151

SELECT dno AS "부서 번호", TRUNC(AVG(salary)) AS "급여평균"
FROM employee
GROUP BY dno;

SELECT TRUNC(AVG(salary)) AS "급여 평균"
FROM employee
GROUP BY dno;

--SELECT dno,ename, AVG(salary)
--FROM employee
--GROUP BY dno;  ename 을 group by 에 명시하지않아서 오류가뜸

SELECT dno,ename, AVG(salary)
FROM employee
GROUP BY dno, ename;  

SELECT dno, JOB, COUNT(*), SUM(salary)
FROM employee
GROUP BY dno,JOB
ORDER BY dno,JOB;


SELECT JOB, AVG(salary) FROM employee
GROUP BY JOB;

SELECT JOB, AVG(salary) FROM employee
WHERE JOB = 'CLERK'
GROUP BY JOB;

-- 그룹함수는 where 에서  불가
--SELECT job, AVG(salary) FROM employee
--WHERE AVG(salary) >= 3000
--GROUP BY job;

SELECT JOB, AVG(salary) FROM employee
GROUP BY JOB
HAVING AVG(salary) >= 3000;

--page 152 ~ 153

SELECT dno, MAX(salary)
FROM employee
GROUP BY dno
HAVING MAX(salary) >= 3000;

SELECT JOB, COUNT(*), SUM(salary)
FROM employee
WHERE JOB NOT LIKE '%MANAGER%'
GROUP BY JOB
HAVING SUM(salary) >= 5000
ORDER BY SUM(salary);

SELECT TRUNC(MAX(AVG(salary)))
FROM employee
GROUP BY dno;

-- 혼자 해보기

-- p01 급여 최고액, 최저액, 총액 및 평균 급여 출력하기

SELECT MAX(salary) AS "최고액" , 
MIN(salary) AS  "최저액", 
SUM(salary) AS "총액", 
TRUNC(AVG(salary)) AS "평균급여"
FROM employee;

--p02 담당 업무 유형별로 급여 최고액, 최저액 , 총액 및 평균급여 출력하기

SELECT JOB AS "담당 업무",
MAX(salary) AS "최고액" , 
MIN(salary) AS  "최저액", 
SUM(salary) AS "총액", 
TRUNC(AVG(salary)) AS "평균급여"
FROM employee
GROUP BY JOB;

--p03 담당 업무가 동일한 사원수 출력하기

SELECT JOB, COUNT(*)
FROM employee
GROUP BY JOB;

--p04 관리자 수 출력하기

SELECT COUNT(MANAGER)
FROM employee;

--p05 급여 최고액, 급여 최저액의 차액 출력하기

SELECT MAX(salary) - MIN(salary) AS "차액"
FROM employee;

--p06 직급별 사원의 최저 급여 출력하기 조건(급여가 2000 미만인그룹 제외, 내림차순정렬)

SELECT JOB, MIN(salary)
FROM employee
GROUP BY JOB
HAVING NOT MIN(salary) < 2000
ORDER BY MIN(salary) DESC;

--p07 부서별 사원수, 평균 급여 출력하기

SELECT dno,
        COUNT(*) AS "number of people",
        round(AVG(salary), 2) AS "salary"
FROM employee
GROUP BY dno
ORDER BY dno;

--p08 부서번호 이름, 지역명, 사원수 , 부서내의 모든 사원의 평균굽여 출력 ( 정수로 반올림)

SELECT  decode(dno, 10 , 'ACCOUNTING', 20, 'RESEARCH', 30, 'SALES', 40 , 'OPERATION') AS "dname",
        decode(dno, 10, 'NEW YORK', 20, 'DALLAS', 30,'CHICAGO', 40,'BOSTON') AS "location",
        COUNT(*) AS "number of people",
        round(AVG(salary)) AS "salary"
FROM employee
GROUP BY dno;

-- p09 부서별 평균 총액 출력하기

SELECT JOB, dno,
        DECODE(dno, 10 , SUM(salary)) AS "부서10",
        DECODE(dno, 20 , SUM(salary)) AS "부서20",
        DECODE(dno, 30 , SUM(salary)) AS "부서30",
        SUM(salary) AS "job"
FROM employee
GROUP BY JOB, dno
ORDER BY dno;




		    