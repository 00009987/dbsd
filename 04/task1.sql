create database dbsd_s3_g2
go
use dbsd_s3_g2
go

create table Department
(
	Id int not null,
	Title varchar(100),
	Location varchar(50),
	constraint pk_department_id
		primary key(id)
)

go

create table Department2
(
	Id int not null primary key,
	Title varchar(100) not null unique,
	Location varchar(50),
)

go

create table Department3
(
	Id int not null,
	Title varchar(100),
	Location varchar(50),
	constraint pk_department3_id primary key(id),
	constraint pk_department3_title_location unique(title, location)
)

go

create table Department4
(
	Id int not null,
	Title varchar(100),
	Location varchar(50),
	constraint pk_department4_title_location primary key(title, location)
)
go

exec sp_rename 'Department4', 'Department5' 
go

exec sp_rename 'Department5.Location', 'Loc', 'column'

drop table Department2
drop table Department3
drop table Department5