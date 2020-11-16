SELECT * FROM employee;
SELECT MAX(salary) FROM employee;
SELECT JOB, MAX(salary) FROM employee
GROUP BY JOB;

-- page 149~151

SELECT dno AS "�μ� ��ȣ", TRUNC(AVG(salary)) AS "�޿����"
FROM employee
GROUP BY dno;

SELECT TRUNC(AVG(salary)) AS "�޿� ���"
FROM employee
GROUP BY dno;

--SELECT dno,ename, AVG(salary)
--FROM employee
--GROUP BY dno;  ename �� group by �� ��������ʾƼ� ��������

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

-- �׷��Լ��� where ����  �Ұ�
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

-- ȥ�� �غ���

-- p01 �޿� �ְ��, ������, �Ѿ� �� ��� �޿� ����ϱ�

SELECT MAX(salary) AS "�ְ��" , 
MIN(salary) AS  "������", 
SUM(salary) AS "�Ѿ�", 
TRUNC(AVG(salary)) AS "��ձ޿�"
FROM employee;

--p02 ��� ���� �������� �޿� �ְ��, ������ , �Ѿ� �� ��ձ޿� ����ϱ�

SELECT JOB AS "��� ����",
MAX(salary) AS "�ְ��" , 
MIN(salary) AS  "������", 
SUM(salary) AS "�Ѿ�", 
TRUNC(AVG(salary)) AS "��ձ޿�"
FROM employee
GROUP BY JOB;

--p03 ��� ������ ������ ����� ����ϱ�

SELECT JOB, COUNT(*)
FROM employee
GROUP BY JOB;

--p04 ������ �� ����ϱ�

SELECT COUNT(MANAGER)
FROM employee;

--p05 �޿� �ְ��, �޿� �������� ���� ����ϱ�

SELECT MAX(salary) - MIN(salary) AS "����"
FROM employee;

--p06 ���޺� ����� ���� �޿� ����ϱ� ����(�޿��� 2000 �̸��α׷� ����, ������������)

SELECT JOB, MIN(salary)
FROM employee
GROUP BY JOB
HAVING NOT MIN(salary) < 2000
ORDER BY MIN(salary) DESC;

--p07 �μ��� �����, ��� �޿� ����ϱ�

SELECT dno,
        COUNT(*) AS "number of people",
        round(AVG(salary), 2) AS "salary"
FROM employee
GROUP BY dno
ORDER BY dno;

--p08 �μ���ȣ �̸�, ������, ����� , �μ����� ��� ����� ��ձ��� ��� ( ������ �ݿø�)

SELECT  decode(dno, 10 , 'ACCOUNTING', 20, 'RESEARCH', 30, 'SALES', 40 , 'OPERATION') AS "dname",
        decode(dno, 10, 'NEW YORK', 20, 'DALLAS', 30,'CHICAGO', 40,'BOSTON') AS "location",
        COUNT(*) AS "number of people",
        round(AVG(salary)) AS "salary"
FROM employee
GROUP BY dno;

-- p09 �μ��� ��� �Ѿ� ����ϱ�

SELECT JOB, dno,
        DECODE(dno, 10 , SUM(salary)) AS "�μ�10",
        DECODE(dno, 20 , SUM(salary)) AS "�μ�20",
        DECODE(dno, 30 , SUM(salary)) AS "�μ�30",
        SUM(salary) AS "job"
FROM employee
GROUP BY JOB, dno
ORDER BY dno;




		    