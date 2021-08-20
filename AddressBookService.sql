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
('Srujan','sai','medchal','Hyd','Telangana',364528,789345215,'srujan@gmail.com'),
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