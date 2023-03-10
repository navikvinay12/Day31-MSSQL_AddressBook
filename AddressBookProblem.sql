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

--UC6 Ability to Retrieve person belonging to a city or state from the addressBook
select * from AddressBook where state='Goa';
select * from AddressBook where city='Bhubaneswar';
select * from AddressBook where city='Gangtok' or state='Odisha';

--UC7 Ability to understand the size of address book by city and state.
select count(*) as size from AddressBook where city='Shillong';
select count(*) as size from AddressBook where State='Meghalaya';

--UC8 Ability to retrieve entries sorted alphabetically by Persons name for a given city--
select * from AddressBook order by firstName;

--UC9 Ability to identify each Address Book with name and Type (Alter to add name and type)--
--Here the type could be Family,Friends,Profession,etc .
--Alter Address Book to add name and type .
alter table AddressBook add contactType varchar(200);
update AddressBook set contactType='Friends';
update AddressBook set contactType='Family' where firstName='Vijaya' ;
update AddressBook set contactType='Family' where firstName='Vishal' ;
update AddressBook set contactType='Doctor' where firstName='Raj' ;
update AddressBook set contactType='BankManager' where firstName='Sanjay' ;

--UC10 Ability to get number of contact persons i.e count by type 
select contactType,
count(*) as 'total'
FROM AddressBook group by contactType ;
select count(contactType) from AddressBook;