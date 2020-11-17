-- inner join
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager = e2.eno;

-- inner join
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 JOIN employee e2
ON e1.manager = e2.eno;

-- left outer join

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 LEFT OUTER JOIN employee e2
ON e1.manager = e2.eno;

-- left outer join
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager = e2.eno(+);

-- right outer join
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 RIGHT OUTER JOIN employee e2
ON e1.manager(+) = e2.eno;

-- right outer join
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager = e2.eno;

-- full outer join
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 FULL OUTER JOIN employee e2
ON e1.manager = e2.eno;

--page 175

SELECT employees.ename || ' 의 직속 상관은 ' || manager.ename
FROM employee employees JOIN employee manager
ON employees.manager = manager.eno(+);

SELECT employees.ename || ' 의 직속 상관은 ' || manager.ename
FROM employee employees LEFT OUTER JOIN employee manager
ON employees.manager = manager.eno;

-- 혼자해보기

-- p01 특정 사원의 부서번호와 부서이름 출력하기

SELECT e.ename , e.dno , d.dname
FROM employee e, department d
WHERE e.dno = d.dno
AND e.ename = 'SCOTT';

--p02 사원의 부서번호,부서이름,지역명 출력하기

SELECT ename, dname, loc
FROM employee e join department d
ON e.dno = d.dno;

--p03 10번 부서의 속하는 모든 담당 업무와 지역명 출력하기
-- inner join 과 join은 각은역할??

SELECT dno, job, loc
FROM employee  inner join department 
USING(dno)
WHERE dno = 10;

--p04 커미션을 받는 사원의 이름, 부서이름, 지역명 출력하기

SELECT ename, dname, loc
FROM employee natural join department
WHERE commission > 0;

--p05 이름에 A가 포함된 모든 사원의 이름과 부서 이름 출력하기

SELECT e.ename, d.dname
from employee e , department d
WHERE e.dno = d.dno
AND e.ename like '%A%';

--p06 NEW YORK에 근무하는 사원 출력하기

SELECT ename, job, dno, dname
FROM employee natural join department
WHERE loc = 'NEW YORK';

--p07 각사원의 관리자 이름 및 관리자 번호출력하기

SELECT e.ename as "Employee",
       e.manager as "Emp#" ,
       mgr.eno as "Manager",
       mgr.ename as "Mgr#"
FROM employee e, employee mgr
WHERE e.manager= mgr.eno;

--p08 관리자가 없는 사원을 포함하여 각 사원의 관리자 이름 출력하기

SELECT e.ename as "Employee",
       e.manager as "Emp#" ,
       mgr.eno as "Manager",
       mgr.ename as "Mgr#"
FROM employee e, employee mgr
WHERE e.manager= mgr.eno(+)
order by e.eno desc;

--p09 동일한 부서에서 근무하는 사원 출력하기

SELECT me.ename as 이름, me.dno as 부서번호, other.ename as 동료
FROM employee me, employee other
WHERE me.dno = other.dno
AND me.ename='SCOTT'
AND other.ename !='SCOTT';

--p10 WARD 사원보다 늦게 입사한 사원 출력하기

SELECT other.ename , other.hiredate
FROM employee ward , employee other
WHERE other.hiredate > ward.hiredate
AND ward.ename='WARD'
order by hiredate;

--p11 관리자보다 먼저 입사한 사원 출력하기

SELECT e.ename, e.hiredate , m.ename , m.hiredate
FROM employee m , employee e
WHERE e.manager = m.eno
AND e.hiredate <= m.hiredate; 

