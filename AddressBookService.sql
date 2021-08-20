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

#UC3
#Add data to Table of database
insert  into address_book_service(first_name,last_name,address,city,state,zip,phone_number,email) values
('Akshitha','samudrala','NCL','Hyd','Telangana',500014,853642196,'akshitha.aashi@gmail.com'),
('Aish','samu','kukatpally','Hyderabad','Telangana',500056,984963685,'aishwarya@gmail.com'),
('Abhi','Naik','kompally','Hyd','Telangana',854639,936548972,'abhinaik@gmail.com'),
('Sai','Vara','Patelnagar','karnataka','Andhra',568974,759684126,'saivara@gmail.com'),
('Sri','sai','medchal','Hyd','Telangana',364528,789345215,'srujan@gmail.com'),
('Naveen','Reddy','rajeswaripuram','Khammam','Telangana',526384,958249631,'naveenreddy@gmail.com');
select * from address_book_service;

#UC4-To edit existing details of Contact
update address_book_service set address='kompally' where first_name='Srujan';
select * from address_book_service;

#UC5-To delete a contact using name
delete from address_book_service where first_name='Srujan';
select * from address_book_service;

#UC6-To retrieve contacts belongs to city or state
select * from  address_book_service where city='hyd' or state='Telangana';
#UC7-Size of book by city and state
select state, count(first_name) from address_book_service group by state; #Count by state
select city, count(first_name) from address_book_service group by city; #Count by city

#UC8-To sort the contacts for given city
select * from address_book_service where city="Khammam" order by first_name asc;

#UC9-To Identify each Book with Name and Type
alter table address_book_service add type varchar(31);
select * from address_book_service;
update address_book_service set type='FAMILY' where first_name='Aish' or first_name='Akshitha';
update address_book_service set type='FRIEND' where first_name='Naveen' or first_name='Sri';
update address_book_service set type='PROFESSION' where first_name='Sai' or first_name='Abhi';
select * from address_book_service;

#UC10-To get no.of contacts by type
select type, count(first_name) from address_book_service group by type; #Count by type


#UC11-To add person with two types
insert into address_book_service(first_name,last_name,address,city,state,zip,phone_number,email,type) values
('Naveen','Reddy','rajeswaripuram','Khammam','Telangana',526384,958249631,'naveenreddy@gmail.com','FRIEND');
insert into address_book_service(first_name,last_name,address,city,state,zip,phone_number,email,type) values
('Aish','samu','kukatpally','Hyderabad','Telangana',500056,984963685,'aishwarya@gmail.com','FAMILY');
select * from address_book_service;