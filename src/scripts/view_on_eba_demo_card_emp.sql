create or replace view UC_FLIP_CARD_EMP_V as
select EMPNO,
       ENAME,
       JOB,
       (SELECT ENAME FROM EBA_DEMO_CARD_EMP WHERE EMPNO = ce.MGR) MGR,
       HIREDATE,
       SAL,
       COMM,
       DEPTNO,
       TAGS,
       CASE WHEN ENAME IN ('THEA', 'DIANA', 'SARITA', 'SUSAN', 'MEE', 'SARI') 
       THEN 
            '#APP_FILES#emp_female.png'
       ELSE 
            '#APP_FILES#emp_male.png'
       END AS EMP_ICON,
       CASE WHEN DEPTNO = 10 THEN '#APP_FILES#emp_accounting.jpg'
            WHEN DEPTNO = 20 THEN '#APP_FILES#emp_research.jpg'    
            WHEN DEPTNO = 30 THEN '#APP_FILES#emp_sales.jpg'
            WHEN DEPTNO = 40 THEN '#APP_FILES#emp_operations.jpg'
        END AS DEPT_IMAGE    
  from EBA_DEMO_CARD_EMP ce;