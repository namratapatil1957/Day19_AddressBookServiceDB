#UC1
create database AddressBookService;
use AddressBookService;

#UC2
create table AddressBook(
id int not null auto_increment,
firstname varchar(50) not null,
lastname varchar(50) not null,
address varchar(50) not null,
city varchar(50) not null,
state varchar(50) not null,
zip int(6) not null,
phone int(11) not null,
email varchar(50) not null,
primary key(id)
);

desc AddressBook;

#UC3
insert into AddressBook(firstname, lastname, address, city, state, zip, phone, email)
values('Namrata', 'Patil', 'Vyara', 'Surat', 'Gujarat', 345678, 834567886, 'namu@email.com');
insert into AddressBook(firstname, lastname, address, city, state, zip, phone, email)
values('Nikhil', 'Patel', 'Vyara', 'Surat', 'Gujarat', 340978, 123467886, 'nikhil@email.com');
insert into AddressBook(firstname, lastname, address, city, state, zip, phone, email)
values('Dhruv', 'Patil', 'Pune', 'Pune', 'Maharastra', 987546, 987642187, 'dhruv@email.com');
insert into AddressBook(firstname, lastname, address, city, state, zip, phone, email)
values('Varsha', 'Patil', 'Mumbai', 'Mumbai', 'Maharastra', 47546, 992436187, 'dhruv@email.com');

select * from AddressBook;

#UC4
update AddressBook set city = 'Nandurbar' , address = 'Shahada' where firstname = 'Dhruv';

#UC5
delete from AddressBook where firstname ='Varsha';

#UC6
select * from AddressBook where city = 'Surat';

#UC7
select city, state, count(*) from AddressBook group by city, state;

#UC8
select * from AddressBook where city = 'Surat' order by firstname;

#UC9
alter table AddressBook 
add type varchar(50) not null;

insert into AddressBook(firstname, lastname, address, city, state, zip, phone, email, type)
values('Varsha', 'Patil', 'Mumbai', 'Mumbai', 'Maharastra', 47546, 992436187, 'dhruv@email.com', 'Friend');
insert into AddressBook(firstname, lastname, address, city, state, zip, phone, email, type)
values('Gitanjali', 'Chaudhary', 'Mumbai', 'Mubail', 'Maharastra', 987546, 924642187, 'dhruv@email.com', 'Friend');
insert into AddressBook(firstname, lastname, address, city, state, zip, phone, email, type)
values('Pranali', 'Patil', 'Pune', 'Pune', 'Maharastra', 987546, 992236187, 'pranali@email.com', 'Family');
insert into AddressBook(firstname, lastname, address, city, state, zip, phone, email, type)
values('Krishnanjali', 'Chaudhary', 'Mumbai', 'Mubail', 'Maharastra', 987546, 926642187, 'krishna@email.com', 'Family');

#UC10
select type, count(*) from AddressBook group by type;

#UC11
insert into AddressBook(firstname, lastname, address, city, state, zip, phone, email, type)
values('Nikhil', 'Patel', 'Vyara', 'Surat', 'Gujarat', 340978, 123467886, 'nikhil@email.com', 'Friend');
insert into AddressBook(firstname, lastname, address, city, state, zip, phone, email, type)
values('Nikhil', 'Patel', 'Vyara', 'Surat', 'Gujarat', 340978, 123467886, 'nikhil@email.com', 'Family');