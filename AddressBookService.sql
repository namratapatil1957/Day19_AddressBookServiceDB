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