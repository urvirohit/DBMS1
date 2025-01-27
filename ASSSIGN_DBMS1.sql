#Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
show databases;
use db104;
select * from emp;
select ename as worker_name from emp;
#Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
select distinct deptno from emp;
#Write an SQL query to show the last 5 record from a table.
select * from emp order by empno desc limit 5;
#Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
select substring(ename,1,3) from emp;

 #Q-2. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.
 select ename,POSITION('a'IN ENAME) FROM EMP;
#. Write an SQL query to print the name of employees having the highest salary in each department.
SELECT MAX(SAL) FROM EMP;
 SELECT ENAME FROM EMP WHERE SAL=(SELECT MAX(SAL) FROM EMP);
 #. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
 select LTRIM(ename) from emp;
 
 #Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
  select  distinct length(dname) as LENGHT,dname from dept;
  
  #3. Write an SQL query to fetch nth max salaries from a table.
   select ename, sal from emp order by sal desc;
   
    select distinct sal from emp order by sal desc;
    
    #Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
    select replace(ename,'A','a') from emp;
    
    #Q-2. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
     select * from emp order by ename ASC, deptno desc;
     
    # Write an SQL query to fetch the names of workers who earn the highest salary.
     select ename,sal from emp where sal=(select max(sal) from emp);
     
     #Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
      select * from emp where not ename='WARD' and  not ename="ford";
      
      #. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
      select * from emp where length(ename)=6 AND ename LIKE '%r';
      
      #Write a query to validate Email of Employee.
      select * from emp where Email like '%@%';
      ALTER TABLE emp
ADD Email varchar(255);
UPDATE emp SET email = 'abc@gmail.com' where empno=7839;
UPDATE emp SET email = 'scb@gmail.com' where empno=7499;
UPDATE emp SET email = 'sob@gmail.com' where empno=7521;
UPDATE emp SET email = 'sib@gmail.com' where empno=7566;
UPDATE emp SET email = 'ucb@gmail.com' where empno=7654;
UPDATE emp SET email = 'ycb@gmail.com' where empno=7844;
UPDATE emp SET email = 'rcb@gmail.com' where empno=7876;
UPDATE emp SET email = 'srt@gmail.com' where empno=7902;
UPDATE emp SET email = 'scf@gmail.com' where empno=7934;



      