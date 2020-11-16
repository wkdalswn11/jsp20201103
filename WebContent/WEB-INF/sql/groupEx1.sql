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

SELECT SUM(salary) AS "�޿��Ѿ�",
        AVG(salary) AS "�޿����",
        MIN(salary) AS "�ִ�޿�",
        MAX(salary) AS "�ּұ޿�"
FROM employee;

SELECT MAX(hiredate),
        MIN(hiredate)
FROM employee;

SELECT SUM(commission) AS "Ŀ�̼� �Ѿ�"
FROM employee;

--page 146 ~ 147

SELECT COUNT(*) AS "����� ��"
FROM employee;

SELECT COUNT(commission) AS "Ŀ�̼� �޴� ��� ��"
FROM employee;

--SELECT COUNT(*) AS "Ŀ�̼� �޴� �����"
--FROM employee
--WHERE commission IS NOT NULL; COUNT �Լ��� null���� �����ʱ⶧���� ���� ������

SELECT COUNT(DISTINCT JOB) AS "���� ������ ����"
FROM employee;