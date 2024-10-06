create table orders_2020 as
select * from orders o 
where year(order_date) = 2020

create table products_copy as
select * from products p 

select * from products_copy pc 

