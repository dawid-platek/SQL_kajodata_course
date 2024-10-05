create table fake_managers (
manager_id int primary key auto_increment
,firstname varchar(200) not null
,lastname varchar(200) not null
,manager_email varchar(200)
,start_date date
)

select * from fake_managers fm 

insert into fake_managers (
firstname, lastname
)
values
('Mark', 'Smith')
,('Jeanne', 'Doe')
,('James', 'Adams')

truncate table fake_managers  

drop table fake_managers 