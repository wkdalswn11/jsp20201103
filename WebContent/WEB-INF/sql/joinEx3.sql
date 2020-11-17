SELECT * FROM employee e, department d;

SELECT * FROM employee e1, employee e2;

SELECT * FROM  employee WHERE eno = 7369;
SELECT * FROM employee WHERE eno = 7902;

SELECT * FROM employee e, department d
WHERE e.dno = d.dno;

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename FROM employee e1, employee e2
WHERE e1.manager = e2.eno;

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename FROM employee e1, employee e2
WHERE e1.manager = e2.eno
AND e2.eno= 7698;

--page173

SELECT employees.ename as "사원이름", manager.ename as "직속상관이름"
FROM employee employees, employee manager
WHERE  employees.manager = manager.eno;



SELECT employees.ename || '의 직속 상관은' || manager.ename
FROM employee employees join employee manager
ON employees.manager = manager.eno;

SELECT e2.ename 
FROM employee e1, employee e2
WHERE e1.manager = e2.eno
AND e1.eno = 7788;

--사번을넣으면 그사람이 관리하는 직원이 누군지찾기

--String sql = "SELECT e.ename "
--		   + "FROM employee e, employee m "
--		   + "WHERE m.eno = e.manager " 
--		   + "AND m.eno = ?";



