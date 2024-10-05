create table managers (
manager_id int primary key auto_increment
,firstname varchar(200) not null
,lastname varchar(200) not null
,manager_email varchar(200)
,start_date date
)

create table managers_product_groups (
mpg_id int primary key auto_increment
,manager_id int
,group_id int
)

select *
from managers m 

select *
from managers_product_groups mpg 