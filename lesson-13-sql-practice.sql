-- Lesson 13 | SQL Practice
-- Oracle HR Schema | hr.employees
--
-- Practice queries written during Lesson 13.

-- Task 1
select *
FROM hr.EMPLOYEES
FETCH FIRST 10 ROWS ONLY;

-- Task 2
select first_name, last_name, Salary
FROM hr.EMPLOYEES;

-- Task 3
select first_name, last_name, salary
FROM hr.EMPLOYEES
WHERE salary > 10000;

-- Task 4
select first_name, last_name
FROM hr.EMPLOYEES
WHERE DEPARTMENT_ID = 60;

-- Task 5
select first_name
FROM hr.EMPLOYEES
WHERE first_name like 's%';

-- Task 6
select first_name, last_name, salary
FROM hr.EMPLOYEES
WHERE Salary between 5000
  AND 10000;

-- Task 7
select first_name, last_name, salary
FROM hr.EMPLOYEES
ORDER BY Salary desc;

-- Task 8
select first_name, last_name, salary, DEPARTMENT_ID
FROM hr.EMPLOYEES
ORDER BY salary desc, DEPARTMENT_ID desc;

-- Task 9
select distinct DEPARTMENT_ID
FROM hr.EMPLOYEES --select count(distinct DEPARTMENT_ID)
FROM hr.EMPLOYEES;

-- Task 10
select first_name || ' ' || last_name AS "Tam Ad"
FROM hr.EMPLOYEES;

-- Task 11
select first_name, last_name, salary * 12 AS "Illik Gelir"
FROM hr.EMPLOYEES;

-- Task 12
select first_name, last_name
FROM hr.EMPLOYEES
WHERE manager_id is Null;

-- Task 13
select FIRST_NAME, LAST_NAME, NVL(COMMISSION_PCT,0) AS komissiya
FROM hr.EMPLOYEES;

-- Task 14
select FIRST_NAME, LAST_NAME, salary + salary*NVL(COMMISSION_PCT,0) AS "Umumi Gelir"
FROM hr.EMPLOYEES;

-- Task 15
select FIRST_NAME || ' ' || LAST_NAME AS "Ad,Soyad", NVL2(COMMISSION_PCT,'Komissiyali','Komissiyasiz')AS "Komissiya"
FROM hr.EMPLOYEES;

-- Task 16
select FIRST_NAME, LAST_NAME, NVL2(MANAGER_ID,'Rehber var','Rehber yoxdu')AS "Manager Status"
FROM hr.EMPLOYEES;

-- Task 17
select FIRST_NAME, LAST_NAME, COMMISSION_PCT, NVL(COMMISSION_PCT,0) AS "NVL", COALESCE(COMMISSION_PCT,0) AS "COALESCE"
FROM hr.EMPLOYEES;

-- Task 18
select count(*)
FROM hr.EMPLOYEES
WHERE COMMISSION_PCT is NOT NULL;

-- Task 19
select FIRST_NAME, LAST_NAME, salary, CASE when salary >= 15000 THEN 'Yuksek' when salary >= 8000 THEN 'Orta' Else 'Asagi' END Kateqoriya
FROM hr.EMPLOYEES;

-- Task 20
select DEPARTMENT_ID, LAST_NAME || ' ' || FIRST_NAME Ad_Soyad, CASE DEPARTMENT_ID when 10 THEn 'Admin' when 60 then 'IT' when 80 then 'Satis' else 'Basqa' END Sobe
FROM hr.EMPLOYEES;

-- Task 21
select DEPARTMENT_ID, last_name || ' ' || first_name Tam_Ad, decode(DEPARTMENT_ID, 10, 'Admin', 60, 'IT', 80, 'Satis', 'Basqa') as Kateqoriya
FROM hr.EMPLOYEES;

-- Task 22
select first_name || ' ' || last_name Tam_Ad, CASE when HIRE_DATE < Date '2015-01-01' then 'Kohne isci' else ' ' end zemanetli
FROM hr.EMPLOYEES;

-- Task 23
select first_name || ' ' || last_name As_Soyad, Case when DEPARTMENT_ID=10 then case when salary >= 15000 then 'Admin - Yuksek' when salary >= 8000 then 'Admin - Orta' else 'Admin - Asagi' end when DEPARTMENT_ID=60 then case when salary >= 15000 then 'IT - Yuksek' when salary >= 8000 then 'IT - Orta' else 'IT - Asagi' end when DEPARTMENT_ID=80 then case when salary >= 15000 then 'Satis - Yuksek' when salary >= 8000 then 'Satis - Orta' else 'Satis - Asagi' end else 'basqa' end tesnifat
FROM hr.EMPLOYEES;

-- Task 24
select first_name, last_name, salary, COMMISSION_PCT, salary+salary*nvl(COMMISSION_PCT,0) Yekun_Maas, case when salary + salary * NVL(commission_pct, 0) >= 15000 then 'yuksek' when salary + salary * NVL(commission_pct, 0) >= 8000 then 'orta' else 'asagi' end tesnifat
FROM hr.EMPLOYEES
ORDER BY Yekun_Maas desc;
