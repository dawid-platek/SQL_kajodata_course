select * from managers m 

alter table managers add column end_date date

alter table managers modify column end_date varchar(50)

alter table managers drop column end_date


rename table managers to group_managers

select * from group_managers gm 

rename table group_managers to managers

select * from managers m 