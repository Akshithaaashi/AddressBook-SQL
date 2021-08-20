#Address book Service
#uc1 
#create Addesss book service DB
create database address_book_service;
show databases; 
use address_book_service;

#uc2
#Ability to create a Address Book Table with first andlast names, address, city,state, zip, phone numberand email as its attributes.
create table address_book_service (
first_name varchar(31) not null,
last_name varchar(31) not null,
address varchar(150) not null,
city varchar(31) not null,
state varchar(31) not null,
zip int not null,
phone_number int not null,
email varchar(50) not null
);
select * from address_book_service;