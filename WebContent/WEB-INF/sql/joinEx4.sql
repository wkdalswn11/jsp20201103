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

SELECT employees.ename || ' �� ���� ����� ' || manager.ename
FROM employee employees JOIN employee manager
ON employees.manager = manager.eno(+);

SELECT employees.ename || ' �� ���� ����� ' || manager.ename
FROM employee employees LEFT OUTER JOIN employee manager
ON employees.manager = manager.eno;

-- ȥ���غ���

-- p01 Ư�� ����� �μ���ȣ�� �μ��̸� ����ϱ�

SELECT e.ename , e.dno , d.dname
FROM employee e, department d
WHERE e.dno = d.dno
AND e.ename = 'SCOTT';

--p02 ����� �μ���ȣ,�μ��̸�,������ ����ϱ�

SELECT ename, dname, loc
FROM employee e join department d
ON e.dno = d.dno;

--p03 10�� �μ��� ���ϴ� ��� ��� ������ ������ ����ϱ�
-- inner join �� join�� ��������??

SELECT dno, job, loc
FROM employee  inner join department 
USING(dno)
WHERE dno = 10;

--p04 Ŀ�̼��� �޴� ����� �̸�, �μ��̸�, ������ ����ϱ�

SELECT ename, dname, loc
FROM employee natural join department
WHERE commission > 0;

--p05 �̸��� A�� ���Ե� ��� ����� �̸��� �μ� �̸� ����ϱ�

SELECT e.ename, d.dname
from employee e , department d
WHERE e.dno = d.dno
AND e.ename like '%A%';

--p06 NEW YORK�� �ٹ��ϴ� ��� ����ϱ�

SELECT ename, job, dno, dname
FROM employee natural join department
WHERE loc = 'NEW YORK';

--p07 ������� ������ �̸� �� ������ ��ȣ����ϱ�

SELECT e.ename as "Employee",
       e.manager as "Emp#" ,
       mgr.eno as "Manager",
       mgr.ename as "Mgr#"
FROM employee e, employee mgr
WHERE e.manager= mgr.eno;

--p08 �����ڰ� ���� ����� �����Ͽ� �� ����� ������ �̸� ����ϱ�

SELECT e.ename as "Employee",
       e.manager as "Emp#" ,
       mgr.eno as "Manager",
       mgr.ename as "Mgr#"
FROM employee e, employee mgr
WHERE e.manager= mgr.eno(+)
order by e.eno desc;

--p09 ������ �μ����� �ٹ��ϴ� ��� ����ϱ�

SELECT me.ename as �̸�, me.dno as �μ���ȣ, other.ename as ����
FROM employee me, employee other
WHERE me.dno = other.dno
AND me.ename='SCOTT'
AND other.ename !='SCOTT';

--p10 WARD ������� �ʰ� �Ի��� ��� ����ϱ�

SELECT other.ename , other.hiredate
FROM employee ward , employee other
WHERE other.hiredate > ward.hiredate
AND ward.ename='WARD'
order by hiredate;

--p11 �����ں��� ���� �Ի��� ��� ����ϱ�

SELECT e.ename, e.hiredate , m.ename , m.hiredate
FROM employee m , employee e
WHERE e.manager = m.eno
AND e.hiredate <= m.hiredate; 

