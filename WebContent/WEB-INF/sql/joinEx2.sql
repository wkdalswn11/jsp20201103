SELECT * FROM employee;
SELECT * FROM salgrade;

SELECT * FROM employee e, salgrade s;
SELECT * FROM employee e, salgrade s
WHERE e.salary BETWEEN s.losal AND s.hisal;

-- 14, 4 , 5
SELECT * FROM employee e, department d , salgrade s;
SELECT * FROM employee e, department d , salgrade s
WHERE e.dno = d.dno
AND e.salary BETWEEN s.losal AND s.hisal
AND eno = 7788;


-- page 171 ~ 172

SELECT ename, salary, grade
from employee, salgrade
WHERE salary between losal and hisal;


SELECT e.ename, d.dname, e.salary, s.grade
FROM employee e, department d, salgrade s
WHERE e.dno = d.dno
AND salary BETWEEN losal AND hisal;



