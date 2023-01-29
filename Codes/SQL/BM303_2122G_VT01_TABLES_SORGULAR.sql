use BM303_2223G_VT001

go
select Fname,Lname,Bdate,Salary from EMPLOYEE
where Salary>30000; /*selectionne tous les employés avec plus de 30000 de salaire*/

go
SELECT Fname, Lname, Super_ssn
FROM EMPLOYEE
WHERE Super_ssn='333445555'; /*Recherche dans les employés celui avec le Super_ssn donné*/

go
SELECT * from EMPLOYEE
WHERE Dno=5 and salary>30000
Order by Fname; /*Dno = 5 and salaire > 30000 trié par ordre alpha par le nom de famille*/

go
SELECT Pnumber, Pname, Dname
FROM DEPARTMENT
inner join PROJECT on DEPARTMENT.Dnumber=PROJECT.Dnum; 
/*Selectionne Pnumber,Pname,Dname des departements 
ou les nmbres projets = Dnumber de dep
Les deux tableaux ont été associé*/

go
SELECT Pnumber, Pname, Dname, Fname, Lname
FROM DEPARTMENT
inner join PROJECT on DEPARTMENT.Dnumber=PROJECT.Dnum
inner join EMPLOYEE on DEPARTMENT.Dnumber=EMPLOYEE.Dno;
/*3 tables vont être utilisées. Selectionne Pnumber, Pname... de department
intersectionne avec les projects ayant le même nombre que de department
intersectionne avec les employés ayant le même nombre que le department*/
go

SELECT Pnumber, Pname, Dname,Fname,Lname,Hours
FROM DEPARTMENT
inner join PROJECT on DEPARTMENT.Dnumber=PROJECT.Dnum
inner join EMPLOYEE on DEPARTMENT.Dnumber=EMPLOYEE.Dno
inner join WORKS_ON on EMPLOYEE.Ssn= WORKS_ON.Essn;

go

SELECT Pnumber,Pname,Dname,Fname,Lname,Pno,Hours
FROM DEPARTMENT
inner join PROJECT on DEPARTMENT.Dnumber=PROJECT.Dnum
inner join EMPLOYEE on DEPARTMENT.Dnumber=EMPLOYEE.Dno
inner join WORKS_ON on EMPLOYEE.Ssn= WORKS_ON.Essn
WHERE (Dnum=Dnumber AND Mgr_ssn=Ssn AND Lname='Smith' )
or (Essn=Ssn AND Lname='Smith');

go

SELECT Pnumber,Pname,Dname,Fname,Lname,Hours
FROM DEPARTMENT
inner join PROJECT on DEPARTMENT.Dnumber=PROJECT.Dnum
inner join EMPLOYEE on DEPARTMENT.Dnumber=EMPLOYEE.Dno
inner join WORKS_ON on EMPLOYEE.Ssn= WORKS_ON.Essn
and PROJECT.Pnumber=WORKS_ON.Pno
WHERE Lname='Smith'
group by Pnumber,Pname,Dname,Fname,Lname,Hours;

go
SELECT DISTINCT Pnumber
FROM PROJECT
WHERE Pnumber IN (SELECT Pnumber
FROM PROJECT, DEPARTMENT, EMPLOYEE
WHERE Dnum=Dnumber AND Mgr_ssn=Ssn AND Lname='Smith' )
OR Pnumber IN ( SELECT Pno FROM WORKS_ON, EMPLOYEE
WHERE Essn=Ssn AND Lname='Smith');