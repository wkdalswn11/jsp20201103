-- 14개행 8개열
SELECT * FROM  employee;
-- 4개행 3개열
SELECT * FROM department;

SELECT * FROM employee, department;

SELECT eno, ename, dname FROM employee, department;
SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department;

SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department
WHERE eno = 7369;

SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department
WHERE eno = 7369 AND employee.dno = department.dno;

-- equi join
SELECT * FROM employee, department
WHERE employee.dno = department.dno
AND eno = 7369;

SELECT * FROM employee E, department  D
WHERE E.dno = D.dno
AND E.eno = 7369;

SELECT E.eno, E.ename, E.dno, D.dname
FROM employee E, department D
WHERE E.dno = D.dno;

-- natural join
SELECT * FROM employee NATURAL JOIN department; -- 같은컬럼명 이있어야 쓸수있음 ,타입까지 같아야함
SELECT * FROM employee NATURAL JOIN department
WHERE eno = 7369;

-- join using
SELECT * FROM employee, department WHERE eno = 7788;
SELECT * FROM employee JOIN department USING(dno); -- using 을 사용하여 dno가 같은것을 가져옴 , 타입이달라도 컬럼명이같으면 사용가능
SELECT * FROM employee JOIN department USING(dno)
WHERE eno = 7788;

-- join on
SELECT * FROM employee E JOIN department D ON E.dno = D.dno; -- ON 은 칼럼명이 달라도 사용가능
SELECT * FROM employee E JOIN department D ON E.dno = D.dno
WHERE eno = 7788;
-- page 165~168위까지

SELECT * FROM employee, department
WHERE employee.dno = department.dno;



SELECT eno, ename, dname FROM employee, department
WHERE employee.dno = department.dno
AND eno=7788;

--SELECT eno,ename,dname,dno
--FROM employee, department           * employee와 department에 dno가
--WHERE employee.dno = department.dno *동일한이름으로 정의 되어있어서 오류가발생
--AND eno=7788;                       

SELECT employee.eno, employee.ename,department.dname,employee.dno
FROM employee,department
WHERE employee.dno = department.dno
AND employee.eno=7788;

SELECT eno, ename, dname, employee.dno
FROM employee, department
WHERE employee.dno = department.dno
AND eno=7788;

-- page 168아래 

SELECT E.eno, E.ename, D.dname, E.dno
FROM employee E, department D
WHERE E.dno = D.dno
AND E.eno=7788;

-- page 169

--SELECT E.eno, E.ename, D.dname, E.dno
--FROM employee E NATURAL JOIN department D
--WHERE E.eno=7788;   * join 칼럼에 별칭을 사용해서 오류가 발생

SELECT E.eno, E.ename, D.dname, dno
FROM employee E NATURAL JOIN department D
WHERE E.eno=7788;

-- page 170

SELECT E.eno, E.ename, D.dname, dno
FROM employee E JOIN department D
USING(dno)
WHERE E.eno=7788;

SELECT E.eno, E.ename, D.dname, E.dno
FROM employee E JOIN department D
ON E.dno = D.dno
WHERE E.eno=7788;

-- 혼자해보기 1~5

--p01 특성 사원의 부서번호와 부서이름 출력하기

SELECT E.ename, E.dno, D.dname
FROM employee E, department D
WHERE E.dno = D.dno
AND E.ename = 'SCOTT';

--p02 사원의 부서번호,부서이름, 지역명 출력하기

SELECT ename, dname, loc
FROM employee E JOIN department D
ON E.dno=D.dno;

--p03 10번 부서에 속하는 모든 담당 업무와 지역명 출력하기
SELECT dno, JOB, loc
FROM employee INNER JOIN department
USING(dno)
WHERE dno = 10;

--p04 커미션을 받는 사원의 이름, 부서이름, 지역명 출력하기

SELECT ename, dname, loc
FROM employee NATURAL JOIN department
WHERE commission>0;

--p05 이름에 A가 포함된 모든 사원의 이름과 부서 이름 출력하기

SELECT E.ename, D.dname
FROM employee E, department D
WHERE E.dno=D.dno
AND E.ename LIKE '%A%';

--p06 NEW YORK에 근무하는 사원 출력하기

SELECT ename, job, dno, dname
FROM employee natural join department
WHERE loc = 'NEW YORK';

--p07 각 사원의 관리자 이름 및 관리자 번호 출력하기

SELECT emp.ename as "Employee",
        emp.manager as "Emp#",
        mgr.eno as "Manager",
        mgr.ename as "Mgr#"
FROM employee emp, employee mgr
WHERE emp.manager=mgr.eno;
