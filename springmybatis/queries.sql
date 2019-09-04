create database employeedirectory;

use employeedirectory;

create table employee
 
(
 
    id int not null primary key auto_increment,
 
    fullname varchar(50) not null,
 
    email varchar(50) not null,
 
    gender varchar(50) not null,
 
    hobbies varchar(50) not null,
 
    country varchar(50) not null,
 
    address varchar(50) not null
 
);