create database quanlybanhang;
use quanlybanhang;

create table customer (
id_customer int not null auto_increment primary key,
name_customer varchar(245),
age_customer int
);

create table order1 (
id_order1 int not null auto_increment primary key,
id_customer int, foreign key(id_customer) references customer(id_customer),
date_order1 date,
total_price_order1 int
);

create table product (
id_product int not null auto_increment primary key,
name_product varchar(245) not null,
price_product double
);

create table order_detail (
id_order1 int, foreign key(id_order1) references order1(id_order1),
id_product int, foreign key(id_product) references product(id_product),
qty_order_detail int
);


