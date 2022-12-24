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

--UC3 Insert new Contact to AddressBook Table--
insert into AddressBook values('Vicky','Kaushal','Bandra','Mumbai','Maharashtra',400051,9987465744,'VickyKaushal@gmail.com');
insert into AddressBook values('Arun','Singh','konkani','Panaji','Goa',510062,9387465756,'ArunSingh@gmail.com');
insert into AddressBook values('Raj','Kapoor','Raipur ','Dehradun','Uttarakhand',230073,9687565734,'RajKapoor@gmail.com');
insert into AddressBook values('Sanjay','Thakkur','Nepali','Gangtok','Sikkim',700084,9657465722,'SanjayThakkur@gmail.com');
insert into AddressBook values('Akshay','jadhav','Oriya','Bhubaneswar','Odisha',600095,9117465741,'Akshayjadhav@gmail.com');
insert into AddressBook values('Vishal','pal','Umiam Lake','Shillong','Meghalaya',800011,8887465777,'Vishalpal@gmail.com');
insert into AddressBook values('Vijaya','laxmi','Umiam Lake','Shillong','Meghalaya',800011,8887465777,'Vijayalaxmi@gmail.com');

--UC4 Ability to edit existing contact person using their name
update AddressBook set firstName='Vijayendra' where firstName='vicky';

--UC5 Ability to delete a person using persons name
delete AddressBook where firstName='Vijayendra';
