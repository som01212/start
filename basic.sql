create database my_test;

use my_test;

create table members(
	id int primary key,
    name varchar(50) not null,
    join_date date

    );
    
desc members;


INSERT INTO members( id, name, join_date)
values (2,'네이트','2025-02-15');

update members
set name='네이트2'
where id =2;

select * from members;

delete from members
where id=1;

create table products(
	product_id int auto_increment primary key,
    product_name varchar(100) not null,
    product_code varchar(20) unique,
    price int not null,
    stock_count int not null default 0
);

desc products;

create table customers ( 
	customer_id  int auto_increment primary key,
    name varchar(50) not null
    );
    
create table orders ( 
	order_id  int auto_increment primary key,
    customer_id int not null,
    order_date datetime default current_timestamp,
    
constraint fk_oders_customers foreign key( customer_id) references customers(customer_id)
   );
   

create table orders ( 
	order_id  int auto_increment primary key,
    customer_id int not null,
    order_date datetime default current_timestamp
    );
   
ALTER TABLE orders
ADD CONSTRAINT fk_orders_customers 
FOREIGN KEY (customer_id) REFERENCES customers(customer_id);

DESC customers;

select * from customers;
   
insert into customers(name) values ('홍길동');

insert into orders( customer_id) values(1);

insert into orders( customer_id) values(999);

insert into customers(customer_id) values(2);


    
    
    