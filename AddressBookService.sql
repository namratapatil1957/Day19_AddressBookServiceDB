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