-- 14���� 8����
SELECT * FROM  employee;
-- 4���� 3����
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
SELECT * FROM employee NATURAL JOIN department; -- �����÷��� ���־�� �������� ,Ÿ�Ա��� ���ƾ���
SELECT * FROM employee NATURAL JOIN department
WHERE eno = 7369;

-- join using
SELECT * FROM employee, department WHERE eno = 7788;
SELECT * FROM employee JOIN department USING(dno); -- using �� ����Ͽ� dno�� �������� ������ , Ÿ���̴޶� �÷����̰����� ��밡��
SELECT * FROM employee JOIN department USING(dno)
WHERE eno = 7788;

-- join on
SELECT * FROM employee E JOIN department D ON E.dno = D.dno; -- ON �� Į������ �޶� ��밡��
SELECT * FROM employee E JOIN department D ON E.dno = D.dno
WHERE eno = 7788;
-- page 165~168������

SELECT * FROM employee, department
WHERE employee.dno = department.dno;



SELECT eno, ename, dname FROM employee, department
WHERE employee.dno = department.dno
AND eno=7788;

--SELECT eno,ename,dname,dno
--FROM employee, department           * employee�� department�� dno��
--WHERE employee.dno = department.dno *�������̸����� ���� �Ǿ��־ �������߻�
--AND eno=7788;                       

SELECT employee.eno, employee.ename,department.dname,employee.dno
FROM employee,department
WHERE employee.dno = department.dno
AND employee.eno=7788;

SELECT eno, ename, dname, employee.dno
FROM employee, department
WHERE employee.dno = department.dno
AND eno=7788;

-- page 168�Ʒ� 

SELECT E.eno, E.ename, D.dname, E.dno
FROM employee E, department D
WHERE E.dno = D.dno
AND E.eno=7788;

-- page 169

--SELECT E.eno, E.ename, D.dname, E.dno
--FROM employee E NATURAL JOIN department D
--WHERE E.eno=7788;   * join Į���� ��Ī�� ����ؼ� ������ �߻�

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

-- ȥ���غ��� 1~5

--p01 Ư�� ����� �μ���ȣ�� �μ��̸� ����ϱ�

SELECT E.ename, E.dno, D.dname
FROM employee E, department D
WHERE E.dno = D.dno
AND E.ename = 'SCOTT';

--p02 ����� �μ���ȣ,�μ��̸�, ������ ����ϱ�

SELECT ename, dname, loc
FROM employee E JOIN department D
ON E.dno=D.dno;

--p03 10�� �μ��� ���ϴ� ��� ��� ������ ������ ����ϱ�
SELECT dno, JOB, loc
FROM employee INNER JOIN department
USING(dno)
WHERE dno = 10;

--p04 Ŀ�̼��� �޴� ����� �̸�, �μ��̸�, ������ ����ϱ�

SELECT ename, dname, loc
FROM employee NATURAL JOIN department
WHERE commission>0;

--p05 �̸��� A�� ���Ե� ��� ����� �̸��� �μ� �̸� ����ϱ�

SELECT E.ename, D.dname
FROM employee E, department D
WHERE E.dno=D.dno
AND E.ename LIKE '%A%';

--p06 NEW YORK�� �ٹ��ϴ� ��� ����ϱ�

SELECT ename, job, dno, dname
FROM employee natural join department
WHERE loc = 'NEW YORK';

--p07 �� ����� ������ �̸� �� ������ ��ȣ ����ϱ�

SELECT emp.ename as "Employee",
        emp.manager as "Emp#",
        mgr.eno as "Manager",
        mgr.ename as "Mgr#"
FROM employee emp, employee mgr
WHERE emp.manager=mgr.eno;
