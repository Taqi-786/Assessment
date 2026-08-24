create database assessment;

use assessment;

create table worker(
	Worker_ID int primary key auto_increment,
    FIRST_NAME varchar(20),
    LAST_NAME varchar(20),
    SALARY int,
    JOINING_DATE datetime,
    DEPARTMENT varchar(20)
);

drop table worker;
insert into worker(FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)
values ('Monica', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
	   ('Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
	   ('Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
	   ('Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
	   ('Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
	   ('Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
	   ('Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account'),
	   ('Geetika', 'Chauhan', 90000, '2014-04-11 09:00:00', 'Admin');
      
      
select * from worker;
      
#Ans1.
select * from worker
order by FIRST_NAME,
	     DEPARTMENT desc;
     
#Ans2.
select * from worker
where FIRST_NAME = "Vipul" or FIRST_NAME = "Satish";
     
     
#Ans3.
select * from worker
where FIRST_NAME like '_____h';
     
     
#Ans4.
select * from worker
where SALARY between 100000 and 300000;
     
     
#Ans5.
select 
       SALARY,
       DEPARTMENT,
       Count(*)
from worker
group by 
         SALARY,
         Department
having Count(*)>1;
     
     
#Ans6.
select * from worker
order by SALARY desc
limit 6;
     
  
#Ans7.
select DEPARTMENT,
	   Count(*) as total_people
from worker
group by DEPARTMENT
having total_people < 5;
  
  
  
 #Ans8.
 select DEPARTMENT,
	   Count(*) as nummber_people
from worker
group by DEPARTMENT
order by number_people;
  
  
#Ans9.
select DEPARTMENT,
       FIRST_NAME,
       SALARY
from worker w
where SALARY = (select max(SALARY) from worker
				where DEPARTMENT = w.DEPARTMENT)
order by SALARY desc;
  
  
  
  
  ############
  #Questiion 2.
  
create table student(
	StdID int not null primary key,
	StdName varchar(20),
    Sex varchar(10),
    Percentage int,
    Class int,
    Sec varchar(1),
    Stream varchar(20),
    DOB date
);                             
  
INSERT INTO student
VALUES
(1001,'Surekha Joshi','Female',82,12,'A','Science','1998-08-03'),
(1002,'Maahi Agarwal','Female',56,11,'C','Commerce','2008-11-23'),
(1003,'Sanam Verma','Male',59,11,'C','Commerce','2006-06-29'),
(1004,'Ronit Kumar','Male',63,11,'C','Commerce','1997-05-11'),
(1005,'Dipesh Pulkit','Male',78,11,'B','Science','2003-09-14'),
(1006,'Jahanvi Puri','Female',60,11,'B','Commerce','2008-07-11'),
(1007,'Sanam Kumar','Male',23,12,'F','Commerce','1998-08-03'),
(1008,'Sahil Saras','Male',56,11,'C','Commerce','2008-07-11'),
(1009,'Akshra Agarwal','Female',72,12,'B','Commerce','1996-01-10'),
(1010,'Stuti Mishra','Female',39,11,'F','Science','2008-11-23'),
(1011,'Harsh Agarwal','Male',42,11,'C','Science','1998-08-03'),
(1012,'Nikunj Agarwal','Male',49,12,'C','Commerce','1998-06-28'),
(1013,'Akriti Saxena','Female',89,12,'A','Science','2008-11-23'),
(1014,'Tani Rastogi','Female',82,12,'A','Science','2008-11-23');  
  
  
 #Ans1.
select * from student;
  
#Ans2.
select StdName,
	   DOB
from student;
  
#Ans3.
select * from student
where Percentage >= 80;
  
#Ans4.
select StdName,
	   Stream,
       Percentage
from student
where Percentage >= 80;
   
   
#Ans5.
select * from student
where Stream = "Science" and Percentage > 75;
   
   
   
   
   
   
   
   
   
   