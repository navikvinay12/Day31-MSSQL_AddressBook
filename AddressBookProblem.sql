--Assignment 2 of Day 31 -MSSQL (AddressBook) --

--UC1 Creating a new Database named AddressBookService--
create database AddressBookService;
use AddressBookService;

--UC2 Creating table named AddressBook--
create table AddressBook
(
firstName varchar(200),
lastName varchar(200),
address varchar(200),
city varchar (200),
state varchar (200),
zip int ,
phoneNumber bigint,
email varchar (200) 
);
