create database dbsd_s3_g2
go
use dbsd_s3_g2
go

-- task 1
create table Department
(
	Id int not null,
	Title varchar(100),
	Location varchar(50),
	constraint pk_department_id
		primary key(id)
)

go

-- task 3
create table EMPLOYEE
(
	Id int not null,
	FirstName varchar(25) not null,
	LastName varchar(25) not null,
	Dob date,
	Address varchar(200),
	Email varchar(100) not null,
	Phone varchar(20),
	Salary decimal(10,2),
	DateEmployed datetime2 not null constraint df_employee_dateemployed default getDate(),
	DepartmentId int,
	constraint pk_employee_id primary key(Id),
	constraint uq_employee_email unique(Email),
	constraint ck_employee_phone check(Phone like '998%')
)

go

-- task 4
alter table EMPLOYEE alter column FirstName varchar(60)
alter table EMPLOYEE alter column LastName varchar(60)

-- task 5
alter table EMPLOYEE alter column Dob date not null

-- task 6
alter table EMPLOYEE drop column LastName
alter table EMPLOYEE add LastName varchar(60)

-- task 7
alter table EMPLOYEE drop constraint pk_employee_id
alter table EMPLOYEE drop constraint uq_employee_email

alter table EMPLOYEE add constraint pk_employee_id primary key(Id)
alter table EMPLOYEE add constraint uq_employee_email unique(Email)

-- task 8
alter table EMPLOYEE add constraint fk_employee_deparmentid 
	foreign key(DepartmentId) references Department(Id)

-- task 9
alter table EMPLOYEE alter column DepartmentId int not null

-- task 10
alter table EMPLOYEE add constraint ck_employee_salary check(Salary > 0 and Salary <= 5000)

-- task 11
alter table EMPLOYEE add constraint de_employee_salary default 1000.0 for Salary

-- task 12
alter table EMPLOYEE add constraint ck_employee_email check(Email like '%@%')

-- task 13
