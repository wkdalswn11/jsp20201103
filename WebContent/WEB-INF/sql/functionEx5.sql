SELECT * FROM employee;
SELECT ename, salary, commission, salary + commission AS SUM
FROM  employee;
SELECT ename, commission, nvl(commission, 0) FROM employee;
SELECT  nullif('a', 'a') FROM dual;
SELECT nullif('a', 'b') FROM dual;
SELECT COALESCE('a', 'b', NULL, 'c') FROM dual;
SELECT COALESCE(NULL, 'b', NULL, 'c') FROM dual;
SELECT COALESCE(NULL, NULL, 'd', 'c') FROM dual;

SELECT ename, dno, DECODE(dno, 10, 'ACCOUNTING',20, 'RESEARCH', 30, 'SALES', 40,'OPERATIONS','DEFAULT') AS dname
 FROM employee
 ORDER BY dno; -- ORDER BY dno 는 dno 를 오름차순으로 정렬 ASC 가 생략된것임 DESC 는 내림차순 정렬임
 
SELECT ename, salary, CASE WHEN salary >= 3000 THEN 'HIGH'
                            WHEN salary >= 0 THEN 'LOW'
                            ELSE '0'
                            END
 FROM employee;                           
-- page 131
SELECT ename, salary, commission,
        nvl(commission, 0),
        salary*12+nvl(commission, 0)
FROM employee
ORDER BY JOB;

SELECT ename, salary, commission,
    nvl2(commission, salary*12+commission, salary*12)
FROM employee
ORDER BY JOB;

--page 133
SELECT ename, salary, commission,
        COALESCE(commission, salary, 0)
FROM employee
ORDER BY JOB;

-- page 134 ~ 135

SELECT ename, dno, DECODE(dno, 10, 'ACCOUNTING',20, 'RESEARCH', 30, 'SALES', 40,'OPERATIONS','DEFAULT') AS dname
 FROM employee
 ORDER BY dno;
 
SELECT ename, dno,
        CASE WHEN dno=10 THEN 'ACCOUNTING'
         WHEN dno=20 THEN 'RESEARCH'
          WHEN dno=30 THEN 'SALES'
           WHEN dno=40 THEN 'OPERATIONS'
           ELSE 'DEFAULT'
    END AS DNAME
FROM employee
order by dno;

-- 혼자해보기 

--P06

SELECT eno, ename, NVL2(manager, manager , 0) AS MANAGER
FROM employee;

--P07
SELECT eno, ename, job, salary,
        DECODE(job, 'ANAIYST', salary + 200,
                    'SALESMAN', salary + 180,
                    'MANAGER', salary + 150,
                    'CLERK', salary + 100,
                    salary) AS update_salary
FROM employee;

