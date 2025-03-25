--1.
if not exists (select * from sys.databases where name ='CareerHub')
begin 
create database CareerHub
print 'Database created successfully'
end 
else 
print 'Database Already Exists'
use CareerHub
--2. , 3. and 4.
-------------------------------------create companies Table---------------------------

if not exists (select * from 
INFORMATION_SCHEMA.TABLES where TABLE_NAME='Companies')
begin
create table Companies(
Company_Id int identity(1,1) primary key,
Company_Name varchar(100) not null,
Location varchar(100) not null
)
print 'Companies Table Created'
end 
else
print 'Already Exists'
drop table Companies

-------------------------------------create Jobs Table---------------------------

 if not exists (select * from 
INFORMATION_SCHEMA.TABLES where TABLE_NAME='Jobs')
begin
create table Jobs(
Job_Id int identity(1,1) primary key,
Company_Id int not null 
foreign key(Company_Id) references Companies(Company_Id) on delete cascade,
Job_Title varchar(100) not null,
Job_Description varchar(250) not null,
Job_Location varchar(100) default 'chennai',
Salary decimal(10,2),
Job_Type varchar(100) check(Job_Type in('Full-time','Part-time','Contract')),
Posted_Date datetime,
 )
 print 'Jobs Table Created'
 end
 else
 print 'Already Jobs Table Exists'
drop table Jobs
-------------------------------------create Applicant Table---------------------------
if not exists(select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME='Applicants')
begin
create table Applicants(
 Applicant_Id int identity(1,1) primary key ,
 First_Name varchar(100) not null,
 Last_Name varchar(100) not null,
 Email varchar(250) unique not null,
 Phone bigint unique not null,
 Resume varchar(max) not null
 )
 print 'Applicant Table created'
 end
 else
 print 'Applicant table already exist'
 drop table Applicants
 -------------------------------------create Applications Table---------------------------

 if not exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME='Applications')
 begin
 create table Applications(
 Application_Id int identity(1,1) primary key,
 Job_Id int 
 foreign key(Job_Id) references Jobs(Job_Id) on delete cascade,
 Applicant_Id int 
 foreign key(Applicant_Id) references Applicants(Applicant_Id) on delete cascade,
 Application_Date datetime,
 Cover_Letter varchar(max) not null
 )
 print 'Application Table created'
 end
 else
 print 'Application Table already exists'

 drop table Applications
 
