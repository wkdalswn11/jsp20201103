SELECT * FROM employee;
select * from bonus;
select * from department;
select * from salgrade;

SELECT ename FROM employee;
SELECT eno, ename  FROM employee;
SELECT ename, eno FROM employee;
SELECT ename, salary FROM employee;
SELECT ename, salary, salary*12 FROM employee;
SELECT ename, salary / 100 FROM employee;
SELECT ename, salary + 100 FROM employee;
SELECT ename, salary - 100 FROM employee;
SELECT ename �̸� , salary ���� , salary*12 AS ���� FROM employee;
SELECT ename, salary, salary*12 ���� FROM employee;

-- �� �� �ּ�
/*
 ������ �ּ�
*/
SELECT * FROM employee;
SELECT ename, salary, commission,  salary + commission FROM employee;
SELECT ename, salary, commission, NVL(commission, 0) FROM employee;
SELECT ename, salary + NVL(commission, 0)�� FROM employee;

-- page. 32~37
select * from employee;
select eno, ename from employee;
select salary + 300 from employee;
select salary - 300 from employee;
select salary / 100 from employee;
select salary * 12 from employee;
select ename, salary, salary*12 from employee;
select ename, salary, commission,  salary * 12, salary + commission from employee; 
select ename, salary, commission, salary * 12, salary + NVL(commission, 0) from employee;
select ename, salary*12+nvl(commission, 0) ���� from employee;
select ename, salary*12+nvl(commission, 0) as ���� from employee;
select ename, salary*12+nvl(commission, 0) "��?��" from employee;

select distinct(dno) from employee;
select 
    distinct DNO 
    from EMPLOYEE;
1
