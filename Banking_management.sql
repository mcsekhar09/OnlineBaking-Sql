create database Banking_Managment
use Banking_Managment

------------------------------------------------------------------------

create table Admin( 
Adminid varchar(10) primary key, passwords varchar(10)
)

insert into Admin values
('abc','abc@123')

insert into Admin values
('chandra','chandra@123')

select * from Admin
-----------------------------------------------------------------------------------------
create table account_request(Request_id int primary key,title varchar(10),first_name varchar(10) not null,middle_name varchar(10), lastname varchar(10) not null,father_name varchar(40) not null,mobile_num varchar(10),email_id varchar(30),addhar_card bigint, dob date, residential_address varchar(60), permenent_address varchar(60),occupational_details varchar(20),gross_annual_income float,debit_atmcard varchar(5),status varchar(10))  


select *from account_request

-----------------------------------------------------------------------------------------------------------------------------------

create table Account(
Customer_id int primary key,
Request_id int foreign key REFERENCES account_request(Request_id),
password varchar(10) ,
account_num bigint,
balance money,
transaction_password varchar(10))

insert into Account values(123,1488,'qwerty',456789,5000,'qwerty1')
insert into Account values(2345,1488,'qwerty1',456789,5000,'qwerty')
select*from Account

-----------------------------------------------------------------------------------------------------------------------------------------------------
create table beneficiary(beneficiary_id int primary key, Customer_id int foreign key references Account(
Customer_id),beneficiary_acc_no bigint,Ifsc_code varchar(20),nickname varchar(10)) 

insert into  beneficiary values(1234,123,456789,'sbin6373','chandu')

select*from beneficiary

-------------------------------------------------------------------------------------------------------------------------

create table Transactions(Transaction_id int Primary key, From_Acc bigint, to_Acc bigint, Customer_id int foreign key references Account(
Customer_id), transaction_status varchar(20), Transaction_type varchar(20), Remark varchar(10), transaction_date date )


select*from Transactions where from_acc = 23456 and transaction_date between '2022-05-14' and '2022-05-16'

alter table Transactions add CONSTRAINT fk_fromacc fOREIGN KEY (From_Acc) REFERENCES account_details (account_num)


------------------------------------------------------------------