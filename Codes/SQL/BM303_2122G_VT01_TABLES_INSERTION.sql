use BM303_2223G_VT001;

go
Insert into DDEPENDENT (Essn,Dependent_name,Sex,Bdate,Relationship)
values ('333445555','Alice','F','1986-04-05','Daughter');
Insert into DDEPENDENT (Essn,Dependent_name,Sex,Bdate,Relationship)
values ('333445555','Theodore','M','1983-10-25','Son');
Insert into DDEPENDENT (Essn,Dependent_name,Sex,Bdate,Relationship)
values ('333445555','Joy','F','1958-05-03','Spouse');
Insert into DDEPENDENT (Essn,Dependent_name,Sex,Bdate,Relationship)
values ('987654321','Abner','M','1942-02-28','Spouse');
Insert into DDEPENDENT (Essn,Dependent_name,Sex,Bdate,Relationship)
values ('123456789','Michael','M','1988-01-04','Son');
Insert into DDEPENDENT (Essn,Dependent_name,Sex,Bdate,Relationship)
values ('123456789','Alice','F','1988-12-30','Daughter');
Insert into DDEPENDENT (Essn,Dependent_name,Sex,Bdate,Relationship)
values ('123456789','Elizabeth','F','1967-05-05','Spouse');

go
Insert into DEPARTMENT (Dname, Dnumber, Mgr_ssn, Mgr_start_date)
values ('Research',5,'333445555','1988-05-22');
Insert into DEPARTMENT (Dname, Dnumber, Mgr_ssn, Mgr_start_date)
values ('Administration',4,'987654321','1995-01-01');
Insert into DEPARTMENT (Dname, Dnumber, Mgr_ssn, Mgr_start_date)
values ('Headquarters',1,'888665555','1981-06-19');

go
Insert into DEPT_LOCATIONS (Dnumber,Dlocation)
values (1,'Houston');
Insert into DEPT_LOCATIONS (Dnumber,Dlocation)
values (4,'Stafford');
Insert into DEPT_LOCATIONS (Dnumber,Dlocation)
values (5,'Bellaire');
Insert into DEPT_LOCATIONS (Dnumber,Dlocation)
values (5,'Sugarland');
Insert into DEPT_LOCATIONS (Dnumber,Dlocation)
values (5,'Houston');

go
Insert into EMPLOYEE (Fname, Minit, Lname, Ssn, Bdate, Addressx, Sex,
Salary, Super_ssn, Dno)
values ('John','B','Smith','123456789','1965-09-01','731 Fondren, Houston,
TX','M',30000,'333445555',5);
Insert into EMPLOYEE (Fname, Minit, Lname, Ssn, Bdate, Addressx, Sex,
Salary, Super_ssn, Dno)
values ('Franklin','T','Wong','333445555','1955-12-08','638 Voss, Houston,
TX','M',40000,'888665555',5);
Insert into EMPLOYEE (Fname, Minit, Lname, Ssn, Bdate, Addressx, Sex,
Salary, Super_ssn, Dno)
values ('Ramesh','K','Narayan','666884444','1962-09-15','975 Fire Oak,
Humble, TX','M',38000,'333445555',5);
Insert into EMPLOYEE (Fname, Minit, Lname, Ssn, Bdate, Addressx, Sex,
Salary, Super_ssn, Dno)
values ('Joyce','K','English','453453453','1972-07-31','5631 Rice, Houston,
TX','F',25000,'333445555',5);

go
Insert into PROJECT (Pname,Pnumber,Plocation,Dnum)
values ('ProductX',1,'Bellaire',5);
Insert into PROJECT (Pname,Pnumber,Plocation,Dnum)
values ('ProductY',2,'Sugarland',5);
Insert into PROJECT (Pname,Pnumber,Plocation,Dnum)
values ('ProductZ',3,'Houston',5);
Insert into PROJECT (Pname,Pnumber,Plocation,Dnum)
values ('Computerization',10,'Stafford',4);
Insert into PROJECT (Pname,Pnumber,Plocation,Dnum)
values ('Reorganization',20,'Houston',1);
Insert into PROJECT (Pname,Pnumber,Plocation,Dnum)
values ('Newbenefits',30,'Stafford',4);

go
insert into WORKS_ON values(123456789,1,32.5);
insert into WORKS_ON values(123456789,2,7.5);
insert into WORKS_ON values(666884444,3,40.0);
insert into WORKS_ON values(453453453,1,20);
insert into WORKS_ON values(453453453,2,20);
insert into WORKS_ON values(333445555,2,10);
insert into WORKS_ON values(333445555,3,10);
insert into WORKS_ON values(333445555,10,10);
insert into WORKS_ON values(333445555,20,10);
insert into WORKS_ON values(999887777,30,30);
insert into WORKS_ON values(999887777,10,10);
insert into WORKS_ON values(987987987,10,35);
insert into WORKS_ON values(987987987,30,5);
insert into WORKS_ON values(987654321,30,20);
insert into WORKS_ON values(987654321,20,15);
insert into WORKS_ON values(888665555,20,23);

